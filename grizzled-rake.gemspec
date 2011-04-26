#                                                                -*- ruby -*-

Gem::Specification.new do |spec|

  require 'rake'

  spec.rubygems_version = '1.3.5'

  spec.name             = 'grizzled-rake'
  spec.version          = '0.1.1'
  spec.date             = '2011-04-26'

  spec.summary          = 'Local Rake customizations'
  spec.description      = 'grizzled-rake provides local Rake customizations'

  spec.authors          = ['Brian M. Clapper']
  spec.email            = 'bmc@clapper.org'
  spec.homepage         = 'http://github.com/bmc/grizzled-rake'

  # = MANIFEST =
  spec.files            = FileList['lib/**/*.rb'].to_a
end


