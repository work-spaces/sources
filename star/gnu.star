"""
Build an autotools project

"""

load(
    "//@star/sdk/star/checkout.star",
    "checkout_add_archive",
    "checkout_add_platform_archive",
    "checkout_update_env",
    "CHECKOUT_TYPE_OPTIONAL",
)
load("//@star/sdk/star/run.star", "run_add_target")
load("//@star/sdk/star/gnu.star", "gnu_add_configure_make_install")
load(
    "//@star/packages/star/github.com/packages.star",
    github_packages = "packages",
)
load("ftp.gnu.org/sources.star", gnu_sources = "sources")

def gnu_add_configure_make_install_from_source(
        name,
        owner,
        repo,
        version,
        domain = "ftp.gnu.org",
        autoreconf_args = None,
        configure_args = [],
        make_args = [],
        build_artifact_globs = None,
        deps = [],
        checkout_rule_type = None,
        install_path = None):
    """
    Add an autotools project from an archive

    Args:
        name: The name of the project
        domain: domain of source (ie: ftp.gnu.org)
        owner: The owner of the repository
        repo: The repository name
        version: The version of the repository
        autoreconf_args: The arguments to pass to the autoreconf script
        configure_args: The arguments to pass to the configure script
        make_args: The arguments to pass to the make
        build_artifact_globs: The globs to match the build artifacts
        deps: The dependencies of the project
        checkout_rule_type: the checkout rule type. Use Optional to skip
        install_path: The path to install the project
    """

    checkout_archive_rule = "{}_checkout_archive".format(name)
    source_archive = gnu_sources[owner][repo][version]

    checkout_add_archive(
        checkout_archive_rule,
        url = source_archive["url"],
        sha256 = source_archive["sha256"],
        type = checkout_rule_type
    )

    if checkout_rule_type != CHECKOUT_TYPE_OPTIONAL:
        gnu_add_configure_make_install(
            name,
            source_directory = "{}/{}-{}".format(domain, repo, version),
            autoreconf_args = autoreconf_args,
            configure_args = configure_args,
            make_args = make_args,
            deps = deps,
            build_artifact_globs = build_artifact_globs,
            install_path = install_path,
        )

def gnu_add_autotools_from_source(
        name,
        autoconf_version,
        automake_version,
        libtool_version,
        checkout_rule_type = None,
        install_path = None):
    """
    Add the autotools from source

    Args:
        name: The name of the add autotools ruls
        autoconf_version: The version of autoconf
        automake_version: The version of automake
        libtool_version: The version of libtool
        checkout_rule_type: The checkout rule type
        install_path: The path to install the autotools
    """

    autoconf_rule = "{}_autoconf".format(name)
    autoconf_install_rule = "{}_install".format(autoconf_rule)
    automake_rule = "{}_automake".format(name)
    libtool_rule = "{}_libtool".format(name)
    update_env_rule = "{}_update_env".format(name)

    workspace = info.get_absolute_path_to_workspace()
    effective_install_path = "{}/build/install/autotools".format(workspace) if install_path == None else install_path

    checkout_add_platform_archive(
        "m4-1",
        platforms = github_packages["xpack-dev-tools"]["m4-xpack"]["v1.4.19-3"],
        type = checkout_rule_type,
    )

    gnu_add_configure_make_install_from_source(
        autoconf_rule,
        "autoconf",
        "autoconf",
        autoconf_version,
        install_path = effective_install_path,
        type = type,
    )

    gnu_add_configure_make_install_from_source(
        automake_rule,
        "automake",
        "automake",
        automake_version,
        deps = [autoconf_install_rule],
        install_path = effective_install_path,
        checkout_rule_type = checkout_rule_type
    )

    gnu_add_configure_make_install_from_source(
        libtool_rule,
        "libtool",
        "libtool",
        libtool_version,
        deps = [autoconf_install_rule],
        install_path = effective_install_path,
        checkout_rule_type = checkout_rule_type
    )

    checkout_update_env(
        update_env_rule,
        paths = ["{}/bin".format(effective_install_path)],
        type = checkout_rule_type
    )

    if type != CHECKOUT_TYPE_OPTIONAL:
        run_add_target(name, deps = [
            autoconf_install_rule,
            "{}_install".format(automake_rule),
            "{}_install".format(libtool_rule),
        ])

