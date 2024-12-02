#!/usr/bin/env spaces

"""
Updates the source archives in the source-archives directory.

Usage Example:

./update-source-archives.star

"""

load("internal/sources-origins.star", "sources_origins")
load("internal/add-source-archive.star", "add_source_archive")
load("internal/update-sources.star", "update_sources")

def add_source_archives():
    """
    Updates the source archives in the source-archives directory.
    """

    for key in sources_origins:
        map = sources_origins[key]
        for version_map in map["versions"]:
            repo = version_map["repo"]
            version = version_map["version"]
            suffix = version_map["suffix"]
            add_source_archive(key, repo, version, suffix)
       
add_source_archives()
update_sources()
