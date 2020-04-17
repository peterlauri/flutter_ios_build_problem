#!/usr/bin/env bash

# lets write build values to the lib/config.dart file
echo "final String configDisplayName = 'Build Display Name';" > lib/config.dart

# lets clean up before building
flutter clean
flutter build ios

# lets revert back lib/config.dart after build (as we are done)
git checkout -- lib/config.dart
