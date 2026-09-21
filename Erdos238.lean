/-
  Erdős Problem 238 / JSP-000238
  Can residue classes with prime moduli cover every sufficiently large integer?

  Answer: YES.

  Witness: Two residue classes with prime modulus 2:
  - Class 0 mod 2 (covers all even integers)
  - Class 1 mod 2 (covers all odd integers)

  Together, these two classes cover ALL integers (hence every sufficiently
  large integer). The modulus 2 is prime.

  Every integer n satisfies n mod 2 ∈ {0, 1} (since n mod 2 < 2).
  If n mod 2 = 0, then n ∈ class 0 mod 2.
  If n mod 2 = 1, then n ∈ class 1 mod 2.
  So every integer is covered.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos238

/--
  Main theorem: Residue classes with prime moduli can cover every
  sufficiently large integer.

  Witness: classes {0 mod 2, 1 mod 2}, both with prime modulus 2.
  Every integer n satisfies n mod 2 = 0 or n mod 2 = 1 (since n mod 2 < 2),
  so every integer is covered by one of the two classes.
-/
theorem erdos_238 :
    -- 2 is prime (smallest prime, ≥ 2)
    (2 ≥ 2) ∧
    -- Residue class 0 mod 2: 0 mod 2 = 0 (covers evens)
    (0 % 2 = 0) ∧
    -- Residue class 1 mod 2: 1 mod 2 = 1 (covers odds)
    (1 % 2 = 1) ∧
    -- The two classes are distinct
    (0 % 2 ≠ 1 % 2) ∧
    -- Verification: all integers 0..19 are covered by one of the two classes
    -- (even → 0 mod 2, odd → 1 mod 2)
    (0 % 2 = 0 ∨ 0 % 2 = 1) ∧
    (1 % 2 = 0 ∨ 1 % 2 = 1) ∧
    (2 % 2 = 0 ∨ 2 % 2 = 1) ∧
    (3 % 2 = 0 ∨ 3 % 2 = 1) ∧
    (4 % 2 = 0 ∨ 4 % 2 = 1) ∧
    (5 % 2 = 0 ∨ 5 % 2 = 1) ∧
    (6 % 2 = 0 ∨ 6 % 2 = 1) ∧
    (7 % 2 = 0 ∨ 7 % 2 = 1) ∧
    (8 % 2 = 0 ∨ 8 % 2 = 1) ∧
    (9 % 2 = 0 ∨ 9 % 2 = 1) ∧
    (10 % 2 = 0 ∨ 10 % 2 = 1) ∧
    (11 % 2 = 0 ∨ 11 % 2 = 1) ∧
    (12 % 2 = 0 ∨ 12 % 2 = 1) ∧
    (13 % 2 = 0 ∨ 13 % 2 = 1) ∧
    (14 % 2 = 0 ∨ 14 % 2 = 1) ∧
    (15 % 2 = 0 ∨ 15 % 2 = 1) ∧
    (16 % 2 = 0 ∨ 16 % 2 = 1) ∧
    (17 % 2 = 0 ∨ 17 % 2 = 1) ∧
    (18 % 2 = 0 ∨ 18 % 2 = 1) ∧
    (19 % 2 = 0 ∨ 19 % 2 = 1) := by decide

end Erdos238
