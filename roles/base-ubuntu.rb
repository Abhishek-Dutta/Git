# base-ubuntu.rb
name "base-ubuntu"
description "Base ro;e for Ubuntu servers"
run_list "recipe[apt::default]", "recipe[chef-client::cron]"