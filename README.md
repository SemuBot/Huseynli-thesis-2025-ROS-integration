# Huseynli-thesis-2025-ROS-integration

# Semubot: ROS2 Middleware Integration for a Humanoid Robot

This project implements a modular Robot Operating System 2 (ROS2) framework for controlling **Semubot**, the first Estonian-built humanoid robot. The project enables Semubot's movement via velocity commands, URDF-based visualization, and hardware integration through Raspberry Pi.

## Project Objectives

- Build a URDF model of Semubot using STL files
- Visualize the robot in RViz2
- Implement robot movement using ROS2 `cmd_vel`
- Deploy ROS2 nodes on Raspberry Pi to control real motors via GPIO
- Prepare the system for future integration with sensors and digital twin environments

---

## System Architecture

- **ROS2 Distribution:** Jazzy (Ubuntu 24.04)
- **Core Nodes:**
  - `cmd_vel_publisher.py`: Publishes velocity commands
  - `cmd_vel_to_joint_states.py`: Converts `/cmd_vel` to simulated joint state updates
  - `robot_state_publisher`: Publishes TF tree from URDF and `/joint_states`
  - `odom_broadcaster.py`: Broadcasts simulated odometry data
- **Hardware:** Raspberry Pi 4B (running ROS2 and controlling motors via GPIO)

---


## How to Run

### 1. Clone the Repo
```bash
git clone https://github.com/yourusername/semubot_ros2.git
cd semubot_ros2
