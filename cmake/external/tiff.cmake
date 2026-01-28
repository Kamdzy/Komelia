include(ExternalProject)

ExternalProject_Add(ep_tiff
        GIT_REPOSITORY https://gitlab.com/libtiff/libtiff.git
        GIT_TAG 885b36e137c584aaf784fc63784340a2c98a41d5
        GIT_PROGRESS 1
        DEPENDS ep_zlib ep_jxl ep_webp
        CMAKE_ARGS
            ${EP_CMAKE_ARGS}
            -Djbig=OFF
            -Dlzma=OFF
            -Dzstd=OFF
            -Dlerc=OFF
            -Dlibdeflate=OFF
            -Dcxx=OFF
            -Dtiff-tests=OFF
            -Dtiff-tools=OFF
            -DBUILD_SHARED_LIBS=OFF
        PATCH_COMMAND patch -p1 < ${CMAKE_CURRENT_LIST_DIR}/patches/tiff_webp_sharpyuv.patch
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)