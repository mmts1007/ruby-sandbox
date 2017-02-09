include_recipe './dependency.rb'

gem_package 'rails' do
  user       'vagrant'
  gem_binary '/home/vagrant/.rbenv/shims/gem'
  version    '5.0.1'
  options    ['--no-ri', '--no-rdoc']
end
