#!/bin/bash

if [ -n $APP_NAME ] && [ -f "$APP_NAME" ]; then
  $APP_NAME -Dconfig.file=$APP_CONFIG $APP_OPTIONS
fi