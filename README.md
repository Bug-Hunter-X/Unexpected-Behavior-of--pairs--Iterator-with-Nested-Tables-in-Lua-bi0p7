# Lua `pairs` Iterator Issue with Nested Tables

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with tables containing nested tables and non-integer keys. The `pairs` iterator does not guarantee a specific order, which can lead to unexpected behavior, particularly when recursion is involved.

## Problem

The provided `bug.lua` file contains a function that recursively iterates through a nested table using `pairs`. If the table structure is complex or contains non-integer keys, `pairs` might not visit all elements, or its order might be inconsistent across different Lua versions.

## Solution

The `bugSolution.lua` provides a more robust approach to handle nested tables by explicitly checking the table's structure and using a controlled iteration strategy to ensure all elements are processed and the order is predictable.

This example highlights the need to be mindful of `pairs`' behavior with nested tables and to adopt more explicit methods for iteration when reliable order or comprehensive element coverage is crucial.