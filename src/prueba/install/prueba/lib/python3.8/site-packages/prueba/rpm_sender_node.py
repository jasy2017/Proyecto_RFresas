#!/usr/bin/env python

import rclpy
from rclpy.node import Node
from std_msgs.msg import Int32MultiArray
import can
import serial.tools.list_ports
from sys import platform

# IDs de los motores en el bus CAN
MOTOR_ID_1 = 0x0342
MOTOR_ID_2 = 0x0357
MOTOR_ID_3 = 0x0301
MOTOR_ID_4 = 0x0372


def serial_ports_CAN():
    # Identifica el puerto CAN basado en el sistema operativo
    ports = list(serial.tools.list_ports.comports())
    for port_no, description, address in ports:
        if 'ACM' in description or 'CAN' in description or 'Serial' in description:
            return port_no
    return None


class RPMSenderNode(Node):
    def __init__(self):
        super().__init__('rpm_sender_node')
        
        # Suscriptor para recibir mensajes de RPM del topico 'bldc_motors/rpm'
        self.subscription_ = self.create_subscription(
            Int32MultiArray,
            'bldc_motors/rpm',
            self.set_rpm_callback,
            10
        )

        # # Inicializa el bus CAN
        # self.bus = can.interface.Bus(bustype='slcan', channel=serial_ports_CAN(), bitrate=500000)
        
        # Inicializa el bus CAN
        port = serial_ports_CAN()
        if port is None:
            self.get_logger().error("No CAN port found!")
        else:
            self.get_logger().info(f"Using CAN port: {port}")
        
        try:
            self.bus = can.interface.Bus(bustype='slcan', channel=port, bitrate=500000)
            self.get_logger().info("CAN bus initialized successfully")
        except Exception as e:
            self.get_logger().error(f"Failed to initialize CAN bus: {e}")


    def set_rpm_callback(self, msg):
        """Callback que procesa las RPM recibidas y envia comandos CAN."""
        rpm1 = msg.data[0].to_bytes(4, byteorder="big", signed=True)
        rpm2 = msg.data[1].to_bytes(4, byteorder="big", signed=True)
        rpm3 = msg.data[2].to_bytes(4, byteorder="big", signed=True)
        rpm4 = msg.data[3].to_bytes(4, byteorder="big", signed=True)

        self.send_rpm_command(MOTOR_ID_1, rpm1)
        self.send_rpm_command(MOTOR_ID_2, rpm2)
        self.send_rpm_command(MOTOR_ID_3, rpm3)
        self.send_rpm_command(MOTOR_ID_4, rpm4)

    def send_rpm_command(self, motor_id, rpm):
        """Envia un comando de RPM al motor especificado en el bus CAN."""
        try:
            message = can.Message(arbitration_id=motor_id, data=rpm, is_extended_id=True)
            self.bus.send(message)
            self.get_logger().info(f"Sent RPM command to motor {motor_id:04x}")
        except can.CanError as e:
            self.get_logger().error(f"Failed to send RPM to motor {motor_id:04x}: {e}")


def main(args=None):
    rclpy.init(args=args)
    node = RPMSenderNode()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()