"""star/ftp.gnu.org/greg/greg sources"""

load("0.6.star", source_archive_0_6_star = "source_archive")
load("1.3.star", source_archive_1_3_star = "source_archive")
load("1.0.star", source_archive_1_0_star = "source_archive")
load("1.1.star", source_archive_1_1_star = "source_archive")


sources = {
    "0.6": source_archive_0_6_star,
    "1.3": source_archive_1_3_star,
    "1.0": source_archive_1_0_star,
    "1.1": source_archive_1_1_star,
}
