# Frequency-Domain Identification Using Chirp Signals

This section presents the identification of a second-order aperiodic system using
frequency-domain techniques based on a Chirp excitation signal.
The method relies on the analysis of the system response in the frequency domain,
with particular emphasis on the −90° phase condition.

---

## Identification Method Overview

The system is assumed to be described by a second-order transfer function with real poles:

$$
H(s) = \frac{K}{(T_1 s + 1)(T_2 s + 1)}
$$

The identification procedure consists of the following main stages:
1. Estimation of the static gain $K$
2. Identification of the natural frequency $\omega_n$
3. Estimation of the damping ratio $\zeta$
4. Reconstruction of the transfer function and time constants

---

## Chirp Signal Excitation

In order to excite the system over a wide frequency range, a Chirp signal is used as
input. The Chirp signal is a sinusoidal signal with continuously varying frequency.

The frequency range of the Chirp signal is selected around the system break frequency,
which is estimated using the dominant time constant obtained from the step response
experiment:

$$
\omega_f = \frac{1}{T_1}
$$

Based on this estimation, the minimum and maximum frequencies of the Chirp signal are
chosen such that the relevant system dynamics are adequately excited.

---

## Estimation of the Static Gain $K$

At low frequencies, the magnitude of the frequency response approaches the static gain
of the system. Therefore, the gain can be estimated using the steady-state mean values
of the input and output signals:

$$
K \approx \frac{\overline{y}_{st}}{\overline{u}_{st}}
$$

From the experimental data, the estimated static gain is:

$$
K = 2.77
$$

---

## Identification at the −90° Phase Condition

The key step of the Chirp-based identification method is the analysis of the system
response at the frequency where the phase shift between input and output signals is
approximately −90°.

At this operating point:
- the input and output signals are in quadrature;
- the imaginary part of the frequency response can be evaluated directly.

The natural frequency is estimated using the time interval between a minimum and a
maximum of the output signal:

$$
\omega_n = \frac{\pi}{t_{\max} - t_{\min}}
$$

The phase condition is verified using the measured time delay $\Delta T$:

$$
\phi = -\omega_n \cdot \Delta T \approx -\frac{\pi}{2}
$$

---

## Estimation of the Damping Ratio $\zeta$

The magnitude of the frequency response at the quadrature frequency is computed as
the ratio between the output and input signal amplitudes:

$$
M = \frac{A_y}{A_u}
$$

The imaginary part of the frequency response is approximated as:

$$
\text{Im} = -M
$$

The damping ratio is then obtained using the following relation:

$$
\zeta = \frac{-K}{2 \cdot \text{Im}}
$$

From the experimental data, the damping ratio satisfies:

$$
\zeta > 1
$$

which confirms the aperiodic behavior of the system.

---

## Reconstruction of the Transfer Function

Using the identified parameters $\omega_n$ and $\zeta$, the transfer function is
reconstructed as:

$$
H(s) = \frac{K \omega_n^2}{s^2 + 2 \zeta \omega_n s + \omega_n^2}
$$

The poles of the system are obtained by factorizing the denominator. The corresponding
time constants are computed as the inverse of the pole magnitudes:

$$
T_1 = \frac{1}{|p_1|}, \quad T_2 = \frac{1}{|p_2|}
$$

---

## Identified Model

The final transfer function obtained using the Chirp-based identification method is:

$$
H(s) = \frac{2.771}{(1.116 s + 1)(7.230 s + 1)}
$$

---

## Model Validation

The identified model is validated by comparing the measured output signal with the
simulated output obtained using the identified transfer function and the state-space
representation.

The obtained performance indices indicate that the normalized error remains below
the imposed threshold of 10%, confirming the validity of the identified model.
