"""star/ftp.gnu.org/ccrtp sources"""

load("ccrtp/sources.star", ccrtp = "sources")
load("libzrtpcpp/sources.star", libzrtpcpp = "sources")


sources = {
    "ccrtp": ccrtp,
    "libzrtpcpp": libzrtpcpp,
}
