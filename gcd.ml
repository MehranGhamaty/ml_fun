
fun gcd (0, b) = b
|   gcd (a, 0) = a
|   gcd (a, b) = if a > b then gcd (a-b, b) else gcd (a, b-a);

gcd(2, 6);
