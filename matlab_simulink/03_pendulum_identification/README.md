# Pendulum System Identification

This folder contains the MATLAB and Simulink implementation used for the
identification and simulation of a pendulum system.

The implementation includes model setup, input signal generation and
time-domain simulation using Simulink.

**Important:**  
All files in this folder must be kept together in the same directory.
The scripts and the Simulink model rely on shared workspace variables and
initialization routines.

## Files

- `pendulum_simulink_model.slx`  
  Simulink model of the pendulum system.

- `pendulum_system_setup.m`  
  Initialization and parameter configuration script for the pendulum model.

- `generate_input_signal.m`  
Script used to generate the input excitation signal required by the Simulink
model. The simulation cannot be executed without running this script first.

