@echo off
goto beginning
  *
  * It is what it is, you can do with it as you please.
  *
  * Just don't blame me if it teaches your computer to smoke!
  *
  *  -Enjoy
  *  fh :)_~
  *
:beginning
if /i "%1#" == "--libs#"    goto doit
if /i "%1#" == "--cflags#"  goto doit
if /i "%1#" == "--version#" goto doit
if /i "%1#" == "--prefix#"  goto doit

echo "usage: %0 [OPTIONS]"
echo	[--libs]
echo	[--cflags]
echo	[--version]
echo	[--prefix]
goto theend

  *
  * NOTE: Windows does not assume libraries are prefixed with 'lib'.
  * NOTE: If '-llibtag' is the last element, it is easily appended in the users installation/makefile process
  *       to allow for static, shared or debug builds.
  * It would be preferable if the top level CMakeLists.txt provided the library name during config. ??
:doit
if /i "%1#" == "--libs#"    echo -L/home/vlc_build/work/vlc/vlc-3.0.12/contrib/i686-w64-mingw32/lib -llibtag
if /i "%1#" == "--cflags#"  echo -I/home/vlc_build/work/vlc/vlc-3.0.12/contrib/i686-w64-mingw32/include/taglib
if /i "%1#" == "--version#" echo 1.11.1
if /i "%1#" == "--prefix#"  echo /home/vlc_build/work/vlc/vlc-3.0.12/contrib/i686-w64-mingw32

:theend

