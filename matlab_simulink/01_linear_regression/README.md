# Linear Regression Identification (Step Response)

This folder contains the MATLAB and Simulink files used for the identification
of a hydraulic system using step-response data and the linear regression
(successive logarithms) method.

 **Important:**  
All files in this folder must be kept together in the same directory in order
for the scripts and Simulink model to run correctly. The scripts rely on shared
workspace variables and initialization files.

## Files
- `hydraulic_system_simulink.slx`  
  Simulink model of the hydraulic circuit used for the step-response experiment.

- `hydraulic_system_setup.m`  
  Parameter setup and signal initialization script.

- `generate_regression_initial_values.m`  
  Script used to generate initialization data for the regression experiment.

- `regression_vs_chirp_comparison_on_regression_data.mm`  
  Script used for comparison between regression-based and Chirp-based models.
