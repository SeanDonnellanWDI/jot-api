# frozen_string_literal: true

class Jot < ApplicationRecord
  validates :name, :content, presence: true
  belongs_to :user
end
