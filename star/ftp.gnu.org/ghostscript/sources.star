"""star/ftp.gnu.org/ghostscript sources"""

load("libpng/sources.star", libpng = "sources")
load("ghostscript/sources.star", ghostscript = "sources")
load("zlib/sources.star", zlib = "sources")
load("gnu/sources.star", gnu = "sources")


sources = {
    "libpng": libpng,
    "ghostscript": ghostscript,
    "zlib": zlib,
    "gnu": gnu,
}
