"""star/ftp.gnu.org/ccd2cue/ccd2cue sources"""

load("0.4.star", source_archive_0_4_star = "source_archive")
load("0.5.star", source_archive_0_5_star = "source_archive")
load("0.3.star", source_archive_0_3_star = "source_archive")


sources = {
    "0.4": source_archive_0_4_star,
    "0.5": source_archive_0_5_star,
    "0.3": source_archive_0_3_star,
}
