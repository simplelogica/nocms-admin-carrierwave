NoCms::Admin::FormBuilder.class_eval do

  def carrierwave_attachment carrierwave_field
    fields_for carrierwave_field, object.send(carrierwave_field) do |f_carrierwave_field|
      html_result = ''
      html_result += f_carrierwave_field.fields_for_translations do |f_translation|
        translation_html_result = ''
        translation_html_result += @template.image_tag(f_translation.object.attachment_url) if f_translation.object.attachment?
        translation_html_result += f_translation.file_field :attachment

        if f_translation.object.attachment?
          translation_html_result += f_translation.label :remove_attachment do
            f_translation.check_box(:remove_attachment) +
            I18n.t("activerecord.attributes.#{object.class.name.underscore}.remove_#{carrierwave_field}_attachment")
          end
        end
        @template.raw translation_html_result
      end
      @template.raw html_result
    end

  end

end
