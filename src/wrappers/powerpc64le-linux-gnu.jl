# Autogenerated wrapper script for Xorg_xcb_util_image_jll for powerpc64le-linux-gnu
export libxcb_image

using Xorg_xcb_util_jll
JLLWrappers.@generate_wrapper_header("Xorg_xcb_util_image")
JLLWrappers.@declare_library_product(libxcb_image, "libxcb-image.so.0")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_xcb_util_jll)
    JLLWrappers.@init_library_product(
        libxcb_image,
        "lib/libxcb-image.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
