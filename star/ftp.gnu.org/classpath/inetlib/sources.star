"""star/ftp.gnu.org/classpath/inetlib sources"""

load("1.1.1.star", source_archive_1_1_1_star = "source_archive")
load("1.0.star", source_archive_1_0_star = "source_archive")
load("1.1.2.star", source_archive_1_1_2_star = "source_archive")
load("1.1.star", source_archive_1_1_star = "source_archive")


sources = {
    "1.1.1": source_archive_1_1_1_star,
    "1.0": source_archive_1_0_star,
    "1.1.2": source_archive_1_1_2_star,
    "1.1": source_archive_1_1_star,
}
