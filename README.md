# tf-rum-script

### Usage

1. Ensure you have ```jq``` installed on your system. You can install it with:
   ```
   sudo apt install jq  # Debian/Ubuntu
   brew install jq      # macOS
   ```
2. Download state file:
   ```
   terraform state pull > state.json
   ```
3. Run the script:
   ```
   ./count.sh < state.json
   ```
   
### Script Breakdown
- Exracts all managed resources (```"mode": "managed"```)
- Filters out ```terraform_data``` and ```null_resources``` types.
- Flattens instances of resources
- Outputs the total count of valid resources

### Example Output
```42```

Output will be the number of managed resources. 
