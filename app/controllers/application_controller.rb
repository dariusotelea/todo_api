class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  def api_params(*attrs)
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, key_transform: :unaltered).slice(*attrs)
  end

  def api_param(attr)
    api_params(attr)[attr]
  end
end
