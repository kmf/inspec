require 'inspec/utils/telemetry'

module Inspec
  def self.create_telemetry_data_series(name)
    Inspec::Telemetry::DataSeries.new(name)
  end

  def self.add_telemetry_data_series(data_series)
    collector = Inspec::Telemetry::Collector.instance
    collector.add_data_series(data_series)
  end
end
