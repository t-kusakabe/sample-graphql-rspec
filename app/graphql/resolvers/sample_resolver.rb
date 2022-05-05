# frozen_string_literal: true

module Resolvers
  class SampleResolver < Resolvers::BaseResolver
    type [Types::SampleType], null: false

    def resolve
      Sample.all
    end
  end
end
