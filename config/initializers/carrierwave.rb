CarrierWave.configure do |config|
  config.fog_credentials = {
        :provider                         => 'Google',
        :google_storage_access_key_id     => 'GOOGGRGVM6SNO7MWRUC7',
        :google_storage_secret_access_key => 'znqSln89ld1xQaTtDiAKCkQGbn6/isptUkwMoZmH'
  }
  config.fog_directory = 'comotti'
end