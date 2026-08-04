include(ExternalProject)

ExternalProject_Add(ep_jpeg-turbo
        SOURCE_DIR ${THIRD_PARTY_SOURCE_PATH}/libjpeg-turbo
        # WITH_SYSTEM_ZLIB makes the bundled spng include <zlib.h>, which only
        # exists once ep_zlib has run its install step
        DEPENDS ep_zlib
        CMAKE_ARGS
            ${EP_CMAKE_ARGS}
            -DWITH_SYSTEM_ZLIB=ON
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)
