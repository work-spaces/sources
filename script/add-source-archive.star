#!/usr/bin/env spaces

"""
Adds a source archive to the sources directory

./script/add-source-archive.star --name=ftp.gnu.org_gnu_ncurses --repo=ncurses --suffix=tar.gz --version=6.5
"""

load("internal/add-source-archive.star", "add_source_archive")
load("internal/update-sources.star", "update_sources")


args = script.get_args()
name = args["named"]["--name"]
repo = args["named"]["--repo"]
suffix = args["named"]["--suffix"]
version = args["named"]["--version"]

add_source_archive(name, repo, version, suffix)
update_sources()
