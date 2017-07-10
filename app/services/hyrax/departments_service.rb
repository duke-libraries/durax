# services/departments_service.rb
module Hyrax
  class DepartmentsService < QaSelectService
    def initialize
      super('departments')
    end

    cattr_accessor :authority
    self.authority = Qa::Authorities::Local.subauthority_for('departments')
    
    def self.label(id)
      authority.find(id).fetch('term')
    end

    def include_current_value(value, _index, render_options, html_options)
      unless value.blank? || active?(value)
        html_options[:class] << 'force-select'
        render_options += [[label(value), value]]
      end
      [render_options, html_options]
    end
  
  end

end