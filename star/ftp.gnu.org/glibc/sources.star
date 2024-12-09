"""star/ftp.gnu.org/glibc sources"""

load("nss_lwres/sources.star", nss_lwres = "sources")
load("nss_db/sources.star", nss_db = "sources")
load("glibc/sources.star", glibc = "sources")


sources = {
    "nss_lwres": nss_lwres,
    "nss_db": nss_db,
    "glibc": glibc,
}
