variable "tenant-short-name" {
  description = "The short name of the tenant"
  type        = string
}

variable production-subs {
  description = "subscription ids for production management group"
  type        = list(string)
  default = []
}

variable uat-subs {
  description = "subscription ids for uat management group"
  type        = list(string)
  default = []
}

variable dev-subs {
  description = "subscription ids for dev management group"
  type        = list(string)
  default = []
}

variable backup-subs {
  description = "subscription ids for backup management group"
  type        = list(string)
  default = []
}

variable connectivity-subs {
  description = "subscription ids for connectivity management group"
  type        = list(string)
  default = []
}

variable identity-subs {
  description = "subscription ids for identity management group"
  type        = list(string)
  default = []
}

variable management-subs {
  description = "subscription ids for management management group"
  type        = list(string)
  default = []
}

variable sandboxes-subs {
  description = "subscription ids for sandboxes management group"
  type        = list(string)
  default = []
}

variable decommissioned-subs {
  description = "subscription ids for decommissioned management group"
  type        = list(string)
  default = []
}

variable devops-subs {
  description = "subscription ids for devops management group"
  type        = list(string)
  default = []
}
