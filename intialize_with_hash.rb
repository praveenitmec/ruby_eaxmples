require 'active_model'
require 'active_support/all'
module Abc
  extend ActiveSupport::Concern
  include ActiveModel::Model

  included do
    alias_method :read_attribute_for_serialization, :send
  end
end

class Baseclass
	include Abc
	include ActiveModel::Model
end

class Childclass < Baseclass
	attr_accessor :age, :name
end

bas = Childclass.new({name: "praveen", age: 24})
puts bas.age, bas.name