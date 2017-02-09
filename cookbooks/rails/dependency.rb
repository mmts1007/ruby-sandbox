package 'sqlite-devel'
package 'epel-release'
package 'nodejs' do
  options '--enablerepo=epel'
end
package 'npm' do
  options '--enablerepo=epel'
end
