require 'authn'
require 'rails'

module AuthN
  # The AuthN engine takes care of extending ActiveRecord (if used) and ActionController,
  # With the plugin logic.
  class Engine < Rails::Engine
    config.authn = AuthN.config

    initializer "extend Controller with AuthN" do |app|
      ActionController::Base.send :include, AuthN::Session
      ActionController::Base.helper_method :current_user
      ActionController::Base.helper_method :logged_in?
    end
  end
end
