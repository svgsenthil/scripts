#!/bin/bash

echo "Checking Version for Installed Programs"
echo -n 'Git:            '
git --version
echo -n 'Node:           '
node --version
echo -n 'npm:            '
npm --version
echo -n 'Docker:         '
docker --version
echo -n 'Docker Compose: '
docker-compose --version
echo -n 'Python:         '
python -V
echo -n 'Ruby:           '
ruby --version
echo -n 'Rails:          '
rails --version
echo -n 'Gem:            '
gem --version
