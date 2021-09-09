resource "okta_app_bookmark" "app3" {
  label  = "App3"
  url    = "https://app3.example.com"
  lifecycle {
    ignore_changes = [groups]
  }
}

resource "okta_group" "app3_admins" {
  name        = "App3 Admins"
  description = "Folks who can administer App3"
}

resource "okta_group" "app3_users" {
  name        = "App3 Users"
  description = "Folks who can access App3"
}

resource "okta_app_group_assignments" "app3" {
  app_id   = okta_app_bookmark.app3.id
  group {
    id = okta_group.app3_admins.id
    priority = 1
  }
  group {
    id = okta_group.app3_users.id
    priority = 2
  }
}