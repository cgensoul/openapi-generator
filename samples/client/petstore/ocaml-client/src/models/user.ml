(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 * Schema User.t : A User who is purchasing from the pet store
 *)




type t = {
    id: Int64.t option;
    username: string option;
    first_name: string option;
    last_name: string option;
    email: string option;
    password: string option;
    phone: string option;
    (* User Status *)
    user_status: int option;
}

(** A User who is purchasing from the pet store *)
let create () : t = {
    id = None;
    username = None;
    first_name = None;
    last_name = None;
    email = None;
    password = None;
    phone = None;
    user_status = None;
}

