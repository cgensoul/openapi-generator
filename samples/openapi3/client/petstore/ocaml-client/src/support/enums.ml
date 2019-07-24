(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 *)

type outerenuminteger = [
| `_0 [@printer fun fmt _ -> Format.pp_print_string fmt "0"] [@name "0"]
| `_1 [@printer fun fmt _ -> Format.pp_print_string fmt "1"] [@name "1"]
| `_2 [@printer fun fmt _ -> Format.pp_print_string fmt "2"] [@name "2"]
] [@@deriving yojson, show { with_path = false }];;

let outerenuminteger_of_yojson json = outerenuminteger_of_yojson (`List [json])
let outerenuminteger_to_yojson e =
    match outerenuminteger_to_yojson e with
    | `List [json] -> json
    | json -> json

type status = [
| `Placed [@printer fun fmt _ -> Format.pp_print_string fmt "placed"] [@name "placed"]
| `Approved [@printer fun fmt _ -> Format.pp_print_string fmt "approved"] [@name "approved"]
| `Delivered [@printer fun fmt _ -> Format.pp_print_string fmt "delivered"] [@name "delivered"]
] [@@deriving yojson, show { with_path = false }];;

let status_of_yojson json = status_of_yojson (`List [json])
let status_to_yojson e =
    match status_to_yojson e with
    | `List [json] -> json
    | json -> json

type inline_object_2_enum_form_string_array = [
| `Greater_Than [@printer fun fmt _ -> Format.pp_print_string fmt ">"] [@name ">"]
| `Dollar [@printer fun fmt _ -> Format.pp_print_string fmt "$"] [@name "$"]
] [@@deriving yojson, show { with_path = false }];;

let inline_object_2_enum_form_string_array_of_yojson json = inline_object_2_enum_form_string_array_of_yojson (`List [json])
let inline_object_2_enum_form_string_array_to_yojson e =
    match inline_object_2_enum_form_string_array_to_yojson e with
    | `List [json] -> json
    | json -> json

type enum_query_integer = [
| `_1 [@printer fun fmt _ -> Format.pp_print_string fmt "1"] [@name "1"]
| `Minus2 [@printer fun fmt _ -> Format.pp_print_string fmt "-2"] [@name "-2"]
] [@@deriving yojson, show { with_path = false }];;

let enum_query_integer_of_yojson json = enum_query_integer_of_yojson (`List [json])
let enum_query_integer_to_yojson e =
    match enum_query_integer_to_yojson e with
    | `List [json] -> json
    | json -> json

type enum_number = [
| `_1Period1 [@printer fun fmt _ -> Format.pp_print_string fmt "1.1"] [@name "1.1"]
| `Minus1Period2 [@printer fun fmt _ -> Format.pp_print_string fmt "-1.2"] [@name "-1.2"]
] [@@deriving yojson, show { with_path = false }];;

let enum_number_of_yojson json = enum_number_of_yojson (`List [json])
let enum_number_to_yojson e =
    match enum_number_to_yojson e with
    | `List [json] -> json
    | json -> json

type maptest_map_of_enum_string = [
| `UPPER [@printer fun fmt _ -> Format.pp_print_string fmt "UPPER"] [@name "UPPER"]
| `Lower [@printer fun fmt _ -> Format.pp_print_string fmt "lower"] [@name "lower"]
] [@@deriving yojson, show { with_path = false }];;

let maptest_map_of_enum_string_of_yojson json = maptest_map_of_enum_string_of_yojson (`List [json])
let maptest_map_of_enum_string_to_yojson e =
    match maptest_map_of_enum_string_to_yojson e with
    | `List [json] -> json
    | json -> json

type enum_integer = [
| `_1 [@printer fun fmt _ -> Format.pp_print_string fmt "1"] [@name "1"]
| `Minus1 [@printer fun fmt _ -> Format.pp_print_string fmt "-1"] [@name "-1"]
] [@@deriving yojson, show { with_path = false }];;

let enum_integer_of_yojson json = enum_integer_of_yojson (`List [json])
let enum_integer_to_yojson e =
    match enum_integer_to_yojson e with
    | `List [json] -> json
    | json -> json

type just_symbol = [
| `Greater_ThanEqual [@printer fun fmt _ -> Format.pp_print_string fmt ">="] [@name ">="]
| `Dollar [@printer fun fmt _ -> Format.pp_print_string fmt "$"] [@name "$"]
] [@@deriving yojson, show { with_path = false }];;

let just_symbol_of_yojson json = just_symbol_of_yojson (`List [json])
let just_symbol_to_yojson e =
    match just_symbol_to_yojson e with
    | `List [json] -> json
    | json -> json

type enumarrays_array_enum = [
| `Fish [@printer fun fmt _ -> Format.pp_print_string fmt "fish"] [@name "fish"]
| `Crab [@printer fun fmt _ -> Format.pp_print_string fmt "crab"] [@name "crab"]
] [@@deriving yojson, show { with_path = false }];;

let enumarrays_array_enum_of_yojson json = enumarrays_array_enum_of_yojson (`List [json])
let enumarrays_array_enum_to_yojson e =
    match enumarrays_array_enum_to_yojson e with
    | `List [json] -> json
    | json -> json

type pet_status = [
| `Available [@printer fun fmt _ -> Format.pp_print_string fmt "available"] [@name "available"]
| `Pending [@printer fun fmt _ -> Format.pp_print_string fmt "pending"] [@name "pending"]
| `Sold [@printer fun fmt _ -> Format.pp_print_string fmt "sold"] [@name "sold"]
] [@@deriving yojson, show { with_path = false }];;

let pet_status_of_yojson json = pet_status_of_yojson (`List [json])
let pet_status_to_yojson e =
    match pet_status_to_yojson e with
    | `List [json] -> json
    | json -> json

type enumclass = [
| `Underscoreabc [@printer fun fmt _ -> Format.pp_print_string fmt "_abc"] [@name "_abc"]
| `Minusefg [@printer fun fmt _ -> Format.pp_print_string fmt "-efg"] [@name "-efg"]
| `Left_ParenthesisxyzRight_Parenthesis [@printer fun fmt _ -> Format.pp_print_string fmt "(xyz)"] [@name "(xyz)"]
] [@@deriving yojson, show { with_path = false }];;

let enumclass_of_yojson json = enumclass_of_yojson (`List [json])
let enumclass_to_yojson e =
    match enumclass_to_yojson e with
    | `List [json] -> json
    | json -> json

type enum_string = [
| `UPPER [@printer fun fmt _ -> Format.pp_print_string fmt "UPPER"] [@name "UPPER"]
| `Lower [@printer fun fmt _ -> Format.pp_print_string fmt "lower"] [@name "lower"]
] [@@deriving yojson, show { with_path = false }];;

let enum_string_of_yojson json = enum_string_of_yojson (`List [json])
let enum_string_to_yojson e =
    match enum_string_to_yojson e with
    | `List [json] -> json
    | json -> json
