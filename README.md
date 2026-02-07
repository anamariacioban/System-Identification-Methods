# System Identification Methods

This repository contains my **System Identification** project, developed as part of my Control coursework.

The project focuses on identifying and validating dynamic systems using both **time-domain** and **frequency-domain** techniques.
The full technical report is written in Romanian and is included as a PDF file for completeness.

---

## Project Overview

The project is structured into three main parts:

### 1. Identification of a Second-Order Hydraulic System (Time Domain)
- Experimental data acquisition using step input signals
- System modeling as a second-order aperiodic system with real poles
- Parameter estimation using linear regression (successive logarithms method)
- Identification of gain and dominant / non-dominant time constants
- Model validation using performance indices (J and normalized MSE)
- Model validation using both transfer function and state-space representations

### 2. Frequency-Domain Identification Using Chirp Signals
- Excitation of the system using a Chirp input signal
- Identification based on phase quadrature (-90° condition)
- Estimation of natural frequency and damping ratio
- Reconstruction of the transfer function and time constants
- Validation using transfer function and state-space representations

### 3. Parametric Identification Using PRBS / SPAB Signals
- Calibration of pseudo-random binary input signals
- Data preprocessing (decimation, DC removal)
- Parametric model estimation:
  - ARMAX
  - Output Error (OE)
  - State-Space Estimation (SS-EST)
- Model validation using residual analysis and fit comparison

---

## Tools and Technologies
- MATLAB & Simulink
- System Identification Toolbox
- LaTeX (technical report)

---

## Repository Contents
- `docs/` – LaTeX source of the report.
- `figures/` – MATLAB- and Simulink-generated plots and figures used in the report.
- `matlab_simulink/` – MATLAB scripts and Simulink models used for system
identification, simulation, and model validation.
- `System_Identification_Report_RO.pdf` – Compiled version of the complete report
written in Romanian.

---

## Notes
This repository is intended to showcase system identification techniques, modeling, validation, and experimental data analysis.
