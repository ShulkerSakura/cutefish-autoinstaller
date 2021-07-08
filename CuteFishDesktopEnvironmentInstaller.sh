#!/bin/bash
echo "$@" | sudo apt install \
cmake \
extra-cmake-modules \
git \
gcc \
g++ \
kwin-dev \
libdbusmenu-qt5-dev \
libecm1-dev \
libfftw3-dev \
libicu-dev \
libkdecorations2-dev \
libkf5codecs-dev \
libkf5coreaddons-dev \
libkf5configwidgets-dev \
libkf5guiaddons-dev \
libkf5i18n-dev \
libkf5kio-dev \
libkf5networkmanagerqt-dev \
libkf5package-dev \
libkf5screen-dev \
libkf5solid-dev \
libkf5widgetsaddons-dev \
libkf5windowsystem-dev \
libpolkit-agent-1-dev \
libpolkit-qt5-1-dev \
libpulse-dev \
libqt5x11extras5-dev \
libqt5xdg-dev \
libqt5sensors5-dev \
libsm-dev \
libx11-xcb-dev \
libxcb-composite0-dev \
libxcb-damage0-dev \
libxcb-ewmh-dev \
libxcb-icccm4-dev \
libxcb-image0-dev \
libxcb-randr0-dev \
libxcb-shape0-dev \
libxcb-util0-dev \
libxcb-xfixes0-dev \
libxcb1-dev \
libxtst-dev \
modemmanager-qt-dev \
qml-module-org-kde-kwindowsystem \
qml-module-qtquick-controls2 \
qml-module-qtquick-shapes \
qtbase5-dev \
qtbase5-private-dev \
qtdeclarative5-dev \
qtquickcontrols2-5-dev \
qttools5-dev \
qml-module-qt-labs-platform \
-y 
mkdir CuteFishBuild
cd CuteFishBuild
git clone https://gitee.com/cutefishos/fishui.git
git clone https://gitee.com/cutefishos/settings.git
git clone https://gitee.com/cutefishos/terminal.git
git clone https://gitee.com/cutefishos/calculator.git
git clone https://gitee.com/cutefishos/icons.git
git clone https://gitee.com/cutefishos/kwin-plugins.git
git clone https://gitee.com/cutefishos/dock.git
git clone https://gitee.com/cutefishos/statusbar.git
git clone https://gitee.com/cutefishos/qt-plugins.git
git clone https://gitee.com/cutefishos/launcher.git
git clone https://gitee.com/cutefishos/filemanager.git
git clone https://gitee.com/cutefishos/core.git
git clone https://gitee.com/cutefishos/wallpapers.git
git clone https://gitee.com/cutefishos/libcutefish.git
mkdir fishui/build
mkdir libcutefish/build
mkdir kwin-plugins/build
mkdir qt-plugins/build
mkdir core/build
mkdir settings/build
mkdir terminal/build
mkdir calculator/build
mkdir icons/build
mkdir dock/build
mkdir statusbar/build
mkdir launcher/build
mkdir filemanager/build
mkdir wallpapers/build
cd fishui/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make -j
sudo make install
cd ../../libcutefish/build
cmake ..
make -j
sudo make install
cd ../../kwin-plugins/build
cmake ..
make -j
sudo make install
cd ../../qt-plugins/build
cmake ..
make -j
sudo make install
cd ../../core/build
cmake ..
make -j
sudo make install
cd ../../settings/build
cmake ..
make -j
sudo make install
cd ../../terminal/build
cmake ..
make -j
sudo make install
cd ../../calculator/build
cmake ..
make -j
sudo make install
cd ../../icons/build
cmake ..
make -j
sudo make install
cd ../../dock/build
cmake ..
make -j
sudo make install
cd ../../statusbar/build
cmake ..
make -j
sudo make install
cd ../../launcher/build
cmake ..
make -j
sudo make install
cd ../../filemanager/build
cmake ..
make -j
sudo make install
cd ../../wallpapers/build
cmake ..
make -j
sudo make install
echo "CuteFish Desktop Environment Installed"
