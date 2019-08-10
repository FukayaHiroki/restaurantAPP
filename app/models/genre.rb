class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: "フレンチ"},
    {id: 2, name: "イタリアン"},
    {id: 3, name: "日本料理"},
    {id: 4, name: "寿司"}
  ]
end
