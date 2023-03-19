
resource "google_security_scanner_scan_config" "scan-config" {
  count            = var.include_provided_urls || var.include_static_ips ? 1 : 0
  project          = var.project
  provider         = google-beta
  display_name     = var.scan_name
  starting_urls    = local.starting_urls
  target_platforms = var.target_platforms
  max_qps          = 5
  schedule {
    schedule_time          = timeadd(timestamp(), var.delay)
    interval_duration_days = var.interval_duration_days
  }
}


