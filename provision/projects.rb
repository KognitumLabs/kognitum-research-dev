require 'colorize'
require 'git'
require 'fileutils'

puts 'cloning projects...'

[
    'cognitive-lib'
].each do |project|
  if File.directory?("/vagrant/projects/#{project}")
    puts "project #{project} already cloned"
  else
    puts "cloning #{project}"
    Git.clone("git@github.com:KognitumLabs/#{project}.git", "/vagrant/projects/#{project}")
    system "ln -s /vagrant/projects/#{project} ~/#{project}"
    puts "creating virtualenv #{project}-env"
    system "bash -c 'source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv -a ~/#{project} #{project}-env &> /dev/null'"
  end
end
