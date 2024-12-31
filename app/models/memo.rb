class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :importance
  has_one_attached :image

  validates :title, :detail, presence: true

  validates :category_id, :importance_id, numericality: {other_than: 1 , message: "can't be blank"}

end
