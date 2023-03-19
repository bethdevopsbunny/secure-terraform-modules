locals {

  provided_urls = var.include_provided_urls ? var.provided_starting_urls : [""]
  gathered_urls = var.include_static_ips ? [
  for ip in data.google_compute_addresses.static_ips.addresses : "http://${ip.address}"] : [""]
  starting_urls = distinct(compact(concat(local.gathered_urls, local.provided_urls)))

}