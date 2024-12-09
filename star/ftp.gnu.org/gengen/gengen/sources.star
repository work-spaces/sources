"""star/ftp.gnu.org/gengen/gengen sources"""

load("1.4.star", source_archive_1_4_star = "source_archive")
load("1.4.2.star", source_archive_1_4_2_star = "source_archive")
load("1.2.star", source_archive_1_2_star = "source_archive")
load("1.3.star", source_archive_1_3_star = "source_archive")
load("1.0.star", source_archive_1_0_star = "source_archive")
load("1.4.1.star", source_archive_1_4_1_star = "source_archive")
load("1.1.star", source_archive_1_1_star = "source_archive")


sources = {
    "1.4": source_archive_1_4_star,
    "1.4.2": source_archive_1_4_2_star,
    "1.2": source_archive_1_2_star,
    "1.3": source_archive_1_3_star,
    "1.0": source_archive_1_0_star,
    "1.4.1": source_archive_1_4_1_star,
    "1.1": source_archive_1_1_star,
}
