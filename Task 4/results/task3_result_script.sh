#!/bin/bash
[ -f /tmp/space.txt ] || echo 'date dir size' > /tmp/space.txt
echo $(date +%Y-%m-%d) ~ $(du -sh ~ | cut -f1) >> /tmp/space.txt
