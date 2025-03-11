#!/bin/bash
jq '[
  .resources[] |
  select(.mode == "managed") |
  select(.type == "terraform_data" or .type == "null_resource" | not) |
  .instances |
  flatten[]
] | length'