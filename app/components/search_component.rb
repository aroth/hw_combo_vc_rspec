# frozen_string_literal: true

class SearchComponent < ViewComponent::Base
  def initialize(form:)
    @form = form
  end
  attr_reader :form
end
