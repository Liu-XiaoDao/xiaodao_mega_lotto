require "xiaodao_mega_lotto/version"
require "xiaodao_mega_lotto/configuration"
require "xiaodao_mega_lotto/drawing"
begin
  require "pry"
rescue LoadError
end

module XiaodaoMegaLotto
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
