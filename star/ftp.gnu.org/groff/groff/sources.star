"""star/ftp.gnu.org/groff/groff sources"""

load("1.20.1.star", source_archive_1_20_1_star = "source_archive")
load("1.22.1.star", source_archive_1_22_1_star = "source_archive")
load("1.22.2.star", source_archive_1_22_2_star = "source_archive")
load("1.22.3.star", source_archive_1_22_3_star = "source_archive")
load("1.23.0.star", source_archive_1_23_0_star = "source_archive")
load("1.22.4.star", source_archive_1_22_4_star = "source_archive")
load("1.20.star", source_archive_1_20_star = "source_archive")
load("1.21.star", source_archive_1_21_star = "source_archive")


sources = {
    "1.20.1": source_archive_1_20_1_star,
    "1.22.1": source_archive_1_22_1_star,
    "1.22.2": source_archive_1_22_2_star,
    "1.22.3": source_archive_1_22_3_star,
    "1.23.0": source_archive_1_23_0_star,
    "1.22.4": source_archive_1_22_4_star,
    "1.20": source_archive_1_20_star,
    "1.21": source_archive_1_21_star,
}
