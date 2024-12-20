"""
Add Spaces SDK dependency
"""

checkout_path = info.get_path_to_checkout()

checkout.add_repo(
    rule = {"name": "{}/sdk".format(checkout_path)},
    repo = {
        "url": "https://github.com/work-spaces/sdk",
        "rev": "main",
        "checkout": "Revision",
        "clone": "Worktree"
    }
)