begin
  require 'bundler/setup'
  require 'fuburake'
rescue LoadError
  puts 'Bundler and all the gems need to be installed prior to running this rake script. Installing...'
  system("gem install bundler --source http://rubygems.org")
  sh 'bundle install'
  system("bundle exec rake", *ARGV)
  exit 0
end


FubuRake::Solution.new do |sln|
	sln.compile = {
		:solutionfile => 'src/FubuMVC.Core.UI.sln'
	}
				 
	sln.assembly_info = {
		:product_name => "FubuMVC", # FubuMVC is right
		:copyright => 'Copyright 2009-2013 Jeremy D. Miller, Joshua Flanagan, Josh Arnold, et al. All rights reserved.'
	}
	
	sln.ripple_enabled = true
	sln.fubudocs_enabled = true
end
