import Mathlib.Tactic.Use
import Mathlib.Tactic.Ring

set_option linter.unusedTactic false

/-! # 1. Choose a witness with `use` -/

-- Lean reads ∃ as “there exists”.
example : ∃ m : Int, 15 = 5 * m := by
  use 3
  ring

-- Replace sorry with two lines. Choose the integer with use, then check with ring.
example : ∃ k : Int, 14 = 7 * k := by
  sorry

/-! # 2. Substitute with `rw` -/

-- A forward rewrite replaces the left side of h with its right side.
example (x y : Int) (h : x = y) : 2 * x = 2 * y := by
  rw [h]

-- Which equality lets you replace a inside 8 * a + 7?
example (a k : Int) (hk : a = 7 * k) : 8 * a + 7 = 8 * (7 * k) + 7 := by
  sorry

/-! # 3. Check the algebra with `ring` -/

-- ring checks that both sides are the same polynomial.
example (x : Int) : x + 2 + 3 = x + 5 := by
  ring

-- Explain the factorisation, then check it in Lean.
example (k : Int) : 3 * (5 * k) + 5 = 5 * (3 * k + 1) := by
  sorry

/-! # 4. Put the three tactics together -/

theorem seven_dvd_eight_pow_sub_one (n : ℕ) :
  ∃ k : Int, (8 : Int) ^ n - 1 = 7 * k := by
  induction n with
  | zero =>
      use 0
      ring
  | succ n ih =>
      -- This prepared line gives us an integer m and an equality hm.
      obtain ⟨m, hm⟩ := ih
      -- In the line below, replace the right side of the equation with an expression that can be
      -- written in terms of the left hand side of the equation in the induction hypothesis `hm`
      -- Use an appropriate tactic to replace the final `sorry`.
      have h : (8 ^ (n + 1) - 1 : ℤ) = sorry := by sorry
      -- Complete the proof using `rw [h, hm]`. Then choose an appropriate value of `k` via the
      -- `use` tactic. You will be left with an algebraic problem. Choose an appropriate tactic
      -- to perform the algebra.
      sorry
  done

/-! # 5. Another induction example

Suppose we have a sequence `u(0)=1` and `u(n+1)=3u(n)+4`.


Pupil tasks:

* Generate the values `u(n)` for `n = 0, ..., 4`.
* Try to guess a formula for `u(n)` in terms of `n`.
* Having guessed (or given help to guess) a formula `u(n) = 3^(n+1) - 2`, the next task is to try
  a "by hand" inductive proof.
* Then produce a Lean proof.
-/

-- The following is the Lean definition of the sequence.
def u (n : ℕ) : Nat :=
  match n with
  | 0 => 1
  | n + 1 => 3 * (u n) + 4

-- Here we compute the values of `u(n)` for `0 ≤ n < 5`.
#eval List.map (λ x => u x) (List.range 5)

-- Now we prove our formula for `u(n)`.
theorem u_formula (n : ℕ) :
   u n = (3 ^ (n + 1) - 2 : Int) := by
  induction n with
  | zero =>
      unfold u
      -- replace the `sorry` below with one tactic to prove the result.
      sorry
  | succ n ih =>
      unfold u
      -- The technical line below is needed so that Lean can recognise `u(n)` as an integer before
      -- applying the induction hypothesis.
      change 3 * (u n : ℤ) + 4 = 3 ^ (n + 1 + 1) - 2
      -- You will need two lines to finish the proof.
      sorry
  done
