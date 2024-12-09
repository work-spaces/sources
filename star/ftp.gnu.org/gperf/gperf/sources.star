"""star/ftp.gnu.org/gperf/gperf sources"""

load("2.7.2.star", source_archive_2_7_2_star = "source_archive")
load("3.0.1.star", source_archive_3_0_1_star = "source_archive")
load("3.1.star", source_archive_3_1_star = "source_archive")
load("3.0.2.star", source_archive_3_0_2_star = "source_archive")
load("3.0.3.star", source_archive_3_0_3_star = "source_archive")
load("3.0.4.star", source_archive_3_0_4_star = "source_archive")


sources = {
    "2.7.2": source_archive_2_7_2_star,
    "3.0.1": source_archive_3_0_1_star,
    "3.1": source_archive_3_1_star,
    "3.0.2": source_archive_3_0_2_star,
    "3.0.3": source_archive_3_0_3_star,
    "3.0.4": source_archive_3_0_4_star,
}
