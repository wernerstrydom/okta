
resource "okta_group_rule" "app1_users" {
  name              = okta_group.app1_users.name
  status            = "ACTIVE"
  group_assignments = [okta_group.app1_users.id]
  expression_value = "isMemberOfAnyGroup(\"${okta_group.engineering.id}\", \"${okta_group.sales.id}\", \"${okta_group.marketing.id}\")"
}

resource "okta_group_rule" "app2_users" {
  name              = okta_group.app2_users.name
  status            = "ACTIVE"
  group_assignments = [okta_group.app2_users.id]
  expression_value = "isMemberOfAnyGroup(\"${okta_group.finance.id}\", \"${okta_group.sales.id}\", \"${okta_group.marketing.id}\")"
}

resource "okta_group_rule" "app3_users" {
  name              = okta_group.app3_users.name
  status            = "ACTIVE"
  group_assignments = [okta_group.app3_users.id]
  expression_value = "isMemberOfAnyGroup(\"${okta_group.engineering.id}\", \"${okta_group.support.id}\", \"${okta_group.it.id}\", \"${okta_group.sales_engineers.id}\")"
}

resource "okta_group_rule" "app4_users" {
  name              = okta_group.app4_users.name
  status            = "ACTIVE"
  group_assignments = [okta_group.app4_users.id]
  expression_value = "isMemberOfAnyGroup(\"${okta_group.engineering.id}\")"
}