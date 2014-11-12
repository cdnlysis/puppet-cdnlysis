class cdnlysis::params {
  $config_path        = '/etc/cdnlysis.cfg'
  $influx_enabled     = true
  $mongo_enabled      = false
  $engine_verbose     = true
  $engine_threads     = 10
  $influx_host        = "${ipaddress}:8086"
  $influx_username    = "root"
  $influx_password    = "root"
  $influx_udp         = false
  $syncprogress_path  = "/tmp/cdn_sync_progress"
  $s3_accesskey       = ""
  $s3_secretkey       = ""
  $s3_bucket          = ""
  $s3_region          = "us-east-1"
  $logs_prefix        = "cdn"
  $logs_location      = "/tmp"
}
