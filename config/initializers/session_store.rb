# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_protonight-csvimport_session',
  :secret      => '3fdc8356a073c96ba38d8ad0906826a3b7c2373d935c3f7ab6e2a1bb171dbea0de9198929baed459b2e1a03597ef9b375bd9731ed095ebaa4c1fb10194bb9d6a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
