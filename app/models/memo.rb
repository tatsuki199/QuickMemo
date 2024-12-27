class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :importance

  validates :title, :detail, presence: true

  validates :category_id, :importance_id, numericality: {other_than: 1 , message: "can't be blank"}
end
