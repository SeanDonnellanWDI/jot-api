# frozen_string_literal: true

class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :title, :published
  has_one :user
end
