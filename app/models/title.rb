class Title < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '送付状' },
    { id: 3, name: '報告書' }

  ]
  include ActiveHash::Associations
  has_many :docs
end
