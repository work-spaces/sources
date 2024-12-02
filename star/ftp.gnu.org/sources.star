"""star/ftp.gnu.org sources"""

load("libtool/sources.star", libtool = "sources")
load("gmp/sources.star", gmp = "sources")
load("groff/sources.star", groff = "sources")
load("libiconv/sources.star", libiconv = "sources")
load("wget/sources.star", wget = "sources")
load("mpfr/sources.star", mpfr = "sources")
load("readline/sources.star", readline = "sources")
load("gettext/sources.star", gettext = "sources")
load("mpc/sources.star", mpc = "sources")
load("make/sources.star", make = "sources")
load("autoconf/sources.star", autoconf = "sources")
load("m4/sources.star", m4 = "sources")
load("libidn/sources.star", libidn = "sources")
load("automake/sources.star", automake = "sources")


sources = {
    "libtool": libtool,
    "gmp": gmp,
    "groff": groff,
    "libiconv": libiconv,
    "wget": wget,
    "mpfr": mpfr,
    "readline": readline,
    "gettext": gettext,
    "mpc": mpc,
    "make": make,
    "autoconf": autoconf,
    "m4": m4,
    "libidn": libidn,
    "automake": automake,
}
