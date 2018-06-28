class JotSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :active
  has_one :user
end
