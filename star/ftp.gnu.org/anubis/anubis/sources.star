"""star/ftp.gnu.org/anubis/anubis sources"""

load("4.1.star", source_archive_4_1_star = "source_archive")
load("4.0.star", source_archive_4_0_star = "source_archive")
load("4.3.star", source_archive_4_3_star = "source_archive")
load("4.1.1.star", source_archive_4_1_1_star = "source_archive")
load("4.2.star", source_archive_4_2_star = "source_archive")
load("3.6.2.star", source_archive_3_6_2_star = "source_archive")


sources = {
    "4.1": source_archive_4_1_star,
    "4.0": source_archive_4_0_star,
    "4.3": source_archive_4_3_star,
    "4.1.1": source_archive_4_1_1_star,
    "4.2": source_archive_4_2_star,
    "3.6.2": source_archive_3_6_2_star,
}
