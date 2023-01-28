import configparser
import os.path


def configure_delta():
    config = configparser.ConfigParser()
    config.read(os.path.expanduser("~/.gitconfig"))

    config["core"]["pager"] = "delta"

    config.add_section("interactive")
    config["interactive"]["diffFilter"] = "delta --color-only"

    config.add_section("delta")
    config["delta"]["navigate"] = "true"
    config["delta"]["side-by-side"] = "true"

    config.add_section("merge")
    config["merge"]["conflictstyle"] = "diff3"

    config.add_section("diff")
    config["diff"]["colorMoved"] = "default"

    with open(os.path.expanduser("~/.gitconfig"), 'w') as git_config:
        config.write(git_config)


def has_delta_configured():
    with open(os.path.expanduser("~/.gitconfig"), 'r') as git_config:
        contents = git_config.read()
        return "delta" in contents


def configure():
    if has_delta_configured():
        exit(0)
    else:
        configure_delta()


if __name__ == '__main__':
    configure()
