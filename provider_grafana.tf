terraform{
  required_providers{
      grafana = {
          source = "grafana/grafana"
      }
  }
}
provider "grafana" {
  url  = "http://localhost:3000"
  auth = "eyJrIjoiMnd........"
}

resource "grafana_data_source" "prometheus" {
  type          = "prometheus"
  name          = "amp"
  is_default    = true
  url           = "INSERT YOUR AMP WORKSPACE URL HERE "
  json_data {
    http_method     = "POST"
    sigv4_auth      = true
    sigv4_auth_type = "workspace-iam-role"
    sigv4_region    = "eu-central-1"
  }
}
