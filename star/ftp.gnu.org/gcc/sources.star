"""star/ftp.gnu.org/gcc sources"""

load("g++/sources.star", g++ = "sources")
load("gcc/sources.star", gcc = "sources")
load("gnu/sources.star", gnu = "sources")


sources = {
    "g++": g++,
    "gcc": gcc,
    "gnu": gnu,
}
