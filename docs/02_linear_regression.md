# Linear Regression Identification of a Second-Order System

This section presents the identification of a second-order aperiodic system using
time-domain experimental data and the linear regression (successive logarithms) method.
The identification is based on the step response of the hydraulic system.

---

## Identification Method Overview

The system is modeled as a second-order transfer function with real poles:

H(s) = K / [(T1 · s + 1)(T2 · s + 1)], with T1 >> T2

The identification procedure consists of three main stages:
1. Estimation of the static gain K
2. Estimation of the dominant time constant T1
3. Estimation of the non-dominant time constant T2

---

## Estimation of the Static Gain (K)

The static gain is determined from the steady-state values of the input and output signals.
It is computed as the ratio between the steady-state variations of the output and input:

K = (y_st − y_0) / (u_st − u_0)

The steady-state intervals are selected by visual inspection of the step response:
- the initial steady-state interval corresponds to indices i1–i2
- the final steady-state interval corresponds to indices i3–i4

Using the experimental data, the estimated static gain is:

K = 2.763

---

## Estimation of the Dominant Time Constant (T1)

Since T1 is much larger than T2, the transient response is dominated by a single exponential term.
By considering the error with respect to the steady-state value and applying the natural logarithm,
a linear relationship is obtained:

ln(y_st − y(t)) ≈ α · t + β

This allows the use of linear regression to estimate the parameters α (slope) and β (intercept).

The dominant time constant is computed from the slope:

T1 = −1 / α

The regression interval is selected from the transient region of the response,
corresponding to indices i5–i6.

The estimated dominant time constant is:

T1 = 7.2799 s

---

## Estimation of the Non-Dominant Time Constant (T2)

The non-dominant time constant is determined using the inflection point of the step response.
The inflection time Ti is obtained experimentally and used to solve the following equation:

T1 · T2 · ln(T2)
− T2 · [Ti + T1 · ln(T1)]
+ T1 · Ti = 0

From the experimental data, the inflection time is:

Ti = 4.0033 s

Solving the equation yields the non-dominant time constant:

T2 = 1.24 s

---

## Identified Model

The final transfer function identified using the linear regression method is:

H(s) = 2.763 / [(7.2799 · s + 1)(1.24 · s + 1)]

---

## Model Validation

The identified model is validated by comparing the measured output signal
with the simulated output obtained from the identified model.

Two performance indices are used.

### Performance Index (J)

J = sqrt( (1 / N) · Σ (y(k) − y_M(k))² )

Obtained value:

J = 0.0017

### Normalized Mean Square Error (eMPN)

eMPN = ( ||y − y_M|| / ||y − mean(y)|| ) · 100%

Obtained value:

eMPN = 3.8816 %

Since the normalized error is below the 10% threshold,
the identified model is considered valid.
