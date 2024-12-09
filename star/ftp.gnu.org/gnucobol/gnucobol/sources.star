"""star/ftp.gnu.org/gnucobol/gnucobol sources"""

load("3.1.2.star", source_archive_3_1_2_star = "source_archive")
load("3.2.star", source_archive_3_2_star = "source_archive")
load("3.1.star", source_archive_3_1_star = "source_archive")
load("2.2.star", source_archive_2_2_star = "source_archive")
load("3.1.1.star", source_archive_3_1_1_star = "source_archive")
load("3.2_win.star", source_archive_3_2_win_star = "source_archive")


sources = {
    "3.1.2": source_archive_3_1_2_star,
    "3.2": source_archive_3_2_star,
    "3.1": source_archive_3_1_star,
    "2.2": source_archive_2_2_star,
    "3.1.1": source_archive_3_1_1_star,
    "3.2_win": source_archive_3_2_win_star,
}
