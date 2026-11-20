import Lean

/-- The algebra behind the induction step. -/
private theorem step (n : Nat) :
    (8 : Int) ^ (n + 1) - 1 = 8 * ((8 : Int) ^ n - 1) + 7 := by
  rw [Int.pow_succ]
  omega

theorem seven_dvd_eight_pow_sub_one :
    ∀ n : Nat, ∃ k : Int, (8 : Int) ^ n - 1 = 7 * k := by
  intro n
  induction n with
  | zero =>
      exact ⟨0, by decide⟩
  | succ n ih =>
      obtain ⟨k, hk⟩ := ih
      refine ⟨8 * k + 1, ?_⟩
      calc
        (8 : Int) ^ (n + 1) - 1 = 8 * ((8 : Int) ^ n - 1) + 7 := step n
        _ = 8 * (7 * k) + 7 := by rw [hk]
        _ = 7 * (8 * k + 1) := by omega
