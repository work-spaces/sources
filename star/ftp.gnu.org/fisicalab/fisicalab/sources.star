"""star/ftp.gnu.org/fisicalab/fisicalab sources"""

load("0.3.5-1.star", source_archive_0_3_5_1_star = "source_archive")
load("0.4.0.star", source_archive_0_4_0_star = "source_archive")
load("0.3.3.star", source_archive_0_3_3_star = "source_archive")
load("0.3.4.star", source_archive_0_3_4_star = "source_archive")
load("0.3.5.star", source_archive_0_3_5_star = "source_archive")


sources = {
    "0.3.5-1": source_archive_0_3_5_1_star,
    "0.4.0": source_archive_0_4_0_star,
    "0.3.3": source_archive_0_3_3_star,
    "0.3.4": source_archive_0_3_4_star,
    "0.3.5": source_archive_0_3_5_star,
}
