require "simpacker/configuration"
require "simpacker/manifest"
require "simpacker/helper"
require "simpacker/railtie" if defined?(Rails)

module Simpacker
  def self.config
    @config ||= Simpacker::Configuration.new
  end

  def self.manifest
    @manifest ||= Simpacker::Manifest.new(config)
  end
end