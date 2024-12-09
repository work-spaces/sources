"""star/ftp.gnu.org/gnu-crypto/gnu sources"""

load("crypto-2.1.0-bin.star", source_archive_crypto_2_1_0_bin_star = "source_archive")
load("crypto-2.1.0.star", source_archive_crypto_2_1_0_star = "source_archive")


sources = {
    "crypto-2.1.0-bin": source_archive_crypto_2_1_0_bin_star,
    "crypto-2.1.0": source_archive_crypto_2_1_0_star,
}
