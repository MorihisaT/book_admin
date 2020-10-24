class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  before_action do
    redirect_to access_denied_path if params[:token].blank?
  end
end
