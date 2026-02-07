# Linear Regression Identification of a Second-Order System

This section presents the identification of a second-order aperiodic system using
time-domain experimental data and the linear regression (successive logarithms) method.
The identification is performed based on the step response of the hydraulic system.

---

## Identification Method Overview

The system is assumed to be described by the following transfer function:

$$
H(s) = \frac{K}{(T_1 s + 1)(T_2 s + 1)}, \quad T_1 \gg T_2
$$

The identification procedure consists of three main stages:
1. Estimation of the static gain $K$
2. Estimation of the dominant time constant $T_1$
3. Estimation of the non-dominant time constant $T_2$

---

## Estimation of the Static Gain $K$

The static gain is determined from the steady-state values of the input and output signals.
It is computed as the ratio between the steady-state variations of the output and input signals:

$$
K = \frac{\overline{y}_{st} - \overline{y}_0}{\overline{u}_{st} - \overline{u}_0}
$$

The steady-state intervals are selected by visual inspection of the step response:
- the initial steady-state interval corresponds to the indices $i_1$– $i_2$
- the final steady-state interval corresponds to the indices $i_3$– $i_4$

Using the experimental data, the estimated static gain is:

$$
K = 2.763
$$

---

## Estimation of the Dominant Time Constant $T_1$

Since $T_1 \gg T_2$, the transient response is dominated by a single exponential term.
By considering the error with respect to the steady-state value and applying the natural logarithm,
a linear relationship is obtained:

$$
\ln(y_{st} - y(t)) \approx \alpha t + \beta
$$

This relation allows the use of linear regression to estimate the parameters $\alpha$ and $\beta$.
The regression problem is solved using the Least Squares Method.

The dominant time constant is computed from the slope $\alpha$:

$$
T_1 = -\frac{1}{\alpha}
$$

The regression interval is selected from the transient region of the response,
corresponding to the indices $i_5$–$i_6$.

The estimated dominant time constant is:

$$
T_1 = 7.2799 \text{ s}
$$

---

## Estimation of the Non-Dominant Time Constant $T_2$

The non-dominant time constant is determined using the inflection point of the step response.
The inflection time $T_i$ is obtained experimentally and used to solve the transcendental equation:

```math
T_1 T_2 \ln(T_2)
- T_2 \left(T_i + T_1 \ln(T_1)\right)
+ T_1 T_i = 0
```


From the experimental data, the inflection time is:

$$
T_i = 4.0033 \text{ s}
$$

Solving the equation yields the non-dominant time constant:

$$
T_2 = 1.24 \text{ s}
$$

---

## Identified Model

The final transfer function identified using the linear regression method is:

$$
H(s) = \frac{2.763}{(7.2799 s + 1)(1.24 s + 1)}
$$

---

## Model Validation

The identified model is validated by comparing the measured output signal
with the simulated output obtained from the identified transfer function.

Two performance indices are used.

### Performance Index $J$

$$
J = \sqrt{\frac{1}{N} \sum_{k=1}^{N} \left( y(k) - y_M(k) \right)^2}
$$

The obtained value is:

$$
J = 0.0017
$$

### Normalized Mean Square Error (eMPN)

$$
\epsilon_{MPN} =
\frac{\| y - y_M \|}{\| y - \bar{y} \|} \cdot 100\%
$$

The normalized error obtained for the identified model is:

$$
\epsilon_{MPN} = 3.8816\%
$$

Since the normalized error is below the 10% threshold, the identified model
is considered valid.
