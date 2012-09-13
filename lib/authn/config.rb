module AuthN
  class Config
    @@defaults.merge!(
      unauthenticated_redirect_to_method: :root_path)
  end
end
