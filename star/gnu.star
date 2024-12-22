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
    "//@star/sdk/star/capsule.star",
    "capsule",
    "capsule_add_checkout_and_run",
)
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
        build_artifact_globs = [],
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

def gnu_capsule(repo, owner = None, domain = "ftp.gnu.org"):
    """
    Get the capsule descriptor for the GNU source

    Args:
        repo: The repository name
        owner: The owner of the repository
        domain: The domain of the repository (Default is ftp.gnu.org)
    """
    effective_owner = owner if owner else repo
    return capsule(domain, effective_owner, repo)

def gnu_capsule_add_checkout_and_run(
        name,
        capsule,
        version,
        oras_url = None,
        gh_deploy_repo = None,
        checkout_function = None,
        suffix = "tar.gz",
        configure_args = []):
    """
    Add the checkout and run if the install path does not exist

    Args:
        name: The name of the capsule
        capsule: The capsule descriptor
        version: The version of the repository
        oras_url: The ORAS URL to deploy the capsule
        gh_deploy_repo: The repository to deploy the capsule to
        checkout_function: The checkout function
        suffix: The suffix of the archive file (tar.gz, tar.xz, tar.bz2, zip)
        configure_args: The arguments to pass to the configure script
    """

    def build_function(name, install_path, args):
        checkout_function()

        gnu_add_configure_make_install_from_source(
            name,
            owner = args["owner"],
            repo = args["repo"],
            version = args["version"],
            install_path = install_path,
            configure_args = args["configure_args"],
        )

    capsule_add_checkout_and_run(
        name,
        capsule = capsule,
        version = version,
        oras_url = oras_url,
        gh_deploy_repo = gh_deploy_repo,
        suffix = suffix,
        build_function = build_function,
        build_function_args = {
            "owner": capsule["owner"],
            "repo": capsule["repo"],
            "version": version,
            "configure_args": configure_args,
        },
    )
