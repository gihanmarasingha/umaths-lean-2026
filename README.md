# U-Maths Lean activity

Practise three tactics on small goals, then use them to show that 7 divides 8ⁿ − 1 for
every natural number n.

## Start here

1. **[Open the starter in Lean Live Web][starter].** No account is needed. If the link
   does not prefill the editor, select **Stable Release** with Lean 4.36.0 and Mathlib in
   [Lean Live Web](https://live.lean-lang.org/) and paste in
   [InductionStarter.lean](InductionStarter.lean).
2. **[Open in GitHub Codespaces][codespaces].** Sign in to GitHub and create a codespace.
   Wait for setup, then open `InductionStarter.lean` with the Lean 4 extension.
3. **[Work from the on-screen activity](ProofState.md)** if you cannot access an editor.

## Work in pairs

Put the cursor just before a `sorry` to see the goal it stands in for. The **InfoView** is
the panel next to the editor. In VS Code, you can open it with **Lean 4: Toggle InfoView**.
Lean may display `Nat` as ℕ and `Int` as ℤ. After an edit, check for remaining goals or
errors before moving on.

1. **Witness.** Follow the worked `use 3` example. Replace the first `sorry` with `use`
   and the integer that makes 14 = 7 × k true. On the next line, enter `ring` to check
   the arithmetic, as in the worked example.
2. **Substitution.** Follow `rw [h]`. Find the equality that replaces `a` and use its name
   inside the square brackets. Swap who types.
3. **Algebra.** Explain the factorisation and replace the next `sorry` with `ring` to check it.
4. **Induction.** The starter has set up the two cases, handled the base case and unpacked
   the hypothesis. Substitute your expression for `(by sorry : Int)` after `use`. Keep
   `rw [step n]`, which exposes the expression you saw in step 2. Replace the last `sorry`
   with your rewrite and `ring` on separate lines. Explain where the extra 1 comes from.

The starter has an intentional `sorry` warning for each unfinished exercise. A completed
file has no warnings or errors. To reset, reopen the original browser link or restore the
starter from this repository.

[Induction hint](Hint.md) · [Solution source](InductionSolution.lean) ·
[Checked solution in Lean Live Web][solution] ·
[Natural Number Game](https://adam.math.hhu.de/#/g/leanprover-community/NNG4)

## Local verification

Open this folder in VS Code with the Lean 4 extension and elan. Run these commands once
with internet access to provision Lean 4.36.0 and the two Mathlib modules and their
dependencies. After that, the activity works offline.

```sh
lake exe cache get Mathlib.Tactic.Use Mathlib.Tactic.Ring
lake build
lake env lean InductionStarter.lean  # Expected: four declarations use sorry
lake env lean Warmup.lean
```

[codespaces]: https://codespaces.new/gihanmarasingha/umaths-lean-2026/tree/codex/lean-scaffolding
[starter]: https://live.lean-lang.org/#project=mathlib-stable&url=https%3A%2F%2Fgithub.com%2Fgihanmarasingha%2Fumaths-lean-2026%2Fblob%2Fmain%2FInductionStarter.lean
[solution]: https://live.lean-lang.org/#project=mathlib-stable&codez=JYWwDg9gTgLgBAWQIYwBYBtgCMB0AVJAYxmEJwFUBnAUwChRJZEUNt8iSyAlYAOwHNatAPQBaAIRwAxHACMOOAGFUECDThI4Ad2Axe1SpW27UcAAYBXGmbijhQ0aLgAZakl5wobgCZHAwEQaRoA4BGjUXnDUAB7AlDCUgLgEOLRRSODo1HAAXHABIFlwAJK8MAA0cgCscAC8cJUAVHB5mTVYAJ60cHBWGQDMHZ58grSOcADqqKSmfDDU%2FGGNSADWBnIALNVwAOxwDYtwMFAW1AD8yZGpYOn5AXvZRaVrG9u7WS3tnd1wAEz9UINCYkkMi%2BCgAyhYsLFdBYZsY0OYoFobHYHE4AIJwABm0C0SCg3k81C0f1hXkuRBWoTg6Ux8EowG8GQgmLgph08N0Rj%2B%2FFQdIZ1CSKTSGQAFJE4K18vcAJRwEWmbLimqtWXZL47OBK74ayXNOBtX5aOAAbVQAF1UWMJoRTNQAI4WJCYGCS9JxCUQCyE8mEDKaPj0xlwAAcGs0AGotqchZdRZpboVirL5QnNDVnnBFqqQ2G4JHtjVQw0RRms3mtq99e9PEbTYsLSIJNI4D0FMpqIQ9lSnXMsFBNOzTGY%2FgJkfZhk4R%2Fw4DaO4sjGgUPqIPDAys8RkqZRUhlIOhWrwICBgE7BedhXLxXck%2FlxZH1ZGehs77VKwbOlPLQBRSLkvj7VAMkxDhoBiFBgAgXgylCDxZ07OBdAQjxXHcM8LiuEUExlfIn2LepM1lSNKhqfCRVwzNy1kVU3l%2Bf5GyBOBVgUAAFGEAM3VAvE3DhSAXCA5lCKBbHHEZmLJDcCR7ag%2ByQBQ8AmIwYnYiIHSdXRJV4HcCViagwDgDwsGodAIC0JIwD%2BAA3FAOOoaBqDyHS9JFDxsgAORQVV%2Bk6EVQ2vGBZQAPTlDxIyo2w5A2Is5R8qUbyCjwnDC%2FM32rRETUgLQAH1KAsQhCAtD86NCOyHOoCzqF4TLvAs7xMuoYAeRgTKMuyiFMsgjJMi8uBAAAifT8nch4blih4Yr8wL%2BsSp4NVuGjOmmKAIH0%2Fo%2BG8XKSEg%2FrB36AAfOAAC8wiWqoAD5uo%2BdQAAZzoGARdrgHK8v64BTFOm6RnkpTzN0iTqT4DJ%2BGAcqjCsDQPGmWZ5j2dxJI8e1HWdSVUEWJJOjRuAICwGAkH%2FQAL8kWMpkcAS%2FJKxem7PiivZQputLjUc%2FSCvRmsTWRxn0c%2FIA
