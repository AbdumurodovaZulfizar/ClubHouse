module ApplicationHelper
  def alert_btn
    if notice
      render :partial => "layouts/alerts"
    end
  end
end
