(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 * Schema Tag.t : A tag for a pet
 *)

type t = {
    id: int64 option;
    name: string option;
} [@@deriving yojson, show ];;

(** A tag for a pet *)
let create () : t = {
    id = None;
    name = None;
}

