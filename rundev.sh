#!/bin/bash
## Kemal hot reload
while sleep 0.25; do
  tree -fiA --prune --noreport src | entr -rd crystal run src/flamma.cr
done