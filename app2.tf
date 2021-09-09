resource "okta_app_bookmark" "app2" {
  label  = "App2"
  url    = "https://app2.example.com"
  lifecycle {
    ignore_changes = [groups]
  }
}

resource "okta_group" "app2_admins" {
  name        = "App2 Admins"
  description = "Folks who can administer App2"
}

resource "okta_group" "app2_users" {
  name        = "App2 Users"
  description = "Folks who can access App2"
}

resource "okta_app_group_assignments" "app2" {
  app_id   = okta_app_bookmark.app2.id
  group {
    id = okta_group.app2_admins.id
    priority = 1
  }
  group {
    id = okta_group.app2_users.id
    priority = 2
  }
}