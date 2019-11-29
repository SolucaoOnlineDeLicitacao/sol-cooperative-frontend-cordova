#!/bin/bash
cd platforms/android/app/build/outputs/apk/release &&
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ../../../../../../../../../apk-cooperative/android.keystore app-release-unsigned.apk br.gov.ba.car.cooperative &&
zipalign -v 4 app-release-unsigned.apk ../../../../../../../app-release.apk
