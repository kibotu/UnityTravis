#!/bin/sh

curl \
	--progress-bar \
    -F "status=2" \
    -F "notify=1" \
    -F "notes=CI-Build" \
    -F "notes_type=0" \
    -F "ipa=@$APP_PATH" \
    -H "X-HockeyAppToken: $HOCKEY_API_TOKEN" \
    https://rink.hockeyapp.net/api/2/apps/$HOCKEY_APP_TOKEN/app_versions/upload \
	| tee ; test ${PIPESTATUS[0]} -eq 0