# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_de_sbm_session',
  :secret      => '318f2735a6e0c94d6c2dad18836c50d2b39017845345a8b20b94075b52b707c22d610cdbe58e1f9bece99b6866d0627d5f8db878588ad498b77d29f1d85c7491'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
