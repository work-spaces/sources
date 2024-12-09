"""star/ftp.gnu.org/gnupod/gnupod sources"""

load("0.28.star", source_archive_0_28_star = "source_archive")
load("0.29-rc1.star", source_archive_0_29_rc1_star = "source_archive")


sources = {
    "0.28": source_archive_0_28_star,
    "0.29-rc1": source_archive_0_29_rc1_star,
}
