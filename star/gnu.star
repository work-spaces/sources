"""
Build an autotools project

"""

load(
    "//@star/sdk/star/checkout.star",
    "checkout_add_archive",
    "checkout_add_platform_archive",
    "checkout_update_env",
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
        autoreconf_args = None,
        configure_args = [],
        make_args = [],
        build_artifact_globs = None,
        deps = [],
        install_path = None):
    """
    Add an autotools project from an archive

    Args:
        name: The name of the project
        owner: The owner of the repository
        repo: The repository name
        version: The version of the repository
        autoreconf_args: The arguments to pass to the autoreconf script
        configure_args: The arguments to pass to the configure script
        make_args: The arguments to pass to the make
        build_artifact_globs: The globs to match the build artifacts
        deps: The dependencies of the project
        install_path: The path to install the project
    """

    checkout_archive_rule = "{}_checkout_archive".format(name)
    source_archive = gnu_sources[owner][repo][version]

    checkout_add_archive(
        checkout_archive_rule,
        url = source_archive["url"],
        sha256 = source_archive["sha256"],
    )

    gnu_add_configure_make_install(
        name,
        source_directory = "{}-{}".format(repo, version),
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
        install_path = None):
    """
    Add the autotools from source

    Args:
        name: The name of the add autotools ruls
        autoconf_version: The version of autoconf
        automake_version: The version of automake
        libtool_version: The version of libtool
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
    )

    gnu_add_configure_make_install_from_source(
        autoconf_rule,
        "autoconf",
        "autoconf",
        autoconf_version,
        install_path = effective_install_path,
    )

    gnu_add_configure_make_install_from_source(
        automake_rule,
        "automake",
        "automake",
        automake_version,
        deps = [autoconf_install_rule],
        install_path = effective_install_path,
    )

    gnu_add_configure_make_install_from_source(
        libtool_rule,
        "libtool",
        "libtool",
        libtool_version,
        deps = [autoconf_install_rule],
        install_path = effective_install_path,
    )

    checkout_update_env(
        update_env_rule,
        paths = ["{}/bin".format(effective_install_path)],
    )

    run_add_target(name, deps = [
        autoconf_install_rule,
        "{}_install".format(automake_rule),
        "{}_install".format(libtool_rule),
    ])

