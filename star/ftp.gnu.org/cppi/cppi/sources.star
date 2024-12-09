"""star/ftp.gnu.org/cppi/cppi sources"""

load("1.14.star", source_archive_1_14_star = "source_archive")
load("1.18.star", source_archive_1_18_star = "source_archive")
load("1.15.star", source_archive_1_15_star = "source_archive")
load("1.16.star", source_archive_1_16_star = "source_archive")
load("1.17.star", source_archive_1_17_star = "source_archive")


sources = {
    "1.14": source_archive_1_14_star,
    "1.18": source_archive_1_18_star,
    "1.15": source_archive_1_15_star,
    "1.16": source_archive_1_16_star,
    "1.17": source_archive_1_17_star,
}
