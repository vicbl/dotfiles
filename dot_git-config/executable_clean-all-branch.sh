#!/bin/bash
git branch | grep -v "develop\|master" | xargs git branch -D
