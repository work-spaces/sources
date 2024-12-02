"""star/ftp.gnu.org/readline/readline sources"""

load("8.1.2.star", source_archive_8_1_2_star = "source_archive")
load("8.2.13.star", source_archive_8_2_13_star = "source_archive")
load("8.0.star", source_archive_8_0_star = "source_archive")
load("source_archives.star", source_archive_source_archives_star = "source_archive")
load("8.2.star", source_archive_8_2_star = "source_archive")
load("7.0.star", source_archive_7_0_star = "source_archive")


sources = {
    "8.1.2": source_archive_8_1_2_star,
    "8.2.13": source_archive_8_2_13_star,
    "8.0": source_archive_8_0_star,
    "source_archives": source_archive_source_archives_star,
    "8.2": source_archive_8_2_star,
    "7.0": source_archive_7_0_star,
}
