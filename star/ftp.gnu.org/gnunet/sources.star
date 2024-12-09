"""star/ftp.gnu.org/gnunet sources"""

load("libgnunetchat/sources.star", libgnunetchat = "sources")
load("gnunet/sources.star", gnunet = "sources")
load("gnurl/sources.star", gnurl = "sources")
load("messenger/sources.star", messenger = "sources")


sources = {
    "libgnunetchat": libgnunetchat,
    "gnunet": gnunet,
    "gnurl": gnurl,
    "messenger": messenger,
}
