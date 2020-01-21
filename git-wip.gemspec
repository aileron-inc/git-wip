# frozen_string_literal: true

module Git
  module Wip
    VERSION = '0.3'
  end
end

Gem::Specification.new do |spec|
  spec.name          = 'git-wip'
  spec.version       = Git::Wip::VERSION
  spec.authors       = ['aileron']
  spec.email         = ['aileron.cc@gmail.com']

  spec.summary       = 'Automation create ( work in progress pull-request )'
  spec.description   = 'Automation create ( work in progress pull-request )'
  spec.homepage      = 'https://github.com/aileron-inc/git-wip/'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/aileron-inc/git-wip/'
  spec.metadata['changelog_uri'] = 'https://github.com/aileron-inc/git-wip/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_development_dependency 'bundler', '~> 2.0'
end
