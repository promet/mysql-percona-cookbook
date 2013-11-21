# This recipe provides the Apt pkg manager repo details

include_recipe 'apt'

# These details were grabbed from:
# http://www.percona.com/doc/percona-server/5.5/installation/apt_repo.html
apt_repository 'percona-mysql' do
  uri          'http://repo.percona.com/apt'
  #for some reason this didn't work the way i planned 
  #even though it dropped in x86_64 successfully.  (i.e. recipe writer is a noob).
  #arch         node['kernel']['machine']
  arch         'amd64'
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keys.gnupg.net'
  key          '1C4CBDCDCD2EFD2A'
end
