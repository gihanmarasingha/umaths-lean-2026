# U-Maths Lean activity

Can you show that 7 divides 8ⁿ − 1 for every natural number n?

## Start here

1. **[Open the starter in Lean Live Web][starter].** This route works in a browser without
   a GitHub account. If the link does not prefill the editor, open
   [Lean Live Web](https://live.lean-lang.org/) and paste all of
   [InductionStarter.lean](InductionStarter.lean).
2. **[Open in GitHub Codespaces][codespaces].** Sign in to GitHub and create a codespace.
   Wait for setup, then open `InductionStarter.lean` with the Lean 4 extension.
3. **Use the projected proof state** if you cannot access an editor. The same challenge and
   algebra are in [the on-screen activity](ProofState.md).

## Work in pairs

- Try n = 0 and n = 2. The Lean statement uses `Nat` for the exponent and `Int` for the witness.
- Move your cursor to the successor case. Lean's **InfoView** is the panel next to the editor.
  In VS Code, run **Lean 4: Toggle InfoView** in the Command Palette if you cannot see it.
- Explain what `obtain ⟨k, hk⟩ := ih` extracts. Swap who types and replace `(by sorry : Int)`
  with your proposed integer expression, keeping the brackets `⟨… , ?_⟩`.
- Use one equality from the context to replace the next `sorry` with a rewrite. Remove
  `first | … | sorry` on the final line by leaving only `omega`. A finished proof has no
  errors or `sorry` warnings. Explain where the extra 1 in the witness comes from.
- Reopen the original starter link to reset in Lean Live Web. In Codespaces, copy the original
  file contents back from the repository.

[Hint](Hint.md) · [Solution source](InductionSolution.lean) ·
[Checked solution in Lean Live Web][solution] ·
[Natural Number Game](https://adam.math.hhu.de/#/g/leanprover-community/NNG4)

## Local verification

Open this folder in VS Code with the Lean 4 extension and elan installed. Run the commands below
once with internet access to provision the pinned toolchain. With the toolchain installed, the
activity and checks work offline. The project uses Lean core alone.

```sh
lake build
lake env lean InductionStarter.lean  # Expected: declaration uses sorry
lake env lean Warmup.lean
```

[codespaces]: https://codespaces.new/gihanmarasingha/umaths-lean-2026
[starter]: https://live.lean-lang.org/#project=lean-v4.36.0&codez=JYWwDg9gTgLgBAGQKYEMB2AoDB6AtLuAFQAsk4UAbAcyQCMoU5aljg0ATOGUuN9gVwDGMYBDRwAzjCRgAdHFzYMYKMABuKaV1LQkISdLBwAFOIBccAHKaAlHDMY4TkwA57cAJJoYdgHonxAGo4AEY7AhC4AF44NwAqE2M3Cy8fOH9xCLtggHZ7GNoAT0c4KAB3OABtVNlIMoB9CSFBAF0SiBAkKhQsbiRdfQkkNSQ0evY1dnqkYCpiGHq6xv5aerEyB2c4QAAiOHMrTQAaOEBgIjgAa3dU46Sr7z89hVDouDyEy7MC4qc2GCgIPYlPhCERiR5lYDcEoAHzgAC8kP9ogA%2BEpbJAADxQwjggAvyAAMxyKcHYSEEwFJgEvyGGSZqPYDEFFo5z4ULyACiGLAFBQbDgZWImm0wAkcAobDImL%2B2JgooAZv99H1eBwQaJxMRCpA%2BhIRbJmU4ILQYLzxLjzsdiOdKfleMQDQoCAAmeQAJRkPMEZGVcuAUCkkmgUEK%2FMhjPQKukNCgcExKiQEl1YL5531WycUCQvrQZFxxmJEiDIZS92OAH56tT03BBJRBA6nLcS2l%2FKY4MEwk9IjF4olkp57ulHll269bVIZIDq05WQBmN0e7He1iiwtQYOh7jkUpIMqqLT8XVoKjbzXa0i6iRp6f1F694xvC7ZMefJghtfBhtwW8xW%2BvopfjOBAAIJytIMaCMQEAQEeJ7KhCMA5omxykhQSBaD6lAULQ2KXAABrCH6FHh17TnAvr%2BvAsIdF0jCEUWGBAA
[solution]: https://live.lean-lang.org/#project=lean-v4.36.0&codez=JYWwDg9gTgLgBAGQKYEMB2AoDB6AtLuAFQAsk4UAbAcyQCMoU5aljg0ATOGUuN9gVwDGMYBDRwAzjCRgAdHFzYMYKMABuKaV1LQkISdLBwAFOIBccAHKaAlHDMY4TkwA57cAJJoYdgHonxAGo4AEY7AhC4AF44NwAqE2M3Cy8fOH9xCLtggHZ7GNoAT0c4KAB3OABtVNlIMoB9CSFBAF0SiBAkKhQsbiRdfQkkNSQ0evY1dnqkYCpiGHq6xv5aerEyB2c4QAAiOHMrTQAaOEBgIjgAa3dU46Sr7z89hVDouDyEy7MC4qc2GCgIPYlPhCERiR5lYDcEoAHzgAC8kP9ogA%2BEpbJAADxQwjggAvyAAMxyKcHYSEEwFJgEvyGGSZqPYDEFFo5wQWgwFBsPHnY7Ec6U%2FK8YjMpxQJAAMzYZFx8QucGCIWOAH56tStk5BJRBMLnLcUvd0gE5aFws8YjLjLrPPqMk8wka8p8DDJAWrnPUXua3hdsq8BcTylVeW1XU53TEvbd3ka7Y7iR0uj0gA
