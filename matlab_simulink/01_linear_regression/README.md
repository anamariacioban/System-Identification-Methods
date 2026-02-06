# Linear Regression Identification (Step Response)

This folder contains the MATLAB and Simulink files used for the identification
of a hydraulic system using step-response data and the linear regression
(successive logarithms) method.

 **Important:**  
All files in this folder must be kept together in the same directory in order
for the scripts and Simulink model to run correctly. The scripts rely on shared
workspace variables and initialization files.

## Files
- `CIOBAN_AnaMaria_circuit_hidraulic_regresie.slx`  
  Simulink model of the hydraulic circuit used for the step-response experiment.

- `CIOBAN_AnaMaria_setup_circuit_hidraulic_regresie.m`  
  Parameter setup and signal initialization script.

- `genereaza_init_regresie_mat.m`  
  Script used to generate initialization data for the regression experiment.

- `comparatie_sys_hidraulic.m`  
  Model validation and comparison script.

- `comp_REG_chirp.m`  
  Script used for comparison between regression-based and Chirp-based models.

## Execution Order
1. Run `CIOBAN_AnaMaria_setup_circuit_hidraulic_regresie.m`
2. Simulate `CIOBAN_AnaMaria_circuit_hidraulic_regresie.slx`
3. Run `comparatie_sys_hidraulic.m` or `comp_REG_chirp.m` for validation and comparison
