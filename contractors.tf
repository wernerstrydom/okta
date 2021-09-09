resource "okta_group" "contractors" {
  name        = "Contractors"
  description = "Folks who are contractors"
}

resource "okta_group_rule" "contractors" {
  name              = okta_group.contractors.name
  status            = "ACTIVE"
  group_assignments = [okta_group.contractors.id]
  expression_value = "user.userType==\"Contractor\""
}
