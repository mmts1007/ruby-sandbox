node.reverse_merge!(
  rbenv: {
    user: 'vagrant',
    global: '2.3.3',
    versions: %w[
      2.3.3
    ],
  }
)

include_recipe "rbenv::user"

execute 'Add rbenv PATH to .bash_profile' do
  user    'vagrant'
  command %q[ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile ]
  not_if  "grep '.rbenv/bin:$PATH' ~/.bash_profile"
end
execute 'Add rbenv settings to .bash_profile' do
  user    'vagrant'
  command %q[ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile ]
  not_if  "grep '$(rbenv init -)' ~/.bash_profile"
end
