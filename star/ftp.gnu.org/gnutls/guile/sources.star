"""star/ftp.gnu.org/gnutls/guile sources"""

load("gnutls-4.0.0.star", source_archive_gnutls_4_0_0_star = "source_archive")
load("gnutls-4.0.1.star", source_archive_gnutls_4_0_1_star = "source_archive")
load("gnutls-3.7.11.star", source_archive_gnutls_3_7_11_star = "source_archive")
load("gnutls-3.7.12.star", source_archive_gnutls_3_7_12_star = "source_archive")


sources = {
    "gnutls-4.0.0": source_archive_gnutls_4_0_0_star,
    "gnutls-4.0.1": source_archive_gnutls_4_0_1_star,
    "gnutls-3.7.11": source_archive_gnutls_3_7_11_star,
    "gnutls-3.7.12": source_archive_gnutls_3_7_12_star,
}
