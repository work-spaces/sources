"""star/ftp.gnu.org/autogen/autogen sources"""

load("5.18.7.star", source_archive_5_18_7_star = "source_archive")
load("5.5.7.star", source_archive_5_5_7_star = "source_archive")
load("4.5.14.star", source_archive_4_5_14_star = "source_archive")


sources = {
    "5.18.7": source_archive_5_18_7_star,
    "5.5.7": source_archive_5_5_7_star,
    "4.5.14": source_archive_4_5_14_star,
}
