(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 * Schema Api_response.t : Describes the result of uploading an image resource
 *)

type t = {
    code: int32 option;
    _type: string option;
    message: string option;
} [@@deriving yojson, show ];;

(** Describes the result of uploading an image resource *)
let create () : t = {
    code = None;
    _type = None;
    message = None;
}

