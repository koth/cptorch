licenses(["notice"])  # Apache 2

cc_library(
    name = "spdlog",
    hdrs = glob([
        "include/**/*.cc",
        "include/**/*.h",
    ]),
    defines = ["SPDLOG_FMT_EXTERNAL"],
    includes = ["include"],
    visibility = ["//visibility:public"],
    deps = ["@fmtlib//:fmtlib"],
)