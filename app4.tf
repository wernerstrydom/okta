resource "okta_app_bookmark" "app4" {
  label  = "App4"
  url    = "https://app4.example.com"
  lifecycle {
    ignore_changes = [groups]
  }
}

resource "okta_group" "app4_admins" {
  name        = "App4 Admins"
  description = "Folks who can administer App4"
}

resource "okta_group" "app4_users" {
  name        = "App4 Users"
  description = "Folks who can access App4"
}

resource "okta_app_group_assignments" "app4" {
  app_id   = okta_app_bookmark.app4.id
  group {
    id = okta_group.app4_admins.id
    priority = 1
  }
  group {
    id = okta_group.app4_users.id
    priority = 2
  }
}