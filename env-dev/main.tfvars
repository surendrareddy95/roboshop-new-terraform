env="dev"

database-instances = {
    mongodb = {
      app_port      = 27017
      instance_type = "t3.small"
    }
    redis = {
      app_port      = 6379
      instance_type = "t3.small"
    }
    mysql = {
      app_port      = 3306
      instance_type = "t3.small"
    }
    rabbitmq = {
      app_port      = 5672
      instance_type = "t3.small"
    }
}