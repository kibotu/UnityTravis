#!/bin/sh

project="ci-build"

curl \
    -F "status=2" \
    -F "notify=1" \
    -F "notes=CI-Build" \
    -F "notes_type=0" \
    -F "ipa=@$(pwd)/Build/android/$project.apk" \
    -H "X-HockeyAppToken: $(HOCKEY_API_TOKEN)" \
    https://rink.hockeyapp.net/api/2/apps/$(HOCKEY_APP_TOKEN)/app_versions/upload \
  