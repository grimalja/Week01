(* file: areaVolume.ml
   author: Bob Muller

   CSCI 1103 Computer Science I Honors

   This file contains functions computing area and volume.
*)
let pi = acos (-1.0)

(* area : float -> float 
 *)
let area radius = pi *. radius ** 2.0

(* volume : float -> float -> float
 *)
let volume radius height = height *. (area radius)

(* We can use let-in to introduce a variable naming the area. 
 *)
let volume radius height =
  let theArea = (area radius) 
  in
  height *. theArea;;

(* Making the types in the above explicit. In addition to 
   providing documentation for a potential user of our functions,
   OCaml can double-check for us to ensure that our function
   definition is consistent with our claims about it.
 *)
let area (radius : float) : float =
  pi *. radius ** 2.0

let volume (radius : float) (height : float) : float =
  height *. (area radius)
