class PagesController < ApplicationController
  include HighVoltage::StaticPage

  def not_found
    render('pages/not_found', :status => 404)
  end

  def internal_server_error
    render('pages/internal_server_error', :status => 500)
  end

end
