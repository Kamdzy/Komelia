include(ExternalProject)

ExternalProject_Add(ep_lcms2
        GIT_REPOSITORY https://github.com/mm2/Little-CMS
        GIT_TAG lcms2.18
        GIT_SHALLOW 1
        GIT_PROGRESS 1
        DEPENDS ep_zlib
        CONFIGURE_COMMAND ${Meson_EXECUTABLE} setup ${EP_MESON_ARGS}
            --default-library static
            <BINARY_DIR> <SOURCE_DIR>
        BUILD_COMMAND ${Ninja_EXECUTABLE} -C <BINARY_DIR>
        INSTALL_COMMAND ${Ninja_EXECUTABLE} -C <BINARY_DIR> install
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)