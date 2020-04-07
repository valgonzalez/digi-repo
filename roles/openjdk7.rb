name "openjdk7"
description "Install OpenJDK"
default_attributes(
  "java" => {
    "install_flavor" => "openjdk",
    "jdk_version" => "7"
  }
)
run_list(
  "recipe[java]"
)
