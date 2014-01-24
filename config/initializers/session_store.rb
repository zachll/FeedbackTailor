# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_geoduck_session',
  :secret      => 'c4ce4005c946fd761249b2164eb7d78412aea0e7ee5429d72130f132d98b9fc4a2a00d25d002591c1152a6841c9d93e2f783543b0fc980c820b7ffd43a320f37'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
