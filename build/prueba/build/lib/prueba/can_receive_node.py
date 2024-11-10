#!/usr/bin/env python

import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import can
import serial.tools.list_ports
from sys import platform


def serial_ports_CAN():
    # Identifica el puerto CAN basado en el sistema operativo
    ports = list(serial.tools.list_ports.comports())
    for port_no, description, address in ports:
        if 'ACM' in description or 'CAN' in description or 'Serial' in description:
            return port_no
    return None


class CANReceiverNode(Node):
    def __init__(self):
        super().__init__('can_receiver_node')
        
        # Publicador para enviar mensajes CAN recibidos al topico 'can_topic'
        self.can_publisher_ = self.create_publisher(String, 'can_topic', 10)

        # Inicializa el bus CAN
        self.bus = can.interface.Bus(bustype='slcan', channel=serial_ports_CAN(), bitrate=500000)

        # Configura un temporizador para verificar mensajes CAN regularmente
        self.create_timer(0.1, self.receive_messages)

    def receive_messages(self):
        """Recibe mensajes del bus CAN y los publica en el topico 'can_topic'."""
        try:
            message = self.bus.recv(timeout=1.0)
            if message is not None:
                can_msg = f"{message.arbitration_id:04x},{message.data.hex()}"
                self.get_logger().info(f"Received message: {can_msg}")
                self.can_publisher_.publish(String(data=can_msg))
                # can_log_msg = f"ID: {message.arbitration_id.to_bytes(4, byteorder='big', signed=True).hex()}, Data: {message.data.hex()}"
                # can_msg = f"{message.arbitration_id.to_bytes(4, byteorder='big', signed=True).hex()},{message.data.hex()}"
                # self.get_logger().info(f"Received message: {can_log_msg}")
                # self.can_publisher_.publish(String(data=can_msg))
        except can.CanError as e:
            self.get_logger().error(f"CAN Error: {e}")


def main(args=None):
    rclpy.init(args=args)
    node = CANReceiverNode()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()
