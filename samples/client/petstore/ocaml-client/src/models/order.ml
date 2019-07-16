(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 * Schema Order.t : An order for a pets from the pet store
 *)



(** Order Status *)
type status =
| Placed
| Approved
| Delivered
[@@deriving yojson];;

type t = {
    id: Int64.t option;
    pet_id: Int64.t option;
    quantity: int option;
    ship_date: string option;
    (* Order Status *)
    (*status: [`Placed | `Approved | `Delivered] option;*)
    status: status option;
    complete: bool option;
} [@@deriving yojson];;

(** An order for a pets from the pet store *)
let create () : t = {
    id = None;
    pet_id = None;
    quantity = None;
    ship_date = None;
    status = None;
    complete = None;
}

