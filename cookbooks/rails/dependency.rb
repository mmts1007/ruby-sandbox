case node[:platform]
when 'debian', 'ubuntu'
  package 'sqlite3'
  package 'libsqlite3-dev'
  package 'npm'
when 'redhat'
  package 'sqlite-devel'
  package 'epel-release'
  package 'nodejs' do
    options '--enablerepo=epel'
  end
  package 'npm' do
    options '--enablerepo=epel'
  end
else
end
