##  gcp-scc-webscan-terraform

This is a module for interacting with the Google Cloud [Web Security Scanner](https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview)

It allows you to define a list of urls that you wish to scan:<br>
    using the `"include_provided_urls"` and `"provided_starting_urls"` variable<br><br>

It also allows you to pull from the list of static ips in your project:<br>
    using the `"include_static_ips"` variable<br>