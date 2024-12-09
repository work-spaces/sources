"""star/ftp.gnu.org/c-intro-and-ref/c sources"""

load("intro-and-ref-latest.star", source_archive_intro_and_ref_latest_star = "source_archive")
load("intro-and-ref-0.0.star", source_archive_intro_and_ref_0_0_star = "source_archive")


sources = {
    "intro-and-ref-latest": source_archive_intro_and_ref_latest_star,
    "intro-and-ref-0.0": source_archive_intro_and_ref_0_0_star,
}
