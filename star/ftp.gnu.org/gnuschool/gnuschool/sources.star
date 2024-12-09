"""star/ftp.gnu.org/gnuschool/gnuschool sources"""

load("0.1.star", source_archive_0_1_star = "source_archive")
load("0.2.star", source_archive_0_2_star = "source_archive")
load("2.2.star", source_archive_2_2_star = "source_archive")


sources = {
    "0.1": source_archive_0_1_star,
    "0.2": source_archive_0_2_star,
    "2.2": source_archive_2_2_star,
}
