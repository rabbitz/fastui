module Fastui
  class MGlossary < ActiveRecord::Base
    has_many :m_glossary_items, :class_name => 'Fastui::MGlossaryItem'
    has_many :m_properties, :as => :ref_type
  end
end
