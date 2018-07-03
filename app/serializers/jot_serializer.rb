# frozen_string_literal: true

class JotSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :active
  has_one :user
end
