require 'inspec/utils/telemetry'
require_relative '../../../helper.rb'

class TestTelemetryGlobalMethods < Minitest::Test
  def test_create_telemetry_data_series
    assert_kind_of Inspec::Telemetry::DataSeries, Inspec.create_telemetry_data_series('/resource/File')
  end

  def test_add_telemetry_data_series
    ds = Inspec.create_telemetry_data_series('/resource/File')
    assert Inspec.add_telemetry_data_series(ds)
  end
end
