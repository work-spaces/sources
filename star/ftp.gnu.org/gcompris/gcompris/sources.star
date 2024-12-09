"""star/ftp.gnu.org/gcompris/gcompris sources"""

load("0.6.3.star", source_archive_0_6_3_star = "source_archive")
load("0.6.1.star", source_archive_0_6_1_star = "source_archive")
load("0.7.2.star", source_archive_0_7_2_star = "source_archive")


sources = {
    "0.6.3": source_archive_0_6_3_star,
    "0.6.1": source_archive_0_6_1_star,
    "0.7.2": source_archive_0_7_2_star,
}
