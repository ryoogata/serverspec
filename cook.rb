require 'yaml'

properties = YAML.load_file('../properties.yml')

host = properties.keys.join
user =  properties[properties.keys.join][:user]
port =  properties[properties.keys.join][:port]
cookbook =  File::basename(Dir::pwd)

system("knife solo cook -p #{port} -i ../ssh.pem #{user}@#{host} #{cookbook}.json")
