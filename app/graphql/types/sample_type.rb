# frozen_string_literal: true

module Types
  class SampleType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
  end
end
