# Autogenerated wrapper script for Xorg_xcb_util_image_jll for powerpc64le-linux-gnu
export libxcb_image

using Xorg_xcb_util_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libxcb_image`
const libxcb_image_splitpath = ["lib", "libxcb-image.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxcb_image_path = ""

# libxcb_image-specific global declaration
# This will be filled out by __init__()
libxcb_image_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxcb_image = "libxcb-image.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    LIBPATH_list = [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]
    append!.(Ref(PATH_list), (Xorg_xcb_util_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_xcb_util_jll.LIBPATH_list,))

    global libxcb_image_path = abspath(joinpath(artifact"Xorg_xcb_util_image", libxcb_image_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxcb_image_handle = dlopen(libxcb_image_path)
    push!(LIBPATH_list, dirname(libxcb_image_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

