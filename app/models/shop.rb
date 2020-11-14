class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :type
  belongs_to_active_hash :prefecture

  validates :type_id, presence: true
  validates :prefecture_id, presence: true
  validates :address, presence: true


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
