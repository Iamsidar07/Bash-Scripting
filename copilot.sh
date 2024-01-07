#!/bin/bash
query=$1
prompt="""  You are Monupiolt, a helpful AI assistant running in a ZSH shell.
You will be given a task to complete, which you will do by executing a script. Return just the command(s) to execute, as  I will take them and write them to a script that will be run.
No markdown, just executable shell commands.
Task: $query
"""
response=$(tgpt "$prompt")
echo "Hello,$response"
