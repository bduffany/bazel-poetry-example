load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    sha256 = "b593d13bb43c94ce94b483c2858e53a9b811f6f10e1e0eedc61073bd90e58d9c",
    strip_prefix = "rules_python-0.12.0",
    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.12.0.tar.gz",
)

load("@rules_python//python:repositories.bzl", "python_register_toolchains")

python_register_toolchains(
    name = "python3_10",
    # Available versions are listed in @rules_python//python:versions.bzl.
    python_version = "3.10.6",
)

http_archive(
    name = "com_sonia_rules_poetry",
    sha256 = "8a7a6a5d2ef859ba4309929f3b4d61031f2a4bfed6f450f04ab09443246a4b5c",
    strip_prefix = "rules_poetry-ecd0d9c66b89403667304b11da3bd99764797a63",
    urls = ["https://github.com/soniaai/rules_poetry/archive/ecd0d9c66b89403667304b11da3bd99764797a63.tar.gz"],
)

load("@com_sonia_rules_poetry//rules_poetry:defs.bzl", "poetry_deps")

poetry_deps()

load("@com_sonia_rules_poetry//rules_poetry:poetry.bzl", "poetry")

poetry(
    name = "poetry",
    lockfile = "//:poetry.lock",
    pyproject = "//:pyproject.toml",
    # optional, if you would like to pull from pip instead of a Bazel cache
    tags = ["no-remote-cache"],
)
