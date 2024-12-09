"""star/ftp.gnu.org/classpath sources"""

load("classpath/sources.star", classpath = "sources")
load("gjdoc/sources.star", gjdoc = "sources")
load("inetlib/sources.star", inetlib = "sources")


sources = {
    "classpath": classpath,
    "gjdoc": gjdoc,
    "inetlib": inetlib,
}
