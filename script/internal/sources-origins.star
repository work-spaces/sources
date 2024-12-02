"""
Defines where source archives can be downloaded. These are used
to generate the content of the `source-archives` folder in this repo.
"""

load("gnu-sources-origins.star", gnu_sources_origins = "sources_origins")

sources_origins =  {} | gnu_sources_origins


