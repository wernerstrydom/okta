resource "okta_group" "engineering" {
  name        = "Engineering"
  description = "Folks who write software"
}

resource "okta_group_rule" "engineering" {
  name              = okta_group.engineering.name
  status            = "ACTIVE"
  group_assignments = [okta_group.engineering.id]
  expression_value = "user.department==\"${okta_group.engineering.name}\""
}

resource "okta_group" "sales" {
  name        = "Sales"
  description = "Folks who sell stuff"
}

resource "okta_group_rule" "sales" {
  name              = okta_group.sales.name
  status            = "ACTIVE"
  group_assignments = [okta_group.sales.id]
  expression_value = "user.department==\"${okta_group.sales.name}\""
}

resource "okta_group" "marketing" {
  name        = "Marketing"
  description = "Folks who market stuff"
}

resource "okta_group_rule" "marketing" {
  name              = okta_group.marketing.name
  status            = "ACTIVE"
  group_assignments = [okta_group.marketing.id]
  expression_value = "user.department==\"${okta_group.marketing.name}\""
}

resource "okta_group" "support" {
  name        = "Support"
  description = "Folks who support stuff"
}

resource "okta_group_rule" "support" {
  name              = okta_group.support.name
  status            = "ACTIVE"
  group_assignments = [okta_group.support.id]
  expression_value = "user.department==\"${okta_group.support.name}\""
}

resource "okta_group" "finance" {
  name        = "Finance"
  description = "Folks who handles the finances"
}

resource "okta_group_rule" "finance" {
  name              = okta_group.finance.name
  status            = "ACTIVE"
  group_assignments = [okta_group.finance.id]
  expression_value = "user.department==\"${okta_group.finance.name}\""
}

resource "okta_group" "it" {
  name        = "IT"
  description = "Folks who break stuff"
}

resource "okta_group_rule" "it" {
  name              = okta_group.it.name
  status            = "ACTIVE"
  group_assignments = [okta_group.it.id]
  expression_value = "user.department==\"${okta_group.it.name}\""
}

resource "okta_group" "hr" {
  name        = "HR"
  description = "Folks who fire folks"
}

resource "okta_group_rule" "hr" {
  name              = okta_group.hr.name
  status            = "ACTIVE"
  group_assignments = [okta_group.hr.id]
  expression_value = "user.department==\"${okta_group.hr.name}\""
}