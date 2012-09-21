require_reative 'activation/actionmailer' if defined?(ActionMailer)

module AuthN
  module Activation
    module ClassMethods
      include AuthN::Activation::ActionMailer if defined?(ActionMailer)
    end
  end
end
