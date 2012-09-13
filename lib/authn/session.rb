module AuthN
  module Session
    private

    def unauthenticated
      redirect_to send AuthN.config.unauthenticated_redirect_to_method
    end
  end
end
