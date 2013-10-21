#!/bin/sh

for f in `find external/ -name project.properties`; do
    android update lib-project -p `dirname $f` -t android-17
done
android update project -p app/ -t android-17 -n eyeWitness --subprojects

cp external/InformaCam/libs/android-support-v4.jar external/ActionBarSherlock/actionbarsherlock/libs/android-support-v4.jar
cp external/InformaCam/libs/android-support-v4.jar external/InformaCam/external/OnionKit/libonionkit/libs/android-support-v4.jar
cp external/InformaCam/libs/android-support-v4.jar external/InformaCam/external/CacheWord/cachewordlib/libs/android-support-v4.jar

rm external/InformaCam/external/CacheWord/cachewordlib/libs/iocipher.jar

rm -rf external/ActionBarSherlock/actionbarsherlock-samples
rm -rf app/bin/dexedLibs/android-support-v4*

