# #!/usr/bin/env python

# import rclpy
# from rclpy.node import Node
# from std_msgs.msg import String
# import struct

# class CANDecoderNode(Node):
#     def __init__(self):
#         super().__init__('can_decoder_node')
        
#         # Suscriptor para recibir mensajes CAN del topico 'can_topic'
#         self.can_subscriber_ = self.create_subscription(
#             String,
#             'can_topic',
#             self.decode_can_message,
#             10
#         )
        
#         self.get_logger().info("CAN Decoder Node initialized and listening to 'can_topic'")

#     def decode_can_message(self, msg):
#         """Decodifica el mensaje CAN recibido del topico 'can_topic'."""
#         # Obtener el ID de la trama y los datos
#         try:
#             can_data = msg.data.split(',')
#             arbitration_id = int(can_data[0], 16)  # Convertir el ID de la trama a entero
#             data = bytes.fromhex(can_data[1])  # Convertir la cadena hexadecimal a bytes

#             # Mostrar el mensaje CAN completo
#             self.get_logger().info(f"Received message: ID={arbitration_id:04x}, Data={data.hex()}")

#             # Decodificar el mensaje según el ID de la trama (arbitration_id)
#             if arbitration_id == 0x0342:  # Motor 1
#                 self.decode_motor_data(data, motor_id=1)
#             elif arbitration_id == 0x0357:  # Motor 2
#                 self.decode_motor_data(data, motor_id=2)
#             elif arbitration_id == 0x0301:  # Motor 3
#                 self.decode_motor_data(data, motor_id=3)
#             elif arbitration_id == 0x0372:  # Motor 4
#                 self.decode_motor_data(data, motor_id=4)
#             else:
#                 self.get_logger().info(f"Unknown arbitration ID: {arbitration_id:04x}")

#         except Exception as e:
#             self.get_logger().error(f"Failed to decode CAN message: {e}")

#     def decode_motor_data(self, data, motor_id):
#         """Decodifica los datos del motor dependiendo de la estructura de los bytes."""
#         try:
#             # Aquí asumimos que los primeros 4 bytes son RPM, el siguiente grupo son datos de corriente, etc.
#             rpm = struct.unpack(">i", data[:4])[0]  # Desempaquetamos los primeros 4 bytes como un entero (RPM)
#             current = struct.unpack(">h", data[4:6])[0]  # Desempaquetamos los bytes de corriente
#             temperature = data[6]  # Asumimos que el byte 7 es la temperatura
#             error_code = data[7]  # El último byte es un código de error, por ejemplo

#             # Mostrar la información decodificada
#             self.get_logger().info(f"Motor {motor_id} - RPM: {rpm}, Current: {current}A, Temp: {temperature}C, Error Code: {error_code}")
        
#         except Exception as e:
#             self.get_logger().error(f"Failed to decode motor data: {e}")

# def main(args=None):
#     rclpy.init(args=args)
#     node = CANDecoderNode()
#     try:
#         rclpy.spin(node)
#     except KeyboardInterrupt:
#         pass
#     finally:
#         node.destroy_node()
#         rclpy.shutdown()

# if __name__ == '__main__':
#     main()



#!/usr/bin/env python

import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import struct

# Define los IDs de los motores
MOTOR_ID_1 = 0x0342
MOTOR_ID_2 = 0x0357
MOTOR_ID_3 = 0x0301
MOTOR_ID_4 = 0x0372

