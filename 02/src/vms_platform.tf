variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "vms_metadata" {
  type = map(object({
    serial-port-enable  = number
    ssh_keys = string
  }))
  default = {
    web = {
      serial-port-enable  = 1
      ssh_keys        = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4rkr7PjV2b7uISWT+a/PBlgLWSKND9Ynw6Uwnr+rbu+ivykgBuUN1Xkk8EQZYaM0y9o40mgkm4fYtFrt5+RB8mebF4wbxVrFrFE/GxEusyiu97184HdER2Cc05re8Wr2tH+skC0rnZR7DeSk8MQFjDI5pi0TU3WE6NbvxKi1s+UBf3Bo0Hv5uhU1/enz/LI+3Y1/DQZrk5iXHNbhLI2TTVrHuyAzgvQb6qKHxObhPZL7Ovt+hB3ZTHC+NFtS+gG3EPD3JYYryHdjKmBr07F7eE8nvzqk9aEDt2mHNUwF+UTHD0E3Z1G+QeixqODHsuPUK+q//XG9v/5P30ir+Egaqef/QPe/j0mdOfonTeFWG77c+5ibX/EzulzAP/wzEf3/5yDDbev6x7iRnGYpOFGd6idccVM/Q4u35jhha8lb4J+f4Lnsp+xQ6dIkB1aCYb9hv0OLyRihetHTZuriQbilqeQYb55z2sE+CKda1jU6PPbj5/a9u3D1WfgHWxvF3fh8="
    }
    db = {
      serial-port-enable  = 1
      ssh_keys        = "ubuntu:ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4rkr7PjV2b7uISWT+a/PBlgLWSKND9Ynw6Uwnr+rbu+ivykgBuUN1Xkk8EQZYaM0y9o40mgkm4fYtFrt5+RB8mebF4wbxVrFrFE/GxEusyiu97184HdER2Cc05re8Wr2tH+skC0rnZR7DeSk8MQFjDI5pi0TU3WE6NbvxKi1s+UBf3Bo0Hv5uhU1/enz/LI+3Y1/DQZrk5iXHNbhLI2TTVrHuyAzgvQb6qKHxObhPZL7Ovt+hB3ZTHC+NFtS+gG3EPD3JYYryHdjKmBr07F7eE8nvzqk9aEDt2mHNUwF+UTHD0E3Z1G+QeixqODHsuPUK+q//XG9v/5P30ir+Egaqef/QPe/j0mdOfonTeFWG77c+5ibX/EzulzAP/wzEf3/5yDDbev6x7iRnGYpOFGd6idccVM/Q4u35jhha8lb4J+f4Lnsp+xQ6dIkB1aCYb9hv0OLyRihetHTZuriQbilqeQYb55z2sE+CKda1jU6PPbj5/a9u3D1WfgHWxvF3fh8="
    }
  }
}
  
variable vm_image_family {
  type = string
  default = "ubuntu-2004-lts"
}

variable vm_web_instance_name {
  type = string
  default = "netology-develop-platform-web"
}

variable vm_web_instance_platform_id {
  type = string
  default = "standard-v2"
}

variable vm_web_instance_cores {
  type = number
  default = 2
}

variable vm_web_instance_memory {
  type = number
  default = 1
}

variable vm_web_instance_core_fraction {
  type = number
  default = 5
}

variable vm_web_instance_preemptible {
  type = bool
  default = true
}

variable vm_web_instance_nat_use {
  type = bool
  default = true
}

# variable vm_web_instance_serial_port_enable {
#   type = number
#   default = 1
# }

variable vm_db_instance_name {
  type = string
  default = "netology-develop-platform-db"
}

variable vm_db_instance_platform_id {
  type = string
  default = "standard-v2"
}

variable vm_db_instance_cores {
  type = number
  default = 2
}

variable vm_db_instance_memory {
  type = number
  default = 2
}

variable vm_db_instance_core_fraction {
  type = number
  default = 20
}

variable vm_db_instance_preemptible {
  type = bool
  default = true
}

variable vm_db_instance_nat_use {
  type = bool
  default = true
}

# variable vm_db_instance_serial_port_enable {
#   type = number
#   default = 1
# }

variable school {
  type = string
  default = "netology"
}

variable app_env {
  type = string
  default = "develop"
}