# terragrunt-issue-2794
Example to reproduce the terragrunt issue #2794

# Tested on
- Windows 10 Enterprise
- Terragrunt v0.54.12 (amd64)
- Shells used: [Cygwin](https://www.cygwin.com/) / [Git Bash](https://git-scm.com/downloads)

# Steps to reproduce

## Windows
1. Open a Unix-shell in this directory
2. Delete `live/stage1/module1/.terragrunt-cache` if it exists
3. run `terragrunt run-all plan --terragrunt-working-dir live/stage1`
3. run `terragrunt run-all plan --terragrunt-working-dir live/stage1` or `terragrunt run-all apply --terragrunt-working-dir live/stage1`

Expected result:
```
time=2024-01-03T12:48:35+01:00 level=error msg=Error processing module at 'C:/terragrunt-issue-2794/live/stage1/module1/.terragrunt-cache/yxHEwD997ldr9YZ2z8-H-05XIWw/alF-PhBNXBLmkO1SO21TYbt_oN0/terragrunt.hcl'. How t
his module was found: Terragrunt config file found in a subdirectory of live/stage1. Underlying error: C:/terragrunt-issue-2794/live/stage1/module1/.terragrunt-cache/yxHEwD997ldr9YZ2z8-H-05XIWw/alF-PhBNXBLmkO1SO21TYb
t_oN0/terragrunt.hcl includes C:/terragrunt-issue-2794/live/stage1/module1/terragrunt.hcl, which itself includes C:/terragrunt-issue-2794/live/stage1/module1/terragrunt.hcl. Only one level of includes is 
allowed.
time=2024-01-03T12:48:35+01:00 level=error msg=Unable to determine underlying exit code, so Terragrunt will exit with error code 1
```
