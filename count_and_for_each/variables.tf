variable "storage_account" {
  description = "The name of the Azure Storage Account to be created."
  type        = set(string)
  default     = ["countandforeach1", "countandforeachsa2"]
}