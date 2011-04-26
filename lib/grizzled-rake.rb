require 'rake'

# GrizzledRake
module GrizzledRake
  module TimeFormat
    # Set the strftime format for output message. Use '$m' in the format,
    # if you want milliseconds. A trailing blank is automatically added.
    @@timestamp_format = nil
    def timestamp_format=(format)
      @@timestamp_format = format
    end

    def s_now
      if @@timestamp_format
        now = Time.now
        ms = (now.usec / 1000).to_s
        fmt = @@timestamp_format
        now.strftime(fmt).sub('$m', ms) + ' '
      else
        ''
      end
    end
  end
end

include GrizzledRake::TimeFormat

# Force output from FileUtils to have a timestamp prefix.
module FileUtils
  include GrizzledRake::TimeFormat

  alias :real_fu_output_message :fu_output_message
  def fu_output_message(msg)
    @fileutils_label = s_now
    real_fu_output_message msg
  end
end

# Ditto for output from Rake itself.
alias :real_rake_output_message :rake_output_message
def rake_output_message(message)
  real_rake_output_message s_now + message
end

# Emit verbose message.
def vmessage(message)
  if RakeFileUtils.verbose_flag == true
    rake_output_message message
  end
end
