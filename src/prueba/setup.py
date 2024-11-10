from setuptools import setup

package_name = 'prueba'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='jesus',
    maintainer_email='jesus@todo.todo',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
                'vesc_can_node = prueba.vesc_can_node:main',
                'data_logger_node = prueba.data_logger_node:main',
                'rpm_sender_node = prueba.rpm_sender_node:main',
                'can_receive_node = prueba.can_receive_node:main',
                'can_read_node = prueba.can_read_node:main',
        ],
    },
)
