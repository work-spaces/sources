"""star/ftp.gnu.org/bash/readline sources"""

load("7.0-beta2.star", source_archive_7_0_beta2_star = "source_archive")
load("7.0-rc2.star", source_archive_7_0_rc2_star = "source_archive")
load("5.0.5.star", source_archive_5_0_5_star = "source_archive")
load("5.1.star", source_archive_5_1_star = "source_archive")
load("7.0-beta.star", source_archive_7_0_beta_star = "source_archive")
load("7.0-rc1.star", source_archive_7_0_rc1_star = "source_archive")


sources = {
    "7.0-beta2": source_archive_7_0_beta2_star,
    "7.0-rc2": source_archive_7_0_rc2_star,
    "5.0.5": source_archive_5_0_5_star,
    "5.1": source_archive_5_1_star,
    "7.0-beta": source_archive_7_0_beta_star,
    "7.0-rc1": source_archive_7_0_rc1_star,
}
