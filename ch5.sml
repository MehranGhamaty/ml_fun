(* exercise 1 *)
fun cube x = x*x*x;
val fivecubed = cube 5;

(* exercise 2 *)
fun cubr x:real = x*x*x;
val realcubed = cubr 5.0;

(* exercise 3 *)
fun fourth L = hd(tl(tl(tl(L))));
val elementfour = fourth [1,2,3,4,5,6,7];

(* exercise 4 *)
fun min (x1:int,x2:int):int = if x1 < x2 then x1 else x2;
fun min3 (x1:int,x2:int,x3:int):int = if min(x1,x2) < min(x2,x3) then min(x1,x2) else min(x2,x3);
min3(5,3,1);
min3(1,3,5);
min3(6,2,4);

(* exercise 5 *)
fun red3 (a,b,c) = (a, c);
red3(1,2,3); 

(* exercise 6 *)
fun thirds (s:string):char = hd(tl(tl(tl(explode(s)))));
thirds("1234567");

(* exercise 7 *)
fun cycle1 L = tl(L) @ [hd(L)];
cycle1 [1,2,3,4,5,6,7,8];

(* exercise 8 *)
fun sort (x:real, L:real list):real list = 
  if null L then [x] 
  else if x < hd(L) then [x] @ sort(hd(L), tl(L)) else [hd(L)] @ sort(x, tl(L):real list);
fun sort3 (x:real, y:real, z:real):real list =
  sort ( x, [y,z]);
sort3(3.5,2.1,2.5);
sort3(1.1,2.78,2.5);
sort3(3.5,2.1,5.2);

(* exercise 9 *) 
fun del3 (L) = 
  [hd(L)] @ [hd(tl(L))]  @ tl(tl(tl(L)));
del3 [1,2,3,4,5,6,7];

(* exercise 10 *)
fun sqsum (i:int):int = 
  if i = 0 then 0 
  else sqsum(i-1) + i*i;
sqsum 1;
sqsum 3;
sqsum 5;

(* exercise 11 *)
fun cycle (0, l) = l
|   cycle (n, l) = cycle(n-1, cycle1 l);
cycle(2, [1,2,3,4,5]);

(* exercise 12 *)
(* Shelton says this can be faster*)
fun pow (n, 1) = n
|   pow (n, p) = n * pow(n, p-1);
pow(2, 4);

(* exercise 13 *)
fun maxhelper ([], max) = max
|   maxhelper (x::xs, max) = 
  if x > max then 
    maxhelper(xs, x) 
  else 
    maxhelper(xs, max);

fun max (x::xs) = maxhelper(xs, x);
max [1,2,3,5,2];

(* exercise 14 *)
fun primehelper (n,1) = true
|   primehelper (n,d) = if n mod d = 0 then false else primehelper(n,d-1);
fun isPrime x = primehelper(x,x-1);
isPrime 7;
isPrime 4;

(* exercise 15 *)
fun isfive x = if x = 5 then true else false;
fun select ([], check) = []
|   select (x::xs, check) = 
  if check x then [x] @ select(xs, check) else select(xs, check);
select([1,2,3,5,6,1,5], isfive);
select([1,2,3,4,5,6,7,8,9,10], isPrime);

