# Hint for the successor case

The line `obtain ⟨k, hk⟩ := ih` gives you an integer `k` and the equality
`hk : 8 ^ n - 1 = 7 * k`.

Start from 8(8ⁿ − 1) + 7. Replace the expression inside the parentheses using `hk`. Now factor
out a 7 from both terms. What does the last +7 contribute inside the parentheses?

In Lean, write the witness with ordinary notation such as `8 * k`, and use `rw [hk]` after
`by` to substitute the equality. The proposed witness `8 * k` is a useful wrong answer to test.

[Back to the task](README.md) · [See the completed proof](InductionSolution.lean)
