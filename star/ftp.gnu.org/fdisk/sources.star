"""star/ftp.gnu.org/fdisk sources"""

load("fdisk/sources.star", fdisk = "sources")
load("gnufdisk/sources.star", gnufdisk = "sources")


sources = {
    "fdisk": fdisk,
    "gnufdisk": gnufdisk,
}
