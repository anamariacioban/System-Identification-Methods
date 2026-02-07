# Identification of a Second-Order Hydraulic System

This section presents the identification of a second-order hydraulic system using experimental data.
The system corresponds to a level control process involving two open tanks connected in series.
The control action is applied through the inlet flow of the first tank, while the controlled output
is the liquid level in the second tank.

---

## Role and Objective of the Project

The objective of this project is to identify the mathematical model of a second-order dynamic system
based on experimental measurements.
The system exhibits an aperiodic, overdamped behavior and is modeled using a transfer function
with real poles.

The main goals are:
- estimation of the transfer function parameters;
- validation of the identified model using quantitative performance indices.

---

## Physical Process Description

The experimental setup corresponds to a hydraulic process consisting of two open tanks connected in series.
The liquid level is controlled in the second tank by adjusting the inlet flow to the first tank.

The system variables are defined as:
- **Input signal** \( u(t) \): inlet flow rate to the first tank \([m^3/s]\);
- **State variables** \( x_1(t), x_2(t) \): liquid levels in the first and second tanks \([m]\);
- **Output signal** \( y(t) \): scaled measurement of the liquid level in the second tank \([m]\).

The input and output measurement devices may introduce arbitrary amplification factors.
Therefore, the overall static gain of the system is not assumed to be unity.

---

## Proposed Model Structure

The physical system is modeled using a second-order transfer function with real poles:

\[H(s) = \frac{K}{(T_1 s + 1)(T_2 s + 1)}, \quad \text{with } T_1 \gg T_2\]

The system identification problem consists of determining the following parameters:
- the static gain \( K \);
- the dominant time constant \( T_1 \);
- the non-dominant time constant \( T_2 \).

---

## Initial Experimental Configuration

The experimental setup is characterized by the following parameters:
- **Pair (m, n)**: (4, 10);
- **Process type**: hydraulic system with real poles;
- **Validation requirement**: normalized mean square error below 10%.

These parameters define the operating conditions used throughout the identification and validation procedures.
