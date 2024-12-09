"""star/ftp.gnu.org/gnu-c-manual/gnu sources"""

load("c-manual-0.1.star", source_archive_c_manual_0_1_star = "source_archive")
load("c-manual-0.2.1.star", source_archive_c_manual_0_2_1_star = "source_archive")
load("c-manual-0.2.4.star", source_archive_c_manual_0_2_4_star = "source_archive")
load("c-manual-0.2.5.star", source_archive_c_manual_0_2_5_star = "source_archive")
load("c-manual-0.2.2.star", source_archive_c_manual_0_2_2_star = "source_archive")
load("c-manual-0.2.star", source_archive_c_manual_0_2_star = "source_archive")
load("c-manual-0.2.3.star", source_archive_c_manual_0_2_3_star = "source_archive")


sources = {
    "c-manual-0.1": source_archive_c_manual_0_1_star,
    "c-manual-0.2.1": source_archive_c_manual_0_2_1_star,
    "c-manual-0.2.4": source_archive_c_manual_0_2_4_star,
    "c-manual-0.2.5": source_archive_c_manual_0_2_5_star,
    "c-manual-0.2.2": source_archive_c_manual_0_2_2_star,
    "c-manual-0.2": source_archive_c_manual_0_2_star,
    "c-manual-0.2.3": source_archive_c_manual_0_2_3_star,
}
