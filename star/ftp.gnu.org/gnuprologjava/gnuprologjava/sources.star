"""star/ftp.gnu.org/gnuprologjava/gnuprologjava sources"""

load("0.2.6-src.star", source_archive_0_2_6_src_star = "source_archive")
load("0.2.5.star", source_archive_0_2_5_star = "source_archive")
load("0.2.6.star", source_archive_0_2_6_star = "source_archive")
load("0.2.5-src.star", source_archive_0_2_5_src_star = "source_archive")


sources = {
    "0.2.6-src": source_archive_0_2_6_src_star,
    "0.2.5": source_archive_0_2_5_star,
    "0.2.6": source_archive_0_2_6_star,
    "0.2.5-src": source_archive_0_2_5_src_star,
}
