module ApplicationHelper
  def component(component_name, locals = {}, &block)
    if locals.key?(:collection)
      partial = component_name.split('/').last.singularize
      partial = locals[:partial] if locals[:partial].present?
      path = "components/#{component_name}/#{partial}"
      render partial: path, collection: locals[:collection], as: locals[:as], locals: locals[:locals]
    else
      partial = component_name.split('/').last
      render("components/#{component_name}/#{partial}", locals, &block)
    end
  end

  alias c component

  def e_form_inline(form, attribute)
    return if form.blank?
    error = form.errors[attribute].first
    return if error.blank?
    content_tag :div, "#{attribute.capitalize} #{error}", class: 'invalid-feedback'
  end

  def alert_feedback
    return if flash.blank?
    case flash.keys.first
    when 'notice'
      content_tag :div, flash[:notice], class: 'alert alert-success js--alert-bar'
    when 'alert'
      content_tag :div, flash[:alert], class: 'alert alert-danger js--alert-bar'
    end
  end

  def cancel_link(href, klass: nil)
    link_to 'Cancel', href, class: "btn btn-secondary mr-2 #{klass}"
  end

  def text_submit(form)
    form.id.nil? ? 'Create' : 'Update'
  end
end
