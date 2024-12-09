"""star/ftp.gnu.org/coreutils sources"""

load("coreutils/sources.star", coreutils = "sources")
load("cppi/sources.star", cppi = "sources")


sources = {
    "coreutils": coreutils,
    "cppi": cppi,
}
