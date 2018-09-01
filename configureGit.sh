#!/bin/bash

echo Setting up git configuration.

git config --global core.excludesfile ~/.gitignore_global
echo -e '# Mac\n.DS_Store' > ~/.gitignore_global

echo Complete.
