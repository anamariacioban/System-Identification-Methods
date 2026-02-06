# PRBS/SPAB Signal Calibration and Parametric System Identification

This section presents the calibration of a pseudo-random binary signal (PRBS/SPAB)
and the identification of a dynamic system using parametric modeling techniques.
The analysis is performed on a simulated mechanical pendulum system, operating
around a defined working point.

---

## System Description and Experimental Setup

The considered system is a simple mechanical pendulum actuated by an electric motor.
The physical parameters of the system are customized based on the selected parameter
pair (m, n) and are defined as:

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

Measurement noise, saturation effects, and quantization are included in the model
to emulate real hardware behavior.

---

## PRBS/SPAB Signal Design

The input signal consists of a trapezoidal reference signal defining two close
operating points, over which a pseudo-random binary signal is superimposed.

The objective is to sufficiently excite the system dynamics while maintaining
operation in the vicinity of a fixed working point.

The PRBS parameters are selected based on the dominant oscillatory behavior of
the system. The approximate oscillation period $t_{po}$ is estimated from an
initial simulation.

The number of PRBS stages $N$ and the switching period $p$ are selected as:

$$
p = \frac{t_{po}}{N \cdot T_s}
$$

The total duration of the PRBS excitation is defined as:

$$
\Delta T = 1.2 \cdot (2^N - 1) \cdot p \cdot T_s
$$

---

## Data Selection and Preprocessing

A single simulation experiment is used for both identification and validation.
Two time intervals are selected:
- an identification interval (ID);
- a validation interval (VD).

The input and output signals are preprocessed using:
- decimation to reduce oversampling;
- removal of the DC component.

The resulting signals are:

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

The model parameters are estimated using the identification dataset.
Validation is performed by analyzing the autocorrelation of the residuals.

The residuals remain within the confidence bounds, indicating that the noise
component is adequately modeled.

---

## Output Error (OE) Model Identification

The OE model describes only the deterministic dynamics of the system, without
explicit noise modeling.

The selected OE structure is:

$$
[n_b, n_f, n_k] = [2, \; 2, \; 1]
$$

Validation is performed by analyzing the cross-correlation between residuals
and the input signal. The absence of significant correlation confirms the
adequacy of the OE model.

---

## State-Space Model Identification (SS-EST)

A state-space model is identified using the SS-EST method.
The model order is automatically selected within a predefined range.

Validation is based on both:
- residual autocorrelation;
- residual cross-correlation with the input.

The obtained results indicate that the state-space model accurately captures
the system dynamics.

---

## Model Comparison Using the Fit Index

The identified models are compared using the Fit index, which quantifies the
percentage of output variance explained by the model.

The obtained Fit values are approximately:

- ARMAX: 94.25%
- OE: 94.69%
- SS-EST: 94.24%

Among the analyzed structures, the OE model provides the highest Fit value,
although the differences between the models are relatively small.

---

## Conclusions

The PRBS/SPAB-based identification confirms that parametric models can accurately
describe the system dynamics when the excitation signal is properly designed.

The OE model achieves the best overall performance, while ARMAX and SS-EST remain
viable alternatives depending on noise modeling requirements.
