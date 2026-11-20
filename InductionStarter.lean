import Mathlib.Tactic.Use
import Mathlib.Tactic.Ring

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

-- Prepared algebra. This is the equality named step n below.
private theorem step (n : Nat) :
    (8 : Int) ^ (n + 1) - 1 = 8 * ((8 : Int) ^ n - 1) + 7 := by
  rw [pow_succ]
  ring

theorem seven_dvd_eight_pow_sub_one :
    ∀ n : Nat, ∃ k : Int, (8 : Int) ^ n - 1 = 7 * k := by
  intro n
  induction n with
  | zero =>
      use 0
      ring
  | succ n ih =>
      -- This prepared line gives us an integer k and an equality hk.
      obtain ⟨k, hk⟩ := ih
      -- Replace (by sorry : Int) with your expression in k.
      use (by sorry : Int)
      rw [step n]
      -- Replace this sorry with two lines. Substitute using hk, then check the algebra.
      sorry
