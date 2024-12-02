"""star/ftp.gnu.org/libidn sources"""

load("libidn2/sources.star", libidn2 = "sources")
load("libidn/sources.star", libidn = "sources")


sources = {
    "libidn2": libidn2,
    "libidn": libidn,
}
