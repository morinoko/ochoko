module ApplicationHelper
  def error_feedback(object:, attribute:)
    tag.div class: "invalid-feedback" do
      object.errors.full_messages_for(attribute.to_sym).first
    end
  end
end
