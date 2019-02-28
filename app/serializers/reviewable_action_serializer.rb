class ReviewableActionSerializer < ApplicationSerializer
  attributes :id, :icon, :label, :confirm_message, :description

  def label
    I18n.t(object.label)
  end

  def confirm_message
    I18n.t(object.confirm_message)
  end

  def description
    I18n.t(object.description, default: nil)
  end

  def include_description?
    description.present?
  end

  def include_confirm_message?
    object.confirm_message.present?
  end

end
