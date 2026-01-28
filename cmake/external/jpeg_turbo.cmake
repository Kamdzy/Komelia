include(ExternalProject)

ExternalProject_Add(ep_jpeg-turbo
        GIT_REPOSITORY https://github.com/libjpeg-turbo/libjpeg-turbo
        GIT_TAG 3.1.3
        GIT_SHALLOW 1
        GIT_PROGRESS 1
        CMAKE_ARGS
            ${EP_CMAKE_ARGS}
            -DBUILD_SHARED_LIBS=OFF
            -DENABLE_SHARED=FALSE
            -DENABLE_STATIC=TRUE
        USES_TERMINAL_DOWNLOAD true
        USES_TERMINAL_BUILD true
)
