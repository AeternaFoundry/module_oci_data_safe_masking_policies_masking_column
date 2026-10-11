output "data_safe_masking_policies_masking_columns_id" {
  description = "Map of id values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_masking_policies_masking_columns_child_columns" {
  description = "Map of child_columns values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no child_columns are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.child_columns if v.child_columns != null && length(v.child_columns) > 0 }
}
output "data_safe_masking_policies_masking_columns_column_name" {
  description = "Map of column_name values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no column_name are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.column_name if v.column_name != null && length(v.column_name) > 0 }
}
output "data_safe_masking_policies_masking_columns_data_type" {
  description = "Map of data_type values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no data_type are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.data_type if v.data_type != null && length(v.data_type) > 0 }
}
output "data_safe_masking_policies_masking_columns_is_masking_enabled" {
  description = "Map of is_masking_enabled values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no is_masking_enabled are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.is_masking_enabled if v.is_masking_enabled != null }
}
output "data_safe_masking_policies_masking_columns_key" {
  description = "Map of key values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no key are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.key if v.key != null && length(v.key) > 0 }
}
output "data_safe_masking_policies_masking_columns_lifecycle_details" {
  description = "Map of lifecycle_details values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "data_safe_masking_policies_masking_columns_masking_column_group" {
  description = "Map of masking_column_group values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no masking_column_group are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.masking_column_group if v.masking_column_group != null && length(v.masking_column_group) > 0 }
}
output "data_safe_masking_policies_masking_columns_masking_formats" {
  description = "Map of masking_formats values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no masking_formats are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.masking_formats if v.masking_formats != null && length(v.masking_formats) > 0 }
}
output "data_safe_masking_policies_masking_columns_masking_policy_id" {
  description = "Map of masking_policy_id values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no masking_policy_id are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.masking_policy_id if v.masking_policy_id != null && length(v.masking_policy_id) > 0 }
}
output "data_safe_masking_policies_masking_columns_object" {
  description = "Map of object values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no object are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.object if v.object != null && length(v.object) > 0 }
}
output "data_safe_masking_policies_masking_columns_object_type" {
  description = "Map of object_type values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no object_type are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "data_safe_masking_policies_masking_columns_schema_name" {
  description = "Map of schema_name values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no schema_name are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "data_safe_masking_policies_masking_columns_sensitive_type_id" {
  description = "Map of sensitive_type_id values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no sensitive_type_id are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.sensitive_type_id if v.sensitive_type_id != null && length(v.sensitive_type_id) > 0 }
}
output "data_safe_masking_policies_masking_columns_state" {
  description = "Map of state values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no state are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.state if v.state != null && length(v.state) > 0 }
}
output "data_safe_masking_policies_masking_columns_time_created" {
  description = "Map of time_created values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no time_created are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "data_safe_masking_policies_masking_columns_time_updated" {
  description = "Map of time_updated values across all data_safe_masking_policies_masking_columns, keyed the same as var.data_safe_masking_policies_masking_columns except keys with no time_updated are omitted"
  value       = { for k, v in oci_data_safe_masking_policies_masking_column.data_safe_masking_policies_masking_columns : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

