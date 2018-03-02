iOS build instruction.

Tools required to compile GCompris
In addition to XCode, you will need to have the following tools installed on your mac:
- QT
- CMake
- gettext
- inkscape
You must have them in your PATH before you can follow the instructions.

Build Box2D
cd external/qml-box2d
mkdir build-ios
cd build-ios
~/Qt/5.9/ios/bin/qmake ../box2d.pro
make
make install


Update config.h with the correct release version or pick it from a CMake build.
update info.plist
(TODO: do it with a script)

Generate the MacOS version with CMake
mkdir build_mac
cmake -DQt5_DIR=/Users/flobo/Qt/5.9/clang_64/lib/cmake/Qt5
make getSvnTranslations
cmake ..
make BuildTranslations
make

Generate the icons
./createAppicon.py $PWD/Images.xcassets/AppIcon.appiconset $PWD/icon_no_corner.svg
./createLaunchImage.py $PWD/Images.xcassets/LaunchImage.launchimage $PWD/../../src/activities/menu/resource/background.svg

copy the following files at the root dir
cp platforms/ios/config.h .
cp platforms/ios/gcompris.pro .

At root dir create the directory
mkdir rcc
mkdir translations

And fill copy the appropriate files in them.

instead:
cp -r build_mac/bin/gcompris-qt.app/Contents/Resources/rcc .
cp -r build_mac/bin/gcompris-qt.app/Contents/Resources/translations .

Create a build directory:
mkdir build-ios
cd build-ios
~/Qt/5.5/ios/bin/qmake ../gcompris.pro
open gcompris.xcodeproj

Fix the Launch reference to point the Launch item in the xcassets

TODO :
BOX2D