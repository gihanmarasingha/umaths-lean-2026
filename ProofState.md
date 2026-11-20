# Work through the Lean activity on screen

Read the worked line, then say which line you would enter at `sorry`. In pairs, swap who
suggests the line and who explains why it works.

## 1. Choose a witness

For `∃ m : Int, 15 = 5 * m`, enter `use 3`. This picks 3 for the unknown integer
and leaves the goal `15 = 5 * 3`. On the next line, `ring` checks that arithmetic.

```text
⊢ ∃ k : Int, 14 = 7 * k
```

Which integer would you give to `use` before checking with `ring`?

## 2. Rewrite using an equality

For a goal `2 * x = 2 * y` with `h : x = y`, enter `rw [h]`. This replaces
`x` with `y` in the goal.

```text
a k : Int
hk : a = 7 * k
⊢ 8 * a + 7 = 8 * (7 * k) + 7
```

Which equality should go inside `rw [ ]`?

## 3. Check a factorisation

The tactic `ring` checks an identity by putting both sides in the same polynomial form.
For instance, it proves `x + 2 + 3 = x + 5`.

```text
k : Int
⊢ 3 * (5 * k) + 5 = 5 * (3 * k + 1)
```

What does the (+5) on the left contribute on the right? Which tactic checks the identity?

## 4. Complete the induction step

For every natural number n, show that 8ⁿ − 1 = 7k for some integer k. The base case is
prepared with `use 0` and `ring`. The starter unpacks the induction hypothesis in the
successor case.

```text
n : ℕ
k : ℤ
hk : 8 ^ n - 1 = 7 * k
⊢ ∃ witness : ℤ, 8 ^ (n + 1) - 1 = 7 * witness
```

The prepared line `rw [step n]` rewrites the left side as 8(8ⁿ − 1) + 7.

1. Work out the new witness in terms of k and say what to put after `use`.
2. After the prepared rewrite, say which hypothesis to put inside `rw [ ]`.
3. Name the tactic that checks the final algebra and explain where the extra 1 comes from.

[Hint](Hint.md) · [Solution](InductionSolution.lean)
