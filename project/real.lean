/-
Copyright (c) 2024 Jiale Miao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author : Jiale Miao
-/
import Mathlib.Tactic -- import all the tactics


/-!

# Continuity of Real Numbers

In this file, we define the continuity of functions in real numbers and
discuss the relative properties of continuity.

-/

open Function
namespace Myproject -- This is to ensure no overlap between our project and the mathlib.

-- Firstly, let's make the definition of continuity of a function at point ∈ ℝ.

/-
If f is a function defined in ℝ, and a is a point in reals,
then 'ContinuousPoint f a' is a proposition meaning f is continuous at a ∈ ℝ.
-/
def ContinuousPoint (f : ℝ → ℝ) (a : ℝ) : Prop :=
  ∀ ε > 0, ∃ δ > 0, ∀ x, |x - a| < δ → |f x - f a| < ε

-- Then, we can define the continuity of a function.

def Continuous (f : ℝ → ℝ) : Prop :=
  ∀ a : ℝ, ContinuousPoint f a

theorem Continuous_def (f : ℝ → ℝ) :
    Continuous f ↔ ∀ a : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x, |x - a| < δ → |f x - f a| < ε := by
  rfl


/-

## The Basic Properties

We analysis some basic properties of continuous functions below.

-/



lemma Continuous_add {f g : ℝ → ℝ} (h₁ : Continuous f) (h₂ : Continuous g) :
    Continuous (f + g) :=
  by
  sorry
  done

lemma Continuous_sub {f g : ℝ → ℝ} (h₁ : Continuous f) (h₂ : Continuous g) :
    Continuous (f - g) :=
  by
  sorry
  done

lemma Continuous_mul {f g : ℝ → ℝ} (h₁ : Continuous f) (h₂ : Continuous g) :
    Continuous (f * g) :=
  by
  sorry
  done

lemma Continuous_comp {f g : ℝ → ℝ} (h₁ : Continuous f) (h₂ : Continuous g) :
    Continuous (f ∘ g) :=
  by
  sorry
  done

/-

## Examples

Here are some examples of continuous functions which can be proved using induction.

-/

example (a b : ℝ) : Continuous (f := fun (x : ℝ) ↦ a*x + b) := by
  sorry
  done

example (n : ℕ) : Continuous (f := fun (x : ℝ) ↦ x^n) := by
  sorry
  done

/-

## The Intermediate Value Theorem

Now, we want to prove intermediate value theorem.

-/

theorem intermediate_value_theorem (f : ℝ → ℝ) (a b c : ℝ) (h₁ : a ≤ b) (h₂ : c ≤ f b ∧ f b ≤ a) :
    ∃ x, a ≤ x ∧ x ≤ b → f x = c := by
  sorry
  done

-- 1 hour

end Myproject
