#                                                                -*- ruby -*-
Gem::Specification.new do |spec|

  require 'rake'

  spec.rubygems_version = '1.3.5'

  spec.name             = 'grizzled-rake'
  spec.version          = '0.1.0'
  spec.date             = '2011-03-08'

  spec.summary          = 'Some additional stuff for Rake'
  spec.description      = spec.summary

  spec.authors          = ['Brian M. Clapper']
  spec.email            = 'bmc@clapper.org'
  spec.homepage         = 'http://github.com/bmc/grizzled-rake'

  # = MANIFEST =
  spec.files            = FileList['lib/**/*.rb'].to_a
end


