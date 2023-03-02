#!/bin/bash

arg=$1
compiler="gfortran"

module_folder="modules"
example_folder="examples"
obj_folder="objects"

module_path="${module_folder}/${arg}.f90"
example_path="${example_folder}/${arg}_example.f90"

module_o="${arg}.o"
example_o="${arg}_example.o"

output="${arg}.out"

$compiler -c $module_path
$compiler -c $example_path

$compiler -o $output $module_o $example_o

mv $module_o $obj_folder
mv $example_o $obj_folder

mv "${arg}_module.mod" $obj_folder

./$output