resource "okta_group" "employees" {
  name        = "Employees"
  description = "Folks who are employees"
}

resource "okta_group_rule" "employees" {
  name              = okta_group.employees.name
  status            = "ACTIVE"
  group_assignments = [okta_group.employees.id]
  expression_value = "user.userType==\"Employee\""
}

