require 'rake'

module TimeFormat
  # Set the strftime format for output message. Use '$m' in the format,
  # if you want milliseconds.
  def timestamp_format=(format)
    @timestamp_format = format
  end

  def s_now
    now = Time.now
    ms = (now.usec / 1000).to_s
    now.strftime(@timestamp_format).sub('$m', ms)
  end
end
include TimeFormat

# Force output from FileUtils to have a timestamp prefix.
module FileUtils
  include TimeFormat

  alias :real_fu_output_message :fu_output_message
  def fu_output_message(msg)
    @fileutils_label = s_now + ' '
    real_fu_output_message msg
  end
end

# Ditto for output from Rake itself.
alias :real_rake_output_message :rake_output_message
def rake_output_message(message)
  real_rake_output_message s_now + ' ' + message
end
