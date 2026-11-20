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
      -- 1. Explain what this line extracts from the induction hypothesis.
      obtain ⟨k, hk⟩ := ih
      -- 2. Replace the first sorry with an integer expression in k.
      refine ⟨(by sorry : Int), ?_⟩
      calc
        (8 : Int) ^ (n + 1) - 1 = 8 * ((8 : Int) ^ n - 1) + 7 := step n
        -- 3. Replace this sorry with a rewrite using a hypothesis.
        _ = 8 * (7 * k) + 7 := by sorry
        _ = _ := by
          -- After choosing the witness, delete the fallback `| sorry`.
          first | omega | sorry
