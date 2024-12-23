"""
Creates the sources.star files in the sources folder
"""

def _path_to_variable_name(path):
    return path.replace("/", "_").replace("-", "_").replace(".", "_").lower()

def _create_source_archive_star_content(name, children):
    content = '"""{} sources"""\n\n'.format(name)
    for child in children:
        child_variable = _path_to_variable_name(child)
        content += 'load("{}", source_archive_{} = "source_archive")\n'.format(child, child_variable)
    content += '\n\nsources = {\n'
    for child in children:
        child_variable = _path_to_variable_name(child)
        strip_star = child.replace(".star", "")
        content += '    "{}": source_archive_{},\n'.format(strip_star, child_variable)
    content += '}\n'
    return content

def _create_sources_star_content(name, children):
    content = '"""{} sources"""\n\n'.format(name)
    for child in children:
        child_variable = _path_to_variable_name(child)
        content += 'load("{}/sources.star", {} = "sources")\n'.format(child, child_variable)
    content += '\n\nsources = {\n'
    for child in children:
        child_variable = _path_to_variable_name(child)
        content += '    "{}": {},\n'.format(child, child_variable)
    content += '}\n'
    return content

def _create_source_archive_star(path, children):
    content = _create_source_archive_star_content(path, children)
    file_path = "{}/sources.star".format(path)
    fs.write_string_to_file(path = file_path, content = content)

def _create_sources_star(path, children):
    content = _create_sources_star_content(path, children)
    file_path = "{}/sources.star".format(path)
    fs.write_string_to_file(path = file_path, content = content)


def _update_source_archive(path):
    entries = fs.read_directory("{}".format(path))
    source_archive_list = []
    for entry in entries:
        path_list = entry.split("/")
        if not entry.endswith("sources.star"):
            path_list = entry.split("/")
            script.print("Processing platform {}".format(path_list))
            source_archive_list.append(path_list[-1])
    _create_source_archive_star(path, source_archive_list)


def _update_repos(path):
    repos = fs.read_directory("{}".format(path))
    repo_list = []
    for repo in repos:
        path_list = repo.split("/")
        if not repo.endswith("sources.star"):
            script.print("Processing repo {}".format(repo))
            _update_source_archive(repo)
            repo_list.append(path_list[-1])
    _create_sources_star(path, repo_list)

def _update_owners(path):
    owners = fs.read_directory("{}".format(path))
    owner_list = []
    for owner in owners:
        path_list = owner.split("/")
        if not owner.endswith("sources.star"):
            script.print("Processing owner {}".format(owner))
            _update_repos(owner)
            owner_list.append(path_list[-1])
    _create_sources_star(path, owner_list)

def _update_domains(path):
    domains = fs.read_directory(path)
    domain_list = []
    for domain in domains:
        path_list = domain.split("/")
        if not domain.endswith("sources.star"):
            script.print("Processing domain {}".format(domain))
            _update_owners(domain)
            domain_list.append(path_list[-1])
    _create_sources_star(path, domain_list)


def update_sources():
    _update_domains("star")

