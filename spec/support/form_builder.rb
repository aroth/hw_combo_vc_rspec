# frozen_string_literal: true

module FormBuilderHelper
  # Creates a form builder for the given model name and object which can be used
  # to render form components.
  def form_builder_for(model_name, object, builder: ActionView::Helpers::FormBuilder)
    lookup_context = ActionView::LookupContext.new([])
    assigns = {}
    controller = ActionController::Base.new
    view_context = ActionView::Base.new(lookup_context, assigns, controller)

    builder.new(model_name, object, view_context, {})
  end
end