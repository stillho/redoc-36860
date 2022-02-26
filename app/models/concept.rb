class Concept < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '社内' },
    { id: 3, name: '社外' }

  ]

  include ActiveHash::Associations
  has_many :docs
end
