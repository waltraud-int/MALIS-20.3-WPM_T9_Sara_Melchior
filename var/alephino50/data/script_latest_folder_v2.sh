#!/bin/bash


ls -t1 | grep -P -e "\d{6}" | head -1
