require_relative 'record'

class Player
  attr_reader :name, :record
  def initialize(name)
    @name = name
  end

  def create_record(record = Record.new)
    @record = record
  end
end
