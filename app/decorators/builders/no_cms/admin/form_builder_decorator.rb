NoCms::Admin::FormBuilder.class_eval do

  def carrierwave_attachment carrierwave_field
    fields_for carrierwave_field, object.send(carrierwave_field) do |f_carrierwave_field|
      f_carrierwave_field.fields_for_translations do |f_translation|

        @template.concat @template.image_tag(f_translation.object.attachment_url) if f_translation.object.attachment?

        @template.concat f_translation.file_field :attachment

        @template.concat f_translation.label :remove_attachment do
          f_translation.check_box :remove_attachment
          t("activerecord.attributes.#{object.class.underscore}.remove_#{carrierwave_field}_attachment")
        end if f_translation.object.attachment?
      end
    end
  end

end
