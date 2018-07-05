# frozen_string_literal: true

class JotSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  has_one :user
end
