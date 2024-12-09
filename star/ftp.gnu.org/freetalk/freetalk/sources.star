"""star/ftp.gnu.org/freetalk/freetalk sources"""

load("4.0.1.star", source_archive_4_0_1_star = "source_archive")
load("4.1.star", source_archive_4_1_star = "source_archive")
load("4.0.star", source_archive_4_0_star = "source_archive")
load("4.2.star", source_archive_4_2_star = "source_archive")


sources = {
    "4.0.1": source_archive_4_0_1_star,
    "4.1": source_archive_4_1_star,
    "4.0": source_archive_4_0_star,
    "4.2": source_archive_4_2_star,
}