class CANDecoderNode(Node):
    def __init__(self):
        super().__init__('can_decoder_node')
        
        # Suscriptor para recibir mensajes CAN del tópico 'can_topic'
        self.can_subscriber_ = self.create_subscription(
            String,
            'can_topic',
            self.decode_can_message,
            10
        )
        
        self.get_logger().info("CAN Decoder Node initialized and listening to 'can_topic'")

    def decode_can_message(self, msg):
        """Decodifica el mensaje CAN recibido del tópico 'can_topic'."""
        try:
            can_data = msg.data.split(',')
            arbitration_id = int(can_data[0], 16)  # Convertir el ID de la trama a entero
            data = bytes.fromhex(can_data[1])  # Convertir la cadena hexadecimal a bytes

            # Mostrar el mensaje CAN completo
            self.get_logger().info(f"Received message: ID={arbitration_id:04x}, Data={data.hex()}")

            # Extraer los dos primeros bytes para determinar el tipo de paquete
            packet_status = arbitration_id >> 8  # Los primeros 2 bytes del ID de la trama
            controller_id = arbitration_id & 0xFF  # Los últimos 2 bytes del ID de la trama
            
            self.get_logger().info(f"Packet Status: {packet_status}, Controller ID: {controller_id}")

            # Decodificar el mensaje según el tipo de paquete (packet_status)
            if packet_status == 0x09:  # CAN_PACKET_STATUS
                self.decode_can_packet_status(data, controller_id)
            elif packet_status == 0x14:  # CAN_PACKET_STATUS_2
                self.decode_can_packet_status_2(data, controller_id)
            elif packet_status == 0x15:  # CAN_PACKET_STATUS_3
                self.decode_can_packet_status_3(data, controller_id)
            elif packet_status == 0x16:  # CAN_PACKET_STATUS_4
                self.decode_can_packet_status_4(data, controller_id)
            elif packet_status == 0x27:  # CAN_PACKET_STATUS_5
                self.decode_can_packet_status_5(data, controller_id)
            elif packet_status == 0x28:  # CAN_PACKET_STATUS_6
                self.decode_can_packet_status_6(data, controller_id)
            else:
                self.get_logger().info(f"Unknown packet status: {packet_status}")

        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN message: {e}")

    def decode_can_packet_status(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS (ID: 9)."""
        try:
            erpm = struct.unpack(">i", data[0:4])[0]  # ERPM (4 bytes)
            current = struct.unpack(">h", data[4:6])[0] / 10  # Current (2 bytes, x10)
            duty = struct.unpack(">h", data[6:8])[0] / 1000  # Duty Cycle (2 bytes, x1000)

            self.get_logger().info(f"[Motor {controller_id}] ERPM: {erpm}, Current: {current}A, Duty: {duty}%")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS: {e}")

    def decode_can_packet_status_2(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS_2 (ID: 14)."""
        try:
            ah_used = struct.unpack(">i", data[0:4])[0] / 10000  # Ah Used (4 bytes, x10000)
            ah_charged = struct.unpack(">i", data[4:8])[0] / 10000  # Ah Charged (4 bytes, x10000)

            self.get_logger().info(f"[Motor {controller_id}] Ah Used: {ah_used}, Ah Charged: {ah_charged}")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS_2: {e}")

    def decode_can_packet_status_3(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS_3 (ID: 15)."""
        try:
            wh_used = struct.unpack(">i", data[0:4])[0] / 10000  # Wh Used (4 bytes, x10000)
            wh_charged = struct.unpack(">i", data[4:8])[0] / 10000  # Wh Charged (4 bytes, x10000)

            self.get_logger().info(f"[Motor {controller_id}] Wh Used: {wh_used}, Wh Charged: {wh_charged}")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS_3: {e}")

    def decode_can_packet_status_4(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS_4 (ID: 16)."""
        try:
            temp_fet = struct.unpack(">h", data[0:2])[0] / 10  # Temp Fet (2 bytes, x10)
            temp_motor = struct.unpack(">h", data[2:4])[0] / 10  # Temp Motor (2 bytes, x10)
            current_in = struct.unpack(">h", data[4:6])[0] / 10  # Current In (2 bytes, x10)
            pid_pos_now = struct.unpack(">h", data[6:8])[0] / 50  # PID Position (2 bytes, x50)

            self.get_logger().info(f"[Motor {controller_id}] Temp Fet: {temp_fet}C, Temp Motor: {temp_motor}C, "
                                   f"Current In: {current_in}A, PID Position: {pid_pos_now}")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS_4: {e}")

    def decode_can_packet_status_5(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS_5 (ID: 27)."""
        try:
            tacho_value = struct.unpack(">i", data[0:4])[0]  # Tachometer (4 bytes)
            v_in = struct.unpack(">h", data[4:6])[0] / 10  # Voltage In (2 bytes, x10)

            self.get_logger().info(f"[Motor {controller_id}] Tachometer: {tacho_value}, Voltage In: {v_in}V")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS_5: {e}")

    def decode_can_packet_status_6(self, data, controller_id):
        """Decodifica el paquete CAN de tipo CAN_PACKET_STATUS_6 (ID: 28)."""
        try:
            adc1 = struct.unpack(">h", data[0:2])[0]  # ADC1 (2 bytes)
            adc2 = struct.unpack(">h", data[2:4])[0]  # ADC2 (2 bytes)
            adc3 = struct.unpack(">h", data[4:6])[0]  # ADC3 (2 bytes)
            ppm = struct.unpack(">h", data[6:8])[0]  # PPM (2 bytes)

            self.get_logger().info(f"[Motor {controller_id}] ADC1: {adc1}, ADC2: {adc2}, ADC3: {adc3}, PPM: {ppm}")
        except Exception as e:
            self.get_logger().error(f"Failed to decode CAN_PACKET_STATUS_6: {e}")

def main(args=None):
    rclpy.init(args=args)
    node = CANDecoderNode()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()

if __name__ == '__main__':
    main()



