"""star/ftp.gnu.org/gnutls sources"""

load("guile/sources.star", guile = "sources")
load("gnutls/sources.star", gnutls = "sources")


sources = {
    "guile": guile,
    "gnutls": gnutls,
}
