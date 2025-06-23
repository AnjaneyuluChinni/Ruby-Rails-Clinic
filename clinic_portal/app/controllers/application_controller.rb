class ApplicationController < ActionController::Base
  include Pagy::Backend
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def receptionist_only
    unless current_user&.role == "receptionist"
      redirect_to patients_path, alert: "Access denied."
    end
  end
end
