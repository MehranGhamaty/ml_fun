(* Euclid's *)
fun gcd (a, b) = 
  let
    fun reduce (a, 0) = a
    |   reduce (0, b) = b
    |   reduce (a, b) = if a = b then a else reduce (a-b, b)
  in
    if a > b then reduce(a, b) else reduce (b, a)
  end;

gcd(30,60);
gcd(60,30);

fun lcd (0, b) = b
|   lcd (a, 0) = a
|   lcd (a, b) = if a > b then lcd (a-b, b) else lcd (a, b-a);

lcd(2, 6);
