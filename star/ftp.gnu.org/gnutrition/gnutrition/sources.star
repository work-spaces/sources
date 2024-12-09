"""star/ftp.gnu.org/gnutrition/gnutrition sources"""

load("0.1.star", source_archive_0_1_star = "source_archive")
load("0.32.star", source_archive_0_32_star = "source_archive")
load("0.31.star", source_archive_0_31_star = "source_archive")
load("0.31.1.star", source_archive_0_31_1_star = "source_archive")
load("0.2.star", source_archive_0_2_star = "source_archive")
load("0.3.star", source_archive_0_3_star = "source_archive")


sources = {
    "0.1": source_archive_0_1_star,
    "0.32": source_archive_0_32_star,
    "0.31": source_archive_0_31_star,
    "0.31.1": source_archive_0_31_1_star,
    "0.2": source_archive_0_2_star,
    "0.3": source_archive_0_3_star,
}
