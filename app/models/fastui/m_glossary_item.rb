# encoding: utf-8
module Fastui
  class MGlossaryItem < ActiveRecord::Base
    attr_accessible :title ,:note ,:name,:entity_kind,:actived, :org_id, :createdby, :updatedby,:help
    belongs_to :m_glossary, :class_name => 'Fastui::MGlossary'

    belongs_to :entity_kind, :class_name => 'Fastui::MGlossaryItem'
    belongs_to :actived, :class_name => 'Fastui::MGlossaryItem'
    belongs_to :org, :class_name => 'Fastui::MOrg'
    belongs_to :createdby, :class_name => 'Fastui::MPerson'
    belongs_to :updatedby, :class_name => 'Fastui::MPerson'
  end
end