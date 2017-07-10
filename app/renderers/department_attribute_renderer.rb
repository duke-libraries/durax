class DepartmentAttributeRenderer < Hyrax::Renderers::AttributeRenderer
  def attribute_value_to_html(value)
    %(<span itemprop="department">#{Hyrax::DepartmentsService.label(value)}</span>)
  end
end
