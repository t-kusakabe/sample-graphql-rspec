# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Samples' do
  describe 'sample' do
    it 'loads samples' do
      create_list(:sample, 3)

      query_string = <<-GRAPHQL
{
  samples {
    id
    name
  }
}
      GRAPHQL

      result = SampleGraphqlRspecSchema.execute(query_string, context: {}, variables: {})
      puts result.inspect
      assert_equal 3, result['data']['samples'].size
    end
  end
end
