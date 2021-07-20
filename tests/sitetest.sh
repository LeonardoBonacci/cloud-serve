#!/bin/bash

if curl http://serve:5000 | grep foo; then
  echo "Foo exists.\nFoo test passes.\n"
  exit 0
else
  echo "Foo does not exist.\nFoo test fails."
  exit 1
fi
