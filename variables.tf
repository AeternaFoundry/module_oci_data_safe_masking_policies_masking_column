variable "data_safe_masking_policies_masking_columns" {
  description = <<EOT
Map of data_safe_masking_policies_masking_columns, attributes below
Required:
    - column_name
    - masking_policy_id
    - object
    - schema_name
Optional:
    - is_masking_enabled
    - masking_column_group
    - object_type
    - sensitive_type_id
    - masking_formats (block):
        - condition (optional)
        - description (optional)
        - format_entries (required, block):
            - column_name (optional)
            - description (optional)
            - end_date (optional)
            - end_length (optional)
            - end_value (optional)
            - fixed_number (optional)
            - fixed_string (optional)
            - grouping_columns (optional)
            - length (optional)
            - library_masking_format_id (optional)
            - pattern (optional)
            - post_processing_function (optional)
            - random_list (optional)
            - regular_expression (optional)
            - replace_with (optional)
            - schema_name (optional)
            - sql_expression (optional)
            - start_date (optional)
            - start_length (optional)
            - start_position (optional)
            - start_value (optional)
            - table_name (optional)
            - type (required)
            - user_defined_function (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    column_name          = string
    masking_policy_id    = string
    object               = string
    schema_name          = string
    is_masking_enabled   = optional(bool)
    masking_column_group = optional(string)
    object_type          = optional(string)
    sensitive_type_id    = optional(string)
    masking_formats = optional(list(object({
      condition   = optional(string)
      description = optional(string)
      format_entries = list(object({
        column_name               = optional(string)
        description               = optional(string)
        end_date                  = optional(string)
        end_length                = optional(number)
        end_value                 = optional(number)
        fixed_number              = optional(number)
        fixed_string              = optional(string)
        grouping_columns          = optional(list(string))
        length                    = optional(number)
        library_masking_format_id = optional(string)
        pattern                   = optional(string)
        post_processing_function  = optional(string)
        random_list               = optional(list(string))
        regular_expression        = optional(string)
        replace_with              = optional(string)
        schema_name               = optional(string)
        sql_expression            = optional(string)
        start_date                = optional(string)
        start_length              = optional(number)
        start_position            = optional(number)
        start_value               = optional(number)
        table_name                = optional(string)
        type                      = string
        user_defined_function     = optional(string)
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_masking_policies_masking_columns : (
        v.masking_formats == null || alltrue([for item in v.masking_formats : (length(item.format_entries) >= 1)])
      )
    ])
    error_message = "Each format_entries list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_safe_masking_policies_masking_columns : (
        v.masking_formats == null || alltrue([for item in v.masking_formats : (alltrue([for item in item.format_entries : (contains([for v in ["DELETE_ROWS", "DETERMINISTIC_ENCRYPTION", "DETERMINISTIC_ENCRYPTION_DATE", "DETERMINISTIC_SUBSTITUTION", "FIXED_NUMBER", "FIXED_STRING", "LIBRARY_MASKING_FORMAT", "NULL_VALUE", "PATTERN", "POST_PROCESSING_FUNCTION", "PRESERVE_ORIGINAL_DATA", "RANDOM_DATE", "RANDOM_DECIMAL_NUMBER", "RANDOM_DIGITS", "RANDOM_LIST", "RANDOM_NUMBER", "RANDOM_STRING", "RANDOM_SUBSTITUTION", "REGULAR_EXPRESSION", "SHUFFLE", "SQL_EXPRESSION", "SUBSTRING", "TRUNCATE_TABLE", "USER_DEFINED_FUNCTION"] : lower(v)], lower(item.type)))]))])
      )
    ])
    error_message = "must be one of: \"DELETE_ROWS\", \"DETERMINISTIC_ENCRYPTION\", \"DETERMINISTIC_ENCRYPTION_DATE\", \"DETERMINISTIC_SUBSTITUTION\", \"FIXED_NUMBER\", \"FIXED_STRING\", \"LIBRARY_MASKING_FORMAT\", \"NULL_VALUE\", \"PATTERN\", \"POST_PROCESSING_FUNCTION\", \"PRESERVE_ORIGINAL_DATA\", \"RANDOM_DATE\", \"RANDOM_DECIMAL_NUMBER\", \"RANDOM_DIGITS\", \"RANDOM_LIST\", \"RANDOM_NUMBER\", \"RANDOM_STRING\", \"RANDOM_SUBSTITUTION\", \"REGULAR_EXPRESSION\", \"SHUFFLE\", \"SQL_EXPRESSION\", \"SUBSTRING\", \"TRUNCATE_TABLE\", \"USER_DEFINED_FUNCTION\""
  }
}

