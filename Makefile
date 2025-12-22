.PHONY: clean

capi:
	cargo build -p dharitri-vm-executor-c-api --release

capi-linux-amd64: capi
	mv target/release/libdharitri_vm_executor_c_api.so target/release/libvmoaeccapi.so
	patchelf --set-soname libvmoaeccapi.so target/release/libvmoaeccapi.so

capi-linux-arm: capi
	mv target/release/libdharitri_vm_executor_c_api.so target/release/libvmoaeccapi_arm.so
	patchelf --set-soname libvmoaeccapi_arm.so target/release/libvmoaeccapi_arm.so

capi-osx-amd64: capi
	mv target/release/libdharitri_vm_executor_c_api.dylib target/release/libvmoaeccapi.dylib
	install_name_tool -id @rpath/libvmoaeccapi.dylib target/release/libvmoaeccapi.dylib

capi-osx-arm: capi
	mv target/release/libdharitri_vm_executor_c_api.dylib target/release/libvmoaeccapi_arm.dylib
	install_name_tool -id @rpath/libvmoaeccapi_arm.dylib target/release/libvmoaeccapi_arm.dylib

clean:
	cargo clean
	rm target/release/libvmoaeccapi.so
	rm target/release/libvmoaeccapi_arm.so
	rm target/release/libvmoaeccapi.dylib
	rm target/release/libvmoaeccapi_arm.dylib
	rm c-api/libvmoaeccapi.h
