(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 *)

val create_user : User.t -> Yojson.Safe.t Lwt.t
val create_users_with_array_input : User.t list -> Yojson.Safe.t Lwt.t
val create_users_with_list_input : User.t list -> Yojson.Safe.t Lwt.t
val delete_user : string -> Yojson.Safe.t Lwt.t
val get_user_by_name : string -> User.t Lwt.t
val login_user : string -> string -> string Lwt.t
val logout_user : unit -> Yojson.Safe.t Lwt.t
val update_user : string -> User.t -> Yojson.Safe.t Lwt.t
