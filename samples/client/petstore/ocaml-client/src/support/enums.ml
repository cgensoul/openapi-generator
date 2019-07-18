

(**  *)
type status =
| Placed [@printer fun fmt _ -> Format.pp_print_string fmt "placed"] [@name "placed"]
| Approved [@printer fun fmt _ -> Format.pp_print_string fmt "approved"] [@name "approved"]
| Delivered [@printer fun fmt _ -> Format.pp_print_string fmt "delivered"] [@name "delivered"]
[@@deriving yojson, show { with_path = false }];;

let status_of_yojson json = status_of_yojson (`List [json])
let status_to_yojson e =
    match status_to_yojson e with
    | `List [json] -> json
    | json -> json



(**  *)
type pet_status =
| Available [@printer fun fmt _ -> Format.pp_print_string fmt "available"] [@name "available"]
| Pending [@printer fun fmt _ -> Format.pp_print_string fmt "pending"] [@name "pending"]
| Sold [@printer fun fmt _ -> Format.pp_print_string fmt "sold"] [@name "sold"]
[@@deriving yojson, show { with_path = false }];;

let pet_status_of_yojson json = pet_status_of_yojson (`List [json])
let pet_status_to_yojson e =
    match pet_status_to_yojson e with
    | `List [json] -> json
    | json -> json

