cp 0001-disable-build-doc.patch packages/mingw-w64-fribidi || exit 1
cd packages || exit 1
git apply --ignore-space-change --ignore-whitespace '../mingw-w64-fribidi.patch' || exit 1
cd mingw-w64-fribidi || exit 1
dos2unix PKGBUILD || exit 1
MINGW_ARCH=mingw64 makepkg-mingw -sLf --nosign --noconfirm --skippgpcheck --noprogressbar --skipchecksums || exit 1
