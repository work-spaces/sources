"""star/ftp.gnu.org/cursynth/cursynth sources"""

load("1.4.star", source_archive_1_4_star = "source_archive")
load("1.5.star", source_archive_1_5_star = "source_archive")
load("1.3.star", source_archive_1_3_star = "source_archive")


sources = {
    "1.4": source_archive_1_4_star,
    "1.5": source_archive_1_5_star,
    "1.3": source_archive_1_3_star,
}
