"""star/ftp.gnu.org/alive/alive sources"""

load("2.0.0.star", source_archive_2_0_0_star = "source_archive")
load("2.0.1.star", source_archive_2_0_1_star = "source_archive")
load("2.0.2.star", source_archive_2_0_2_star = "source_archive")
load("2.0.3.star", source_archive_2_0_3_star = "source_archive")


sources = {
    "2.0.0": source_archive_2_0_0_star,
    "2.0.1": source_archive_2_0_1_star,
    "2.0.2": source_archive_2_0_2_star,
    "2.0.3": source_archive_2_0_3_star,
}
