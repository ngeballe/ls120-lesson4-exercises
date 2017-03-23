class SecretFile
  attr_reader :data

  def initialize(secret_data, security_logger)
    @security_logger = security_logger
    @data = secret_data
  end

  def data
    @security_logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
    puts "log entry created..."
  end
end

sf = SecretFile.new("TOP SECRET!", SecurityLogger.new)
sf.data
