class cdnlysis::config {
  ini_setting { 'backends_influx':
    section => 'Bacekends',
    setting => 'Influx',
    value   => $cdnlysis::influx_enabled,
  }

  ini_setting { 'backends_mongo':
    section => 'Bacekends',
    setting => 'Mongo',
    value   => $cdnlysis::mongo_enabled,
  }

  ini_setting { 'engine_verbose':
    section => 'Engine',
    setting => 'Verbose',
    value   => $cdnlysis::engine_verbose,
  }

  ini_setting { 'engine_threads':
    section => 'Engine',
    setting => 'Threads',
    value   => $cdnlysis::engine_threads,
  }

  ini_setting { 'influx_host':
    section => 'Influx',
    setting => 'Host',
    value   => "\"${cdnlysis::influx_host}\"",
  }

  ini_setting { 'influx_username':
    section => 'Influx',
    setting => 'Username',
    value   => "\"${cdnlysis::influx_username}\"",
  }

  ini_setting { 'influx_password':
    section => 'Influx',
    setting => 'Password',
    value   => "\"${cdnlysis::influx_password}\"",
  }

  ini_setting { 'influx_udp':
    section => 'Influx',
    setting => 'IsUDP',
    value   => $cdnlysis::influx_udp,
  }

  ini_setting { 'syncprogress_path':
    section => 'SyncProgress',
    setting => 'Path',
    value   => "\"${cdnlysis::syncprogress_path}\"",
  }

  ini_setting { 's3_accesskey':
    section => 'S3',
    setting => 'AccessKey',
    value   => "\"${cdnlysis::s3_accesskey}\"",
  }

  ini_setting { 's3_secretkey':
    section => 'S3',
    setting => 'SecretKey',
    value   => "\"${cdnlysis::s3_secretkey}\"",
  }

  ini_setting { 's3_bucket':
    section => 'S3',
    setting => 'Bucket',
    value   => "\"${cdnlysis::s3_bucket}\"",
  }

  ini_setting { 's3_region':
    section => 'S3',
    setting => 'Region',
    value   => "\"${cdnlysis::s3_region}\"",
  }

  ini_setting { 'logs_prefix':
    section => 'Logs',
    setting => 'Prefix',
    value   => "\"${cdnlysis::logs_prefix}\"",
  }

  ini_setting { 'logs_location':
    section => 'Logs',
    setting => 'Location',
    value   => "\"${cdnlysis::logs_location}\"",
  }

  # defaults for all settings
  Ini_setting {
    ensure  => present,
    path    => $cdnlysis::config_path,
  }
}

