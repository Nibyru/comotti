CarrierWave.configure do |config|
  config.fog_credentials = {
        :provider                         => 'Google',
        :google_storage_access_key_id     => 'GOOGDVE7HFBDYEEB3F6O',
        :google_storage_secret_access_key => '6fHVXL0LqsTCcbNmyd7bhEMk1RT7pASrhg5VUu0e'
  }
  config.fog_directory = 'comotti'
end