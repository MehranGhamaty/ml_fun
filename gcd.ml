(* Euclid's *)
fun gcd (a, b) = 
  let
    fun reduce (0, b) = b
    |   reduce (a, b) = reduce (b mod a, a)
  in
    if a < b then reduce(a, b) else reduce (b, a)
  end;

gcd(30,60);
gcd(60,30);
gcd(160,12);

fun lcd (0, b) = b
|   lcd (a, 0) = a
|   lcd (a, b) = if a > b then lcd (a-b, b) else lcd (a, b-a);

lcd(4, 6);
