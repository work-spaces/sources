"""star/ftp.gnu.org/gnuit/gnuit sources"""

load("4.9.2.star", source_archive_4_9_2_star = "source_archive")
load("4.9.3.star", source_archive_4_9_3_star = "source_archive")
load("4.9.4.star", source_archive_4_9_4_star = "source_archive")
load("4.9.5.star", source_archive_4_9_5_star = "source_archive")


sources = {
    "4.9.2": source_archive_4_9_2_star,
    "4.9.3": source_archive_4_9_3_star,
    "4.9.4": source_archive_4_9_4_star,
    "4.9.5": source_archive_4_9_5_star,
}
