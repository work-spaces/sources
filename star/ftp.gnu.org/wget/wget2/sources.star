"""star/ftp.gnu.org/wget/wget2 sources"""

load("1.99.2.star", source_archive_1_99_2_star = "source_archive")
load("2.0.0.star", source_archive_2_0_0_star = "source_archive")
load("2.2.0.star", source_archive_2_2_0_star = "source_archive")
load("2.0.1.star", source_archive_2_0_1_star = "source_archive")
load("2.1.0.star", source_archive_2_1_0_star = "source_archive")


sources = {
    "1.99.2": source_archive_1_99_2_star,
    "2.0.0": source_archive_2_0_0_star,
    "2.2.0": source_archive_2_2_0_star,
    "2.0.1": source_archive_2_0_1_star,
    "2.1.0": source_archive_2_1_0_star,
}
