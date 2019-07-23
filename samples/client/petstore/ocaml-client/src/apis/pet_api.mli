(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 *)

val add_pet : Pet.t -> unit Lwt.t
val delete_pet : int64 -> string -> unit Lwt.t
val find_pets_by_status : Enums.pet_status list -> Pet.t list Lwt.t
val find_pets_by_tags : string list -> Pet.t list Lwt.t
val get_pet_by_id : int64 -> Pet.t Lwt.t
val update_pet : Pet.t -> unit Lwt.t
val update_pet_with_form : int64 -> string -> string -> unit Lwt.t
val upload_file : int64 -> string -> string -> Api_response.t Lwt.t
