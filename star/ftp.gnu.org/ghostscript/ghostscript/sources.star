"""star/ftp.gnu.org/ghostscript/ghostscript sources"""

load("6.51.star", source_archive_6_51_star = "source_archive")
load("7.07b.star", source_archive_7_07b_star = "source_archive")
load("fonts-std-5.10.star", source_archive_fonts_std_5_10_star = "source_archive")
load("5.10.star", source_archive_5_10_star = "source_archive")
load("fonts-other-5.10.star", source_archive_fonts_other_5_10_star = "source_archive")
load("5.10libpng.star", source_archive_5_10libpng_star = "source_archive")
load("5.10jpeg.star", source_archive_5_10jpeg_star = "source_archive")
load("7.05.star", source_archive_7_05_star = "source_archive")
load("6.53.star", source_archive_6_53_star = "source_archive")


sources = {
    "6.51": source_archive_6_51_star,
    "7.07b": source_archive_7_07b_star,
    "fonts-std-5.10": source_archive_fonts_std_5_10_star,
    "5.10": source_archive_5_10_star,
    "fonts-other-5.10": source_archive_fonts_other_5_10_star,
    "5.10libpng": source_archive_5_10libpng_star,
    "5.10jpeg": source_archive_5_10jpeg_star,
    "7.05": source_archive_7_05_star,
    "6.53": source_archive_6_53_star,
}
