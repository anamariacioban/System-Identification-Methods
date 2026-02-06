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

- `CIOBAN_AnaMaria_circuit_hidraulic_chirp.slx`  
  Simulink model of the hydraulic system excited using a Chirp input signal.

- `CIOBAN_AnaMaria_setup_circuit_hidraulic_chirp.m`  
  Initialization and parameter configuration script for the Chirp experiment.

- `genereaza_init_chirp_mat.m`  
  Script used to generate and store initialization data required for the Chirp-based identification.

- `comp_REG_CHIRP.m`  
  Script used for model validation and comparison between Chirp-based and regression-based identification results.

## Execution Order

1. Run `CIOBAN_AnaMaria_setup_circuit_hidraulic_chirp.m`
2. Simulate `CIOBAN_AnaMaria_circuit_hidraulic_chirp.slx`
3. Run `comp_REG_CHIRP.m` for validation and comparison
