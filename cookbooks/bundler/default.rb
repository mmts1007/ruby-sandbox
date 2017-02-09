gem_package 'bundler' do
  user       'vagrant'
  gem_binary '/home/vagrant/.rbenv/shims/gem'
  options    ['--no-ri', '--no-rdoc']
end
