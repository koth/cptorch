load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def cptorch_repositories():
    _maybe(
        http_archive,
        name = "com_googlesource_code_re2",
        sha256 = "e57eeb837ac40b5be37b2c6197438766e73343ffb32368efea793dfd8b28653b",
        strip_prefix = "re2-26cd968b735e227361c9703683266f01e5df7857",
        urls = [
            "https://mirror.bazel.build/github.com/google/re2/archive/26cd968b735e227361c9703683266f01e5df7857.tar.gz",
            "https://github.com/google/re2/archive/26cd968b735e227361c9703683266f01e5df7857.tar.gz",
        ],
    )
    _maybe(
        http_archive,
        name = "rules_cc",
        sha256 = "67412176974bfce3f4cf8bdaff39784a72ed709fc58def599d1f68710b58d68b",
        strip_prefix = "rules_cc-b7fe9697c0c76ab2fd431a891dbb9a6a32ed7c3e",
        urls = [
            "https://github.com/bazelbuild/rules_cc/archive/b7fe9697c0c76ab2fd431a891dbb9a6a32ed7c3e.zip",
        ],
    )
    

    _maybe(
        http_archive,
        name = "zlib_archive",
        build_file = "@com_koth_cptorch//third_party:zlib.BUILD",
        sha256 = "36658cb768a54c1d4dec43c3116c27ed893e88b02ecfcb44f2166f9c0b7f2a0d",
        strip_prefix = "zlib-1.2.8",
        urls = [
            # "http://bazel-mirror.storage.googleapis.com/zlib.net/zlib-1.2.8.tar.gz",
            "http://zlib.net/fossils/zlib-1.2.8.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "sentencepiece",
        sha256 = "588045b3852beea5343a22d3e79789dfb4139d1c5ce431c047aee2acb3301c75",
        strip_prefix = "sentencepiece-8bbe66cf2fb7ac3c022fc59e39f8405a89a49b22",
        urls = [
            "https://github.com/lieluoboai/sentencepiece/archive/8bbe66cf2fb7ac3c022fc59e39f8405a89a49b22.tar.gz",
        ],
    )
    
    _maybe(
        http_archive,
        name = "libtorch_unix",
        build_file = "@com_koth_cptorch//third_party:libtorch_unix.BUILD",
        sha256 = "a1a4bfe2090c418150cf38b37e43b3238b9639806f0c3483097d073792c2e114",
        strip_prefix = "libtorch",
        url = "https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-1.3.0%2Bcpu.zip",
    )
    _maybe(
        http_archive,
        name = "libtorch_mac",
        build_file = "@com_koth_cptorch//third_party:libtorch_mac.BUILD",
        strip_prefix = "libtorch",
        url = "https://download.pytorch.org/libtorch/cpu/libtorch-macos-1.3.0.zip",
    )
    

    _maybe(
        http_archive,
        name = "jsoncpp",
        build_file = "@com_koth_cptorch//third_party:jsonpp.BUILD",
        sha256 = "07d34db40593d257324ec5fb9debc4dc33f29f8fb44e33a2eeb35503e61d0fe2",
        strip_prefix = "jsoncpp-11086dd6a7eba04289944367ca82cea71299ed70",
        urls = [
            "https://github.com/open-source-parsers/jsoncpp/archive/11086dd6a7eba04289944367ca82cea71299ed70.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "rules_proto",
        sha256 = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
        strip_prefix = "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
            "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
        type = "tar.gz",
        url = "https://github.com/bazelbuild/bazel-skylib/releases/download/0.8.0/bazel-skylib.0.8.0.tar.gz",
    )

    _maybe(
        http_archive,
        name = "spdlog",
        build_file = "@com_koth_cptorch//third_party:spdlog.BUILD",
        strip_prefix = "spdlog-a7148b718ea2fabb8387cb90aee9bf448da63e65",
        sha256 = "c85af153ad14cf26e32396ba4d19d2371b16f99151f23aa3189e99e161813cdb",
        urls = [
            "https://github.com/gabime/spdlog/archive/a7148b718ea2fabb8387cb90aee9bf448da63e65.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "fmtlib",
        build_file = "@com_koth_cptorch//third_party:fmtlib.BUILD",
        strip_prefix = "fmt-9e554999ce02cf86fcdfe74fe740c4fe3f5a56d5",
        sha256 = "f131a0ecef42c84f59c087f9a1ab06cedb38c66e35b1cee231056b5e888e8cf6",
        urls = [
            "https://github.com/fmtlib/fmt/archive/9e554999ce02cf86fcdfe74fe740c4fe3f5a56d5.tar.gz",
        ],
    )
    
    _maybe(
        http_archive,
        name = "gulrak_filesystem",
        build_file = "@com_koth_cptorch//third_party:gulrak_filesystem.BUILD",
        strip_prefix = "filesystem-15a82e9098bcd30125248dc84dc95fc0402f3b40",
        sha256 = "5cfcd5c28600543b7f718f7661c4f892737c3c0ff1803ba9ac052ba2688f94a3",
        urls = [
            "https://github.com/gulrak/filesystem/archive/15a82e9098bcd30125248dc84dc95fc0402f3b40.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "torchvision",
        build_file = "@com_koth_cptorch//third_party:torchvision.BUILD",
        strip_prefix = "vision-0.4.0",
        sha256 = "c270d74e568bad4559fed4544f6dd1e22e2eb1c60b088e04a5bd5787c4150589",
        urls = [
            "https://github.com/pytorch/vision/archive/v0.4.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_tencent_rapidjson",
        build_file = "@com_koth_cptorch//third_party:rapidjson.BUILD",
        strip_prefix = "rapidjson-1.1.0",
        sha256 = "bf7ced29704a1e696fbccf2a2b4ea068e7774fa37f6d7dd4039d0787f8bed98e",
        urls = [
            "https://github.com/tencent/rapidjson/archive/v1.1.0.tar.gz",
        ],
    )
    native.bind(
        name = "rapidjson",
        actual = "@com_github_tencent_rapidjson//:rapidjson",
    )

    _maybe(
        http_archive,
        name = "utfcpp",
        build_file = "@com_koth_cptorch//third_party:utfcpp.BUILD",
        strip_prefix = "utfcpp-3.1",
        sha256 = "ab531c3fd5d275150430bfaca01d7d15e017a188183be932322f2f651506b096",
        urls = [
            "https://github.com/nemtrif/utfcpp/archive/v3.1.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "googletest",
        strip_prefix = "googletest-release-1.10.0",
        sha256 = "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb",
        urls = [
            "https://github.com/google/googletest/archive/release-1.10.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "utf8proc",
        build_file = "@com_koth_cptorch//third_party:utf8proc.BUILD",
        strip_prefix = "utf8proc-2.4.0",
        sha256 = "b2e5d547c1d94762a6d03a7e05cea46092aab68636460ff8648f1295e2cdfbd7",
        urls = [
            "https://github.com/JuliaStrings/utf8proc/archive/v2.4.0.tar.gz",
        ],
    )
