variable "name" {
  type        = string
  description = "(optional) the name of the application"
  default     = "App5"
}

resource "okta_app_bookmark" "main" {
  label = var.name
  url   = "https://app5.example.com"
  lifecycle {
    ignore_changes = [groups]
  }
}

resource "okta_group" "admins" {
  name        = "AppRole - ${var.name} - Admins"
  description = "Folks who can administer ${var.name}"
}

resource "okta_group" "billing" {
  name        = "AppRole - ${var.name} - Billing"
  description = "Folks who are view and pay bills of ${var.name}"
}

resource "okta_group" "users" {
  name        = "AppRole - ${var.name} - Users"
  description = "Folks who can access ${var.name}"
}

resource "okta_app_group_assignments" "main" {
  app_id = okta_app_bookmark.main.id
  group {
    id       = okta_group.admins.id
    priority = 1
  }
  group {
    id       = okta_group.users.id
    priority = 2
  }
}