  variable "wlambda_name" {
   type        = string
   description = "write lambda name"
 }

  variable "rlambda_name" {
   type        = string
   description = "read lambda name"
 }

  variable "wlambda_invoke_arn" {
   type        = string
   description = "write invoke arn"
 }
  variable "rlambda_invoke_arn" {
   type        = string
   description = "read invoke arn"
 }