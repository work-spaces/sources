"""star/ftp.gnu.org/direvent/direvent sources"""

load("5.3.star", source_archive_5_3_star = "source_archive")
load("5.2.star", source_archive_5_2_star = "source_archive")
load("5.4.star", source_archive_5_4_star = "source_archive")
load("5.1.star", source_archive_5_1_star = "source_archive")
load("5.0.star", source_archive_5_0_star = "source_archive")


sources = {
    "5.3": source_archive_5_3_star,
    "5.2": source_archive_5_2_star,
    "5.4": source_archive_5_4_star,
    "5.1": source_archive_5_1_star,
    "5.0": source_archive_5_0_star,
}
