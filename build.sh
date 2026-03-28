#!/usr/bin/sh
set -e

DIST_DIR="./dist"
mkdir -p "$DIST_DIR"
echo "Building runtime binaries into $DIST_DIR"

build_target() {
	goos="$1"
	goarch="$2"
	ext=""
	[ "$goos" = "windows" ] && ext=".exe"

	output="$DIST_DIR/tmt-runtime-${goos}-${goarch}${ext}"
	echo "  - $goos/$goarch -> $(basename "$output")"

	CGO_ENABLED=0 GOOS="$goos" GOARCH="$goarch" go build -trimpath -ldflags="-s -w" -o "$output" .
}

build_target linux amd64
build_target linux arm64
build_target darwin amd64
build_target darwin arm64
build_target windows amd64
build_target windows arm64

echo "Done!"
echo ",,, ,,,*/#%%%%%&&&&&&&&%%#/,,..*                  "
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#/.*.....      "
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(,.     ."
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%#///&. . ."
echo "@@@@@@@@@@@@&&,#**//*/@@@@@@@@@@@@@@@@@@@@,&@@@@//"
echo "@@&&&%###((((*,(%@@@@@@@@@@@@@@@@@@@@@@@% @@@@@@@ "
echo "((((((((((((./((#%@@@@@@@@@@@@@@@@@&%%&@@.@@@@@@@ "
echo "(((((((((((./(((((#&%*    %@@@@@@@&, ,&&&&@@@@@@@ "
echo "(((((((((((./(((((((((#%%%####@%*&&&&&&&&@@@@@@@@ "
echo "((((((((((((./((((((((((((((((#%%%&&&%&@@@@@@@@@@ "
echo "((((((((((((((##############%#%%&&@@@@@@@@@@@@@@@#"
echo "#%%&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/  "
echo "  .(%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%/       "