require 'csv'

class AdminController < ApplicationController

  before_action :require_admin

  def hostings
    @hostings = Hosting.includes(:host).order(start_date: :desc)
    respond_to do |format|
      format.html
      format.csv {
        csv_file = CSV.generate(headers: true) do |csv|
          csv << %w(id created_at start_date host_name host_email city state link)
          @hostings.each do |h|
            csv << [h.id, h.created_at, h.start_date, h.host.first_name, h.host.email, h.city, h.state, edit_hosting_url(h)]
          end
        end
        send_data csv_file, filename: "hostings.csv"
      }
    end

  end

  private
  def require_admin
    unless current_user && current_user.admin
      redirect_to user_url(current_user)
    end
  end

end
