module AuthN
  # The AuthN engine takes care of extending ActiveRecord (if used) and ActionController,
  # With the plugin logic.
  class Engine < ::Rails::Engine
    config.authn = AuthN.config

    initializer "Extend ActionController with AuthN" do |app|
      ActionController::Base.send :include, AuthN::Session
      ActionController::Base.helper :current_user
      ActionController::Base.helper :logged_in?
    end
  end
end
