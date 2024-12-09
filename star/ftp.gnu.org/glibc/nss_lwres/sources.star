"""star/ftp.gnu.org/glibc/nss_lwres sources"""

load("0.91.star", source_archive_0_91_star = "source_archive")
load("0.92.star", source_archive_0_92_star = "source_archive")


sources = {
    "0.91": source_archive_0_91_star,
    "0.92": source_archive_0_92_star,
}
