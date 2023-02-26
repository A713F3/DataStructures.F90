#!/bin/bash

compiler="gfortran"

module=$1

$compiler -c ${module}.f90
$compiler -c ${module}_example.f90

$compiler -o ${module}.out ${module}.f90 ${module}_example.f90

./${module}.out