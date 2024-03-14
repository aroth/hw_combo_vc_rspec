# frozen_string_literal: true

require "rails_helper"

RSpec.describe SearchComponent, type: :component do
  let(:object) { OpenStruct.new(source: [], errors: {}) }
  let(:form) { form_builder_for("model_name", object) }

  it "works" do
    render_inline described_class.new(form:)

    expect(rendered_content).to include("Search Component")
    expect(rendered_content).to have_css "input.hw-combobox__input"
  end
end