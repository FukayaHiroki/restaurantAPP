class Scene < ActiveHash::Base
  self.data = [
    {id: 1, name: "恋人や家族との大切な日"},
    {id: 2, name: "会社の人などと接待"},
    {id: 3, name: "友人とカジュアル"},
    {id: 4, name: "その他"}
  ]
end
