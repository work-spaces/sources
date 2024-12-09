"""star/ftp.gnu.org/bool/bool sources"""

load("0.2.2.star", source_archive_0_2_2_star = "source_archive")
load("0.1.star", source_archive_0_1_star = "source_archive")
load("0.1.1.star", source_archive_0_1_1_star = "source_archive")
load("0.2.star", source_archive_0_2_star = "source_archive")
load("0.2.1.star", source_archive_0_2_1_star = "source_archive")


sources = {
    "0.2.2": source_archive_0_2_2_star,
    "0.1": source_archive_0_1_star,
    "0.1.1": source_archive_0_1_1_star,
    "0.2": source_archive_0_2_star,
    "0.2.1": source_archive_0_2_1_star,
}
