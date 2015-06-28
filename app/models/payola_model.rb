class PayolaModel < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  include Payola::Sellable
end
