# Hint for the successor case

The prepared line `obtain ⟨k, hk⟩ := ih` gives you an integer `k` and
`hk : 8 ^ n - 1 = 7 * k`. The next witness can depend on this `k`.

The prepared `rw [step n]` turns the left side into 8(8ⁿ − 1) + 7. Substitute using
`rw [hk]`, then factor out a 7 from both terms. What does the last +7 contribute inside
the parentheses?

Put the resulting expression after `use`. Keep both rewrites, then finish with `ring`.
The proposed witness `8 * k` is a useful wrong answer to test.

[Back to the task](README.md) · [See the completed proof](InductionSolution.lean)
