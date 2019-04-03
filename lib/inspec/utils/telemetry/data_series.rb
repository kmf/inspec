require 'json'

module Inspec::Telemetry
  class DataSeries

    def initialize(name)
      @name = name
    end

    attr_accessor :enabled
    attr_reader :name

    def data
      @data ||= []
    end

    def <<(appending_data)
      data << appending_data
    end

    alias_method :push, :<<

    def to_h
      {
        name: @name,
        data: @data,
      }
    end

    def to_json
      to_h.to_json
    end
  end
end
