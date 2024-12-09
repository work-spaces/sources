"""star/ftp.gnu.org/gcc sources"""

load("g++/sources.star", gpp = "sources")
load("gcc/sources.star", gcc = "sources")
load("gnu/sources.star", gnu = "sources")


sources = {
    "g++": gpp,
    "gcc": gcc,
    "gnu": gnu,
}
