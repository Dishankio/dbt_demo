import subprocess

def call_api_script(context):
  # Call the external script using subprocess
  subprocess.run(["python", "api_call.py"])

# Register the pre-hook in your dbt_project.yml file
