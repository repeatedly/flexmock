require './lib/flexmock/version.rb'
spec = Gem::Specification.new do |s|
  #### Basic information.
  s.name = 'flexmock'
  s.version = FlexMock::VERSION
  s.summary = "Simple and Flexible Mock Objects for Testing"
  s.description = %{
    FlexMock is a extremely simple mock object class compatible
    with the Test::Unit framework.  Although the FlexMock's
    interface is simple, it is very flexible.
  }

  s.required_ruby_version = ">= 2.0"

  s.license = 'MIT'

  #### Dependencies and requirements.

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'

  #### Which files are to be included in this gem?  Everything!  (Except CVS directories.)

  s.files = Dir[
    '[A-Z]*',
    'lib/**/*.rb',
    'test/**/*.rb',
    '*.blurb',
    'install.rb'
  ]

  #### Load-time details: library and application (you will need one or both).

  s.require_path = 'lib'                         # Use these for libraries.

  #### Author and project details.

  s.authors = ["Jim Weirich", "Sylvain Joyeux"]
  s.email = "sylvain.joyeux@m4x.org"
  s.homepage = "https://github.com/doudou/flexmock"
end
