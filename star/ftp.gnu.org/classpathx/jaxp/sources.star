"""star/ftp.gnu.org/classpathx/jaxp sources"""

load("1.3.star", source_archive_1_3_star = "source_archive")
load("module.star", source_archive_module_star = "source_archive")
load("1.1.star", source_archive_1_1_star = "source_archive")


sources = {
    "1.3": source_archive_1_3_star,
    "module": source_archive_module_star,
    "1.1": source_archive_1_1_star,
}
