include(ExternalProject)

ExternalProject_Add(ep_tiff
        GIT_REPOSITORY https://gitlab.com/libtiff/libtiff.git
        GIT_TAG v4.7.1
        GIT_SHALLOW 1
        GIT_PROGRESS 1
        DEPENDS ep_zlib ep_jxl ep_webp
        CMAKE_ARGS
            ${EP_CMAKE_ARGS}
            -Djbig=OFF
            -Dlzma=OFF
            -Dlerc=OFF
            -Dlibdeflate=OFF
            -Dcxx=OFF
            -Dtiff-tests=OFF
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)