load("@poetry//:dependencies.bzl", "dependency")
load("@rules_python//python:defs.bzl", "py_binary")

py_binary(
    name = "example",
    srcs = ["example.py"],
    deps = [
        dependency("joblib"),
    ],
)
