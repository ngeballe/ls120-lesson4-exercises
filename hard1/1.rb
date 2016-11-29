# Question 1

# Alyssa has been assigned a task of modifying a class that was initially created to keep track of secret information. The new requirement calls for adding logging, when clients of the class attempt to access the secret data. Here is the class in its current form:

class SecretFile
  attr_reader :data

  def initialize(secret_data)
    @data = secret_data
  end
end

# She needs to modify it so that any access to data must result in a log entry being generated. That is, any call to the class which will result in data being returned must first call a logging class. The logging class has been supplied to Alyssa and looks like the following:

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end

# Hint: Assume that you can modify the initialize method in SecretFile to have an instance of SecurityLogger be passed in as an additional argument. It may be helpful to review the lecture on collaborator objects for this exercise.

# Answer:

# class SecretFile
#   attr_reader :data, :security_logger

#   def initialize(secret_data, security_logger)
#     @data = secret_data
#     @security_logger = security_logger
#   end
# end

# class SecurityLogger
#   def create_log_entry
#     # ... implementation omitted ...
#     puts "Creating log entry..."
#   end
# end

# secret_file = SecretFile.new("This is a secret", SecurityLogger.new)
# p secret_file

# CORRECTION:

class SecretFile
  attr_reader :data

  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry
    puts "Creating log entry . . ."
  end
end

secret_file = SecretFile.new("Pssst! Pass it on!", SecurityLogger.new)
p secret_file.data
