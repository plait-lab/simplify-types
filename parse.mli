open Lang

type problem =
  | Expecting of string

type context =
  string

type 'a parser =
  (context, problem, 'a) Bark.parser

val refine : refine parser

val parse : 'a parser -> string -> ('a, string) result
