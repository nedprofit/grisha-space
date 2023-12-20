class LocalesController < ApplicationController
  def switch
    session[:locale] = params[:locale]
    I18n.locale = session[:locale]

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def switch_theme
    session[:theme] = params[:theme]

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end
