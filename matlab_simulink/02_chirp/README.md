# Chirp-Based System Identification (Frequency Domain)

This folder contains the MATLAB and Simulink implementation used for identifying
a second-order hydraulic system using Chirp excitation (frequency-domain analysis).

The method is based on analyzing the system response to a sinusoidal signal
with time-varying frequency in order to estimate the dynamic parameters
of the hydraulic system.

**Important:**  
All files in this folder must be kept together in the same directory.
The scripts and the Simulink model rely on shared workspace variables and
initialization data.

## Files

- `hydraulic_circuit_simulink_chirp.slx`  
  Simulink model of the hydraulic system excited using a Chirp input signal.

- `hydraulic_circuit_setup_for_chirp.m`  
  Initialization and parameter configuration script for the Chirp experiment.

- `generate_chirp_initial_parameters.m`  
  Script used to generate and store initialization data required for the Chirp-based identification.

- `regression_vs_chirp_comparison_on_chirp_data.m`  
  Script used for model validation and comparison between Chirp-based and regression-based identification results.

