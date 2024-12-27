class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'アカ'},
    {id: 3, name: 'ピンク'},
    {id: 4, name: 'オレンジ'},
    {id: 5, name: 'キイロ'},
    {id: 6, name: 'キミドリ'},
    {id: 7, name: 'ミズイロ'},
    {id: 8, name: 'アオ'},
    {id: 9, name: 'ムラサキ'},
  ]

  include ActiveHash::Associations
  has_many :memos

end