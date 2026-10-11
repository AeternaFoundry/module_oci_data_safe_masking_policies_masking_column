resource "oci_data_safe_masking_policies_masking_column" "data_safe_masking_policies_masking_columns" {
  for_each = var.data_safe_masking_policies_masking_columns

  column_name          = each.value.column_name
  masking_policy_id    = each.value.masking_policy_id
  object               = each.value.object
  schema_name          = each.value.schema_name
  is_masking_enabled   = each.value.is_masking_enabled
  masking_column_group = each.value.masking_column_group
  object_type          = each.value.object_type
  sensitive_type_id    = each.value.sensitive_type_id

  dynamic "masking_formats" {
    for_each = each.value.masking_formats != null ? each.value.masking_formats : []
    content {
      condition   = masking_formats.value.condition
      description = masking_formats.value.description
      dynamic "format_entries" {
        for_each = masking_formats.value.format_entries
        content {
          column_name               = format_entries.value.column_name
          description               = format_entries.value.description
          end_date                  = format_entries.value.end_date
          end_length                = format_entries.value.end_length
          end_value                 = format_entries.value.end_value
          fixed_number              = format_entries.value.fixed_number
          fixed_string              = format_entries.value.fixed_string
          grouping_columns          = format_entries.value.grouping_columns
          length                    = format_entries.value.length
          library_masking_format_id = format_entries.value.library_masking_format_id
          pattern                   = format_entries.value.pattern
          post_processing_function  = format_entries.value.post_processing_function
          random_list               = format_entries.value.random_list
          regular_expression        = format_entries.value.regular_expression
          replace_with              = format_entries.value.replace_with
          schema_name               = format_entries.value.schema_name
          sql_expression            = format_entries.value.sql_expression
          start_date                = format_entries.value.start_date
          start_length              = format_entries.value.start_length
          start_position            = format_entries.value.start_position
          start_value               = format_entries.value.start_value
          table_name                = format_entries.value.table_name
          type                      = format_entries.value.type
          user_defined_function     = format_entries.value.user_defined_function
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

