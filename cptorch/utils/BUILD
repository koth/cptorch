package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "logging",
    srcs = [
        "logging.h",
    ],
    deps = [
        "@spdlog",
    ],
)

cc_library(
    name = "text_tokenizer",
    srcs = [
        "text_tokenizer.cc",
        "text_tokenizer.h",
    ],
    linkstatic = True,
    deps = [
        ":logging",
    ],
    alwayslink = True,
)

cc_library(
    name="basic_string_util",
    srcs=[
        "basic_string_util.h"
    ]
)