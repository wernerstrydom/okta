resource "okta_app_bookmark" "app1" {
  label  = "App1"
  url    = "https://app1.example.com"
  lifecycle {
    ignore_changes = [groups]
  }
}

resource "okta_group" "app1_admins" {
  name        = "App1 Admins"
  description = "Folks who can administer App1"
}

resource "okta_group" "app1_users" {
  name        = "App1 Users"
  description = "Folks who can access App1"
}

resource "okta_app_group_assignments" "app1" {
  app_id   = okta_app_bookmark.app1.id
  group {
    id = okta_group.app1_admins.id
    priority = 1
  }
  group {
    id = okta_group.app1_users.id
    priority = 2
  }
}