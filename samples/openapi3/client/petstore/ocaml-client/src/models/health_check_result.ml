(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 * Schema Health_check_result.t : Just a string to inform instance is up and running. Make it nullable in hope to get it as pointer in generated model.
 *)

type t = {
    nullable_message: string option;
} [@@deriving yojson, show ];;

(** Just a string to inform instance is up and running. Make it nullable in hope to get it as pointer in generated model. *)
let create () : t = {
    nullable_message = None;
}

