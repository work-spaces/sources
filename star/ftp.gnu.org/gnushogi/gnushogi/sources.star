"""star/ftp.gnu.org/gnushogi/gnushogi sources"""

load("1.4.2.star", source_archive_1_4_2_star = "source_archive")
load("1.3.star", source_archive_1_3_star = "source_archive")
load("1.4.1.star", source_archive_1_4_1_star = "source_archive")
load("1.2p03.star", source_archive_1_2p03_star = "source_archive")


sources = {
    "1.4.2": source_archive_1_4_2_star,
    "1.3": source_archive_1_3_star,
    "1.4.1": source_archive_1_4_1_star,
    "1.2p03": source_archive_1_2p03_star,
}
