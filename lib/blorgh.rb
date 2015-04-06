# Initializer file of the plugin.

require "blorgh/engine"

module Blorgh

  # Secret key.
  mattr_accessor :secret_key
  @@secret_key = "blorgh"

  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"

  mattr_accessor :mailer_sender
  @@mailer_sender = 'admin@blorgh.com' 

  def self.setup
    yield self
  end
end
