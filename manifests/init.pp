class cdnlysis (
  $config_path        = $cdnlysis::params::config_path,
  $engine_verbose     = $cdnlysis::params::engine_verbose,
  $engine_threads     = $cdnlysis::params::engine_threads,
  $influx_host        = $cdnlysis::params::influx_host,
  $influx_username    = $cdnlysis::params::influx_username,
  $influx_password    = $cdnlysis::params::influx_password,
  $syncprogress_path  = $cdnlysis::params::syncprogress_path,
  $s3_accesskey       = $cdnlysis::params::s3_accesskey,
  $s3_secretkey       = $cdnlysis::params::s3_secretkey,
  $s3_bucket          = $cdnlysis::params::s3_bucket,
  $s3_region          = $cdnlysis::params::s3_region,
) inherits cdnlysis::params {
  class { 'cdnlysis::config': }
}

