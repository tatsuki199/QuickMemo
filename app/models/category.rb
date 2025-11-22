class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '仕事'},
    {id: 3, name: '子供'},
    {id: 4, name: '家事'},
    {id: 5, name: '趣味'},
    {id: 6, name: 'キミドリ'},
    {id: 7, name: 'ミズイロ'},
    {id: 8, name: 'アオ'},
    {id: 9, name: 'ムラサキ'},
  ]

  include ActiveHash::Associations
  has_many :memos

end