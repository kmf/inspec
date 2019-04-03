require 'inspec/utils/telemetry/data_series'
require 'singleton'

module Inspec::Telemetry
  class Collector
    include Singleton

    def initialize
      @data_series = []
    end

    def add_data_series(data_series)
      @data_series << data_series
    end

    def list_data_series
      @data_series
    end

    def list_data_series_by_name(name)
      @data_series.select {|ds| ds.name.eql?(name)}
    end

    def reset
      @data_series = []
    end
  end
end
