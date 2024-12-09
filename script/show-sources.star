#!/usr/bin/env spaces

"""
Used for sanitizing the sources.
"""

load("../star/sources.star", "sources")

sources_string = json.to_string_pretty(sources)
script.print("Sources: {}".format(sources_string))