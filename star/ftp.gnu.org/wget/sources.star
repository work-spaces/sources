"""star/ftp.gnu.org/wget sources"""

load("wget/sources.star", wget = "sources")
load("wget2/sources.star", wget2 = "sources")


sources = {
    "wget": wget,
    "wget2": wget2,
}
