# Comparison of Identification Methods and Final Conclusions

This section presents a comparative analysis of the identification methods applied
throughout the project and summarizes the main conclusions.
The comparison is based on quantitative performance indicators and qualitative
observations regarding model accuracy and generalization capability.

---

## Comparison Between Linear Regression and Chirp-Based Identification

A direct comparison is performed between the models obtained using linear regression
(time-domain identification) and those obtained using Chirp-based frequency-domain
identification.

Two validation scenarios are considered.

---

## Scenario 1: Validation on Step-Response Experimental Data

In the first scenario, the experimental data obtained from the step-response experiment
(linear regression identification) are used as validation data for both models.

The obtained normalized mean square errors are:

$$
eMPN_{\text{reg}} = 3.8787\%
$$

$$
eMPN_{\text{chirp}} = 3.2065\%
$$

The Chirp-based model exhibits a lower normalized error, indicating better
generalization capability even when validated on data obtained from a different
excitation type.

---

## Scenario 2: Validation on Chirp Experimental Data

In the second scenario, the experimental data obtained using the Chirp excitation
are used as validation data for both models.

The obtained normalized mean square errors are:

$$
eMPN_{\text{reg}} = 6.9578\%
$$

$$
eMPN_{\text{chirp}} = 4.8782\%
$$

Once again, the Chirp-based model provides superior performance, with a significantly
lower error compared to the linear regression model.

---

## Discussion of Results

The results obtained in both validation scenarios highlight the advantages of
frequency-domain identification using Chirp signals.

The Chirp-based method:
- provides more robust parameter estimates;
- exhibits better generalization across different excitation signals;
- reduces sensitivity to noise and transient selection.

In contrast, linear regression remains a valuable method due to its simplicity and
low computational complexity, but its performance strongly depends on the correct
selection of steady-state and transient intervals.

---

## Comparison of Parametric Models (ARMAX, OE, SS-EST)

For the parametric identification stage, three model structures were analyzed:
ARMAX, Output Error (OE), and State-Space Estimation (SS-EST).

The comparison is based on the Fit index obtained on the validation dataset:

- ARMAX: 94.25%
- OE: 94.69%
- SS-EST: 94.24%

Although the differences are relatively small, the OE model achieves the highest Fit
value, indicating the best overall balance between model complexity and accuracy.

---

## Final Conclusions

This project demonstrates that system identification accuracy strongly depends on
both the excitation signal design and the selected modeling approach.

Key conclusions include:
- Proper excitation design (Chirp, PRBS/SPAB) significantly improves model quality.
- Frequency-domain identification offers superior robustness and generalization.
- Parametric models can achieve high accuracy when residual analysis criteria are
  properly satisfied.
- Among the analyzed parametric structures, the OE model provides the best overall
  performance.

The combination of careful experimental design, appropriate identification methods,
and rigorous validation leads to reliable and accurate dynamic models.
