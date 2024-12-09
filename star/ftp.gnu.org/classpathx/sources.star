"""star/ftp.gnu.org/classpathx sources"""

load("crypto/sources.star", crypto = "sources")
load("mail/sources.star", mail = "sources")
load("activation/sources.star", activation = "sources")
load("comm/sources.star", comm = "sources")
load("gnujaxp/sources.star", gnujaxp = "sources")
load("jaxp/sources.star", jaxp = "sources")


sources = {
    "crypto": crypto,
    "mail": mail,
    "activation": activation,
    "comm": comm,
    "gnujaxp": gnujaxp,
    "jaxp": jaxp,
}
