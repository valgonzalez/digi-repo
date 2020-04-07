name "ntp"

run_list "recipe[ntp]"

default_attributes "ntp" => {
        "servers" => ["172.27.96.126", "172.27.65.37"]
}
