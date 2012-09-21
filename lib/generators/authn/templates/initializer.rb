# By default, assuming your user model is named Account, you wont have
# to do anything to this file. All config methods here show their default
# value.

# AuthN.config.unauthenticated_redirect_to_method = :root_path
<% if model_class_name == "Account" %>
# AuthN.config.account_klass = "<%= model_class_name %>"
<% else %>
AuthN.config.account_klass = "<%= model_class_name %>"
<% end %>
