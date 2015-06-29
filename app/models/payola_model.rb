class PayolaModel < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  validates :name, uniqueness: true

  include Payola::Sellable

  def redirect_path(_sale)
    '/'
    #Rails.application.routes.url_helpers.receipt_cart_url(permalink)
  end
end
