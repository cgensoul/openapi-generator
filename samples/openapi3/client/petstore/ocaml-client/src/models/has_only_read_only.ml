(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 *)

type t = {
    bar: string option;
    foo: string option;
} [@@deriving yojson, show ];;

let create () : t = {
    bar = None;
    foo = None;
}

