class Importance < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '重要度　低い（一か月以内）'},
    {id: 3, name: '重要度　中(一週間以内）'},
    {id: 4, name: '重要度　高い（3日以内）'},
    {id: 5, name: '最重要！！！'},
  ]

  include ActiveHash::Associations
  has_many :memos

end