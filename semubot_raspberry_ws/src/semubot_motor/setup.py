from setuptools import setup, find_packages

package_name = 'semubot_motor'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='semubot-omar',
    maintainer_email='semubot-omar@gmail.com',
    description='ROS2 package to control Semubot motors via GPIO and /cmd_vel',
    license='MIT',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'cmd_vel_motor_driver = semubot_motor.cmd_vel_motor_driver:main',
        ],
    },
)

