#check String.length
def imp : Bool → Bool → Bool
| true, true => true
| true, false => false
| false, true => true
| false, false => true
#eval imp true true
#eval imp true false
#eval imp false true
#eval imp false false

def isEven : Nat → Bool
| n => if (n%2 = 0) then true else false

#check (isEven)           -- Nat → Bool
#eval isEven 2            -- expect true
#eval isEven 3            -- expect false


def glue_funs' (g : Nat → Bool) (f : String → Nat) (s : String) : Bool :=
  g (f s)
#eval glue_funs' isEven String.length "Hello"
#eval glue_funs' isEven String.length "Hello!"

def glue_funs {α β γ : Type} (g : β → γ) (f : α → β) (a : α) : γ :=
  g (f a)

#eval glue_funs isEven String.length "Hello"
#eval glue_funs isEven String.length "Hello!"

def double : Nat → Nat
| n => 2 * n
def square : Nat → Nat
| n => n * n

#eval glue_funs double square 5
#eval glue_funs square double 5
#eval glue_funs double square 7
#eval glue_funs square double 7

def bandand : Bool → Bool → Bool
| true, true => true
| _, _  => false

#eval bandand true true
