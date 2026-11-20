# The successor case

Prove that for every natural number n there is an integer k with 8ⁿ − 1 = 7k.
The base case uses k = 0. At n = 2, which integer works?

After unpacking the induction hypothesis, read the context and target together.

```text
n : Nat
k : Int
hk : 8 ^ n - 1 = 7 * k
⊢ ∃ witness : Int, 8 ^ (n + 1) - 1 = 7 * witness
```

1. Say what `k` and `hk` tell you. Switch partners.
2. Use 8ⁿ⁺¹ − 1 = 8(8ⁿ − 1) + 7 to work out the next witness.
3. Explain why using 8k as the new witness would be short by 7.

[Hint](Hint.md) · [Solution](InductionSolution.lean)
