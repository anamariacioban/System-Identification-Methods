# PRBS/SPAB Signal Calibration and Parametric System Identification

This section presents the calibration of a pseudo-random binary signal (PRBS/SPAB)
and the identification of a dynamic system using parametric modeling techniques.
Unlike the previous sections, particular emphasis is placed on the **design and
calibration of the excitation signal**, which is a critical step for reliable
parametric identification.

The analysis is performed on a simulated mechanical pendulum system operating
around a predefined working point.

---

## System Description and Simulation Setup

The considered system is a simple mechanical pendulum actuated by an electric motor.
The physical parameters of the system are customized based on the selected parameter
pair $(m, n)$ and are defined as:

$$
M = 0.8 - \frac{n}{48}, \quad
l = 1.2 - \frac{m}{24}, \quad
b = 0.3 + \frac{m}{24}
$$

The simulation is performed using a fundamental sampling period:

$$
T_s = 500 \, \mu s
$$

The measured output signal is defined as a linear combination of the angular position
and angular velocity:

$$
y(t) = c_1 \theta(t) + c_2 \omega(t)
$$

To approximate real hardware behavior, the model includes saturation effects,
quantization, and additive white noise on both input and output channels.

---

## Initial Experiment and Estimation of Characteristic Times

Before designing the PRBS/SPAB excitation, an initial simulation is performed using
a simple input signal. The purpose of this experiment is to visually analyze the
system response and estimate the characteristic time constants required for signal
calibration.

From the system response, the following characteristic times are identified:

- $t_1$ – time required for the initial transients to decay and the system to reach
  a quasi-stationary regime;
- $t_u$ – approximate rise time of the response (around 90% of the first oscillation);
- $t_{po}$ – approximate duration of one significant oscillation period.

Based on the observed response, the selected values are:

$$
t_1 = 20 \, \text{s}, \quad
t_u = 0.5 \, \text{s}, \quad
t_{po} = 1.6 \, \text{s}
$$

These values ensure that the PRBS/SPAB excitation is applied only after the system
has reached a stable operating region.

---

## PRBS/SPAB Signal Calibration

The PRBS/SPAB signal is designed to excite the system dynamics locally around a
working point while maintaining small signal variations.

The number of PRBS stages is selected as:

$$
N = 6
$$

The switching period $p$ (expressed in samples) is computed as:

$$
p = \frac{t_{po}}{N \cdot T_s}
$$

The total duration of the PRBS/SPAB excitation is then defined as:

$$
\Delta T = 1.2 \cdot (2^N - 1) \cdot p \cdot T_s
$$

The scaling factor $1.2$ ensures that at least one full PRBS period is included
within the observation window.

The final input signal consists of:
- a trapezoidal reference defining two close operating points;
- a superimposed PRBS/SPAB signal with small amplitude.

This design guarantees persistent excitation while preserving local linearity.

---

## Data Selection and Preprocessing

A single simulation experiment is used for both identification and validation.
Two non-overlapping time intervals are selected:

- Identification interval (ID): $[i_1, i_2]$
- Validation interval (VD): $[i_3, i_4]$

The input and output signals are preprocessed as follows:
- decimation by a factor $N$ to reduce oversampling;
- removal of the DC component.

The resulting datasets are:

$$
u_{id}(t), \; y_{id}(t) \quad \text{(identification)}
$$

$$
u_{vd}(t), \; y_{vd}(t) \quad \text{(validation)}
$$

These datasets are converted into objects compatible with the System Identification
Toolbox for parametric model estimation.

---

## ARMAX Model Identification

The ARMAX model explicitly includes a noise model and is defined by the structure:

$$
[n_a, n_b, n_c, n_k] = [2, \; 2, \; 5, \; 1]
$$

Validation is performed by analyzing the autocorrelation of the residuals.
All residual correlation values remain within the confidence bounds, indicating
that the stochastic component is adequately modeled.

---

## Output Error (OE) Model Identification

The OE model captures only the deterministic dynamics of the system.
The selected structure is:

$$
[n_b, n_f, n_k] = [2, \; 2, \; 1]
$$

Validation is based on the cross-correlation between residuals and the input signal.
The absence of significant correlation confirms the adequacy of the OE model.

---

## State-Space Model Identification (SS-EST)

A state-space model is identified using the SS-EST method, with the model order
automatically selected within a predefined range.

Validation is performed using both residual autocorrelation and residual
cross-correlation, confirming that the identified model accurately captures
the system dynamics.

---

## Model Comparison Using the Fit Index

The identified models are compared using the Fit index, which quantifies the
percentage of output variance explained by each model.

The obtained Fit values are approximately:

- ARMAX: 94.25%
- OE: 94.69%
- SS-EST: 94.24%

Among the analyzed structures, the OE model provides the best overall performance,
although the differences between models are relatively small.

---

## Conclusions

The explicit calibration of the PRBS/SPAB excitation signal plays a crucial role
in the success of parametric system identification.

The results demonstrate that properly designed excitation signals, combined with
adequate preprocessing and validation procedures, lead to accurate and reliable
parametric models of the system.
