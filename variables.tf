variable "artifacts_generic_artifacts" {
  description = <<EOT
Map of artifacts_generic_artifacts, attributes below
Required:
    - artifact_id
Optional:
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    artifact_id   = string
    defined_tags  = optional(map(string))
    freeform_tags = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

