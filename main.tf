resource "oci_artifacts_generic_artifact" "artifacts_generic_artifacts" {
  for_each = var.artifacts_generic_artifacts

  artifact_id   = each.value.artifact_id
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

