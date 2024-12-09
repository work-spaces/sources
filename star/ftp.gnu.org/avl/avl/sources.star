"""star/ftp.gnu.org/avl/avl sources"""

load("2.0.1.html.star", source_archive_2_0_1_html_star = "source_archive")
load("2.0.star", source_archive_2_0_star = "source_archive")
load("2.0.1.star", source_archive_2_0_1_star = "source_archive")
load("1.4.0.star", source_archive_1_4_0_star = "source_archive")
load("2.0.3.html.star", source_archive_2_0_3_html_star = "source_archive")
load("2.0.2a.star", source_archive_2_0_2a_star = "source_archive")
load("2.0.3.star", source_archive_2_0_3_star = "source_archive")
load("2.0.2.html.star", source_archive_2_0_2_html_star = "source_archive")


sources = {
    "2.0.1.html": source_archive_2_0_1_html_star,
    "2.0": source_archive_2_0_star,
    "2.0.1": source_archive_2_0_1_star,
    "1.4.0": source_archive_1_4_0_star,
    "2.0.3.html": source_archive_2_0_3_html_star,
    "2.0.2a": source_archive_2_0_2a_star,
    "2.0.3": source_archive_2_0_3_star,
    "2.0.2.html": source_archive_2_0_2_html_star,
}
