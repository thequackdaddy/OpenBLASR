@ECHO ON

REM Can't do this in  powershell without throwing an error

REM Remove catgets to avoid conflict
REM bash --login -c "pacman -R --noconfirm catgets libcatgets"


REM Have to run multiple times
REM bash --login -c "pacman -Syuu --noconfirm"
REM bash --login -c "pacman -Syuu --noconfirm"
REM bash --login -c "pacman -Syuu --noconfirm"
REM bash --login -c "pacman -Syuu --noconfirm"
REM bash --login -c "pacman -Syuu --noconfirm"
bash --login -c "pacman -S --noconfirm make"
bash --login -c "pacman -S --needed --noconfirm base-devel mingw-w64-i686-toolchain mingw-w64-x86_64-toolchain git subversion mercurial mingw-w64-i686-cmake mingw-w64-x86_64-cmake"
@ECHO OFF
