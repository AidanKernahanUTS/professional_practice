#!/bin/bash

echo "===================="
echo "Executing todo.py"
echo "===================="
python3 /app/.github/scripts/todo.py | tee /app/todo_output.txt


echo "===================="
echo "Executing todo-test.py"
echo "===================="
python3 /app/.github/scripts/todo-test.py | tee /app/test_output.txt


echo "===================="
echo "Executing update_index.sh"
echo "===================="
python3 /app/.github/scripts/update_index.sh /app/todo_output.txt /app/test_output.txt



echo "===================="
echo "Done!"
echo "===================="


# echo "Starting Frequency Analyzer..."


# #Running the Python frequency analyzer
# FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py /app/data.txt)

# #Running update_readme.sh
# bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"


# echo "Process Completed!"
