class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def  hello
    render html: "Seja bem-vindo"
    render html: "Seja bem-vindo2"
  end
end
