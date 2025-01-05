#!/bin/bash

# File name of the C++ solution
FILE_NAME="Solutions.c++"
OUTPUT_NAME="Solutions"

# Check if the source file exists
if [ ! -f "$FILE_NAME" ]; then
    echo "Error: $FILE_NAME not found!"
    exit 1
fi

# Compile the C++ code
echo "Compiling $FILE_NAME..."
g++ -o $OUTPUT_NAME $FILE_NAME
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

# Run the compiled program
echo "Running $OUTPUT_NAME..."
./$OUTPUT_NAME
