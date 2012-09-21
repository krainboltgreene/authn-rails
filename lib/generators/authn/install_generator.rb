require 'rails/generators/migration'

module AuthN
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      class_option :model, model_option_options

      # Copy the initializer file to config/initializers folder.
      def copy_initializer_file
        template "initializer.rb", "config/initializers/authn.rb"
      end

      private

      # Either return the model passed in a classified form or return the default "Account".
      def model_class_name
        options[:model] ? options[:model].classify : "Account"
      end

      def model_option_options
        {
          optional: true,
          type: :string,
          banner: "model",
          desc: model_option_description
        }
      end

      def model_option_description
        "Define the name of your default 'User' class. Default Value: Account"
      end
    end
  end
end
