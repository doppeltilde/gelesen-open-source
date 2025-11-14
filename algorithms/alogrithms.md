# Algorithm Reference Sheet

This document outlines key formulas in use or for future use in the Gelesen App.

---

## Elo Rating System

$$
E_b = \frac{1}{1 + 10^{\frac{R_a - R_b}{400}}}
$$

**Variables:**

* $E_b$: Expected score (probability of winning) for Player $B$.

* $R_a$: Current Elo rating of Player $A$.

* $R_b$: Current Elo rating of Player $B$.

* $400$: The difference in rating points which equates to a tenfold difference in skill (and a 10:1 win ratio).

---

## Time Calculation

$$
T = \frac{\text{charsLength} \times 1000}{\text{CPS}}
$$

**Variables:**

* $T$: Time required to complete the task (in milliseconds).

* $\text{charsLength}$: Total number of characters or elements to process.

* $\text{CPS}$: Characters Per Second (speed metric).

* $1000$: Conversion factor (seconds to milliseconds).

---

## Recommendation System Models

### 1. Collaborative Filtering (Matrix Factorization)

This model predicts a user's rating ($\hat{r}_{ui}$) by combining global, user-specific, and item-specific biases with the dot product of their latent factor vectors.

$$
\hat{r}_{ui} = \mu + b_u + b_i + p_u^T q_i
$$

**Variables:**

* $\hat{r}_{ui}$: Predicted rating of item $i$ by user $u$.

* $\mu$: Global average rating across all users and items.

* $b_u$: Bias (deviation) of user $u$ from the global average.

* $b_i$: Bias (deviation) of item $i$ from the global average.

* $p_u$: Latent factor vector for user $u$.

* $q_i$: Latent factor vector for item $i$.

### 2. Content-Based Filtering (Cosine Similarity)

This formula measures the similarity between a user's defined profile ($P_u$) and an item's feature vector ($I_i$) using **Cosine Similarity**.

$$
\text{sim}(u, i) = \cos(\theta) = \frac{P_u \cdot I_i}{\|P_u\| \cdot \|I_i\|} = \frac{\sum_k (P_{u,k} \cdot I_{i,k})}{\sqrt{\sum_k P_{u,k}^2} \cdot \sqrt{\sum_k I_{i,k}^2}}
$$

**Variables:**

* $\text{sim}(u, i)$: The similarity score between user $u$ and item $i$.

* $P_u$: User profile vector (vectorized history of preferences).

* $I_i$: Item feature vector.

* $k$: Index over features/dimensions.

* $\|\cdot\|$: Denotes the magnitude (L2-norm) of the vector.

### 3. Weighted Hybrid Model

This approach combines predictions from multiple models (CF and CB) using weighting coefficients ($\alpha$) and optionally incorporates external factors, such as social influence ($\text{social}(u,i)$).

$$
\hat{r}_{ui}^{\text{hybrid}} = \alpha \cdot \hat{r}_{ui}^{\text{CF}} + (1 - \alpha) \cdot \hat{r}_{ui}^{\text{CB}} + \beta \cdot \text{social}(u, i)
$$

**Variables:**

* $\hat{r}_{ui}^{\text{CF}}$: Prediction from the Collaborative Filtering model.

* $\hat{r}_{ui}^{\text{CB}}$: Prediction from the Content-Based Filtering model.

* $\text{social}(u, i)$: An external function measuring social influence or trust.

* $\alpha$: Weighting coefficient for the CF prediction ($0 \leq \alpha \leq 1$).

* $\beta$: Weighting coefficient for the social factor.