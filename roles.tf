resource "okta_group" "software_engineers" {
  name        = "Software Engineers"
  description = "Folks who build stuff"
}

resource "okta_group_rule" "software_engineers" {
  name              = okta_group.software_engineers.name
  status            = "ACTIVE"
  group_assignments = [okta_group.software_engineers.id]
  expression_value = "user.title==\"Software Engineer\""
}

resource "okta_group" "qa" {
  name        = "Quality Assurance Engineers"
  description = "Folks who test stuff"
}

resource "okta_group_rule" "qa" {
  name              = okta_group.qa.name
  status            = "ACTIVE"
  group_assignments = [okta_group.qa.id]
  expression_value = "user.title==\"Quality Assurance Engineer\""
}

resource "okta_group" "operators" {
  name        = "Operators"
  description = "Folks who run stuff"
}

resource "okta_group_rule" "operators" {
  name              = okta_group.operators.name
  status            = "ACTIVE"
  group_assignments = [okta_group.operators.id]
  expression_value = "user.title==\"Operator\""
}

resource "okta_group" "financal_analysts" {
  name        = "Financial Analysts"
  description = "Folks who pay for stuff"
}

resource "okta_group_rule" "financal_analysts" {
  name              = okta_group.financal_analysts.name
  status            = "ACTIVE"
  group_assignments = [okta_group.financal_analysts.id]
  expression_value = "user.title==\"Financial Analyst\""
}

resource "okta_group" "support_engineers" {
  name        = "Support Engineers"
  description = "Folks who support stuff"
}

resource "okta_group_rule" "support_engineers" {
  name              = okta_group.support_engineers.name
  status            = "ACTIVE"
  group_assignments = [okta_group.support_engineers.id]
  expression_value = "user.title==\"Support Engineer\""
}

resource "okta_group" "salespeople" {
  name        = "Sales People"
  description = "Folks who sell stuff"
}

resource "okta_group_rule" "salespeople" {
  name              = okta_group.salespeople.name
  status            = "ACTIVE"
  group_assignments = [okta_group.salespeople.id]
  expression_value = "user.title==\"Sales Person\""
}

resource "okta_group" "sales_engineers" {
  name        = "Sales Engineers"
  description = "Folks who support folks who sell stuff"
}

resource "okta_group_rule" "sales_engineers" {
  name              = okta_group.sales_engineers.name
  status            = "ACTIVE"
  group_assignments = [okta_group.sales_engineers.id]
  expression_value = "user.title==\"Sales Engineer\""
}

resource "okta_group" "marketers" {
  name        = "Marketers"
  description = "Folks who support folks who sell stuff"
}

resource "okta_group_rule" "marketers" {
  name              = okta_group.marketers.name
  status            = "ACTIVE"
  group_assignments = [okta_group.marketers.id]
  expression_value = "user.title==\"Marketer\""
}

resource "okta_group" "helpdesk" {
  name        = "Help Desk Engineers"
  description = "Folks who support folks"
}

resource "okta_group_rule" "helpdesk" {
  name              = okta_group.helpdesk.name
  status            = "ACTIVE"
  group_assignments = [okta_group.helpdesk.id]
  expression_value = "user.title==\"Help Desk Engineer\""
}

resource "okta_group" "hrmanager" {
  name        = "Human Resources Manager"
  description = "Folks who fire folks"
}

resource "okta_group_rule" "hrmanager" {
  name              = okta_group.hrmanager.name
  status            = "ACTIVE"
  group_assignments = [okta_group.hrmanager.id]
  expression_value = "user.title==\"Human Resources Manager\""
}