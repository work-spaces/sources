"""star/ftp.gnu.org/gnatsweb/gnatsweb sources"""

load("4.00.star", source_archive_4_00_star = "source_archive")
load("2.9.3.star", source_archive_2_9_3_star = "source_archive")
load("2.9.2.star", source_archive_2_9_2_star = "source_archive")
load("2.9.1.star", source_archive_2_9_1_star = "source_archive")
load("2.9.0.star", source_archive_2_9_0_star = "source_archive")
load("2.8.2.star", source_archive_2_8_2_star = "source_archive")


sources = {
    "4.00": source_archive_4_00_star,
    "2.9.3": source_archive_2_9_3_star,
    "2.9.2": source_archive_2_9_2_star,
    "2.9.1": source_archive_2_9_1_star,
    "2.9.0": source_archive_2_9_0_star,
    "2.8.2": source_archive_2_8_2_star,
}
