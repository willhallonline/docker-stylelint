#!/bin/sh
# Run stylelint, copying in specific styleint rules

# Test if already has a .stylelintrc file. If not, add a temporary one.
if [ -f "/app/.stylelintrc" ]
then
  stylelint_rc=true
else
  echo '{"extends": "/usr/local/lib/node_modules/stylelint-config-standard"}' > /app/.stylelintrc
fi

stylelint "$@"

# Remove temporary .stylelintrc file if created in this process 
if [ "$stylelint_rc" = true ]
then
  echo "--- Stylelint Complete ---"
else
  rm /app/.stylelintrc
  echo "--- Stylelint Complete ---"
fi
