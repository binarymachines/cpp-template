

init-dirs:
	cat required_dirs.txt | xargs mkdir -p


init-conan:
	./generate_config.py \
	| warp --j2 --template-file=template_files/CMakeLists.txt.tpl -s > CMakeLists.txt

	./generate_config.py \
	| warp --j2 --template-file=template_files/conanfile.txt.tpl -s > conanfile.txt


build:
	conan install . --output-folder=build --build missing
	cd build
	cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
	cmake --build . --config Release

