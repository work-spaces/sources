"""star/ftp.gnu.org/ballandpaddle/ballandpaddle sources"""

load("0.7.1-w32.star", source_archive_0_7_1_w32_star = "source_archive")
load("0.7.1.star", source_archive_0_7_1_star = "source_archive")
load("0.8.0.star", source_archive_0_8_0_star = "source_archive")
load("0.8.1.star", source_archive_0_8_1_star = "source_archive")


sources = {
    "0.7.1-w32": source_archive_0_7_1_w32_star,
    "0.7.1": source_archive_0_7_1_star,
    "0.8.0": source_archive_0_8_0_star,
    "0.8.1": source_archive_0_8_1_star,
}
