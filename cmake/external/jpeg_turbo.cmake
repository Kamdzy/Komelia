include(ExternalProject)

ExternalProject_Add(ep_jpeg-turbo
        SOURCE_DIR ${THIRD_PARTY_SOURCE_PATH}/libjpeg-turbo
        # WITH_SYSTEM_ZLIB points the bundled spng at the sysroot zlib, so ep_zlib
        # has to have run its install step first
        DEPENDS ep_zlib
        CMAKE_ARGS
            ${EP_CMAKE_ARGS}
            -DWITH_SYSTEM_ZLIB=ON
            # find_package(ZLIB) resolves, but libjpeg-turbo does not propagate the
            # include directory to its spng-static target, so spng.c fails on
            # "#include <zlib.h>". Put the sysroot include on the compile line.
            -DCMAKE_C_FLAGS=-I${CMAKE_BINARY_DIR}/sysroot/include
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)
