#!/bin/bash

grep "pypi" test.txt | awk '{print $1 "==" $2}'