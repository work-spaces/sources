"""star/ftp.gnu.org/gnugo/gnugo sources"""

load("3.4.star", source_archive_3_4_star = "source_archive")
load("3.8.star", source_archive_3_8_star = "source_archive")
load("1.2.star", source_archive_1_2_star = "source_archive")
load("3.2.star", source_archive_3_2_star = "source_archive")
load("2.6.star", source_archive_2_6_star = "source_archive")
load("3.6.star", source_archive_3_6_star = "source_archive")


sources = {
    "3.4": source_archive_3_4_star,
    "3.8": source_archive_3_8_star,
    "1.2": source_archive_1_2_star,
    "3.2": source_archive_3_2_star,
    "2.6": source_archive_2_6_star,
    "3.6": source_archive_3_6_star,
}
