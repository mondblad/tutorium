terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = ">= 0.4.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = var.bootstrap_servers

  tls_enabled    = false
  skip_tls_verify = true
  timeout        = 10
}

resource "kafka_topic" "user_created" {
  name               = var.topic_user_created
  partitions         = 1
  replication_factor = 1
  config = {
    "cleanup.policy" = "delete"
    "retention.ms"   = "604800000" # 7 дней
  }
}
