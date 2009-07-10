# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_browsercmsdemo_session',
  :secret      => '50fe4dc4ff72c75648062b54a5d892eaa2b90a402db542a17d21276485bdf7ceee7b608e10af2806d04ef51086bc4ad1737f9456eee7999b8b83e45f9ec0be58'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
