include_recipe "php"

channel = php_pear_channel "pear.symfony.com" do
  action :discover
end

php_pear "YAML" do
  channel channel.channel_name
  action :install
end

channel = php_pear_channel "pear.phpunit.de" do
  action :discover
end

php_pear "PHPUnit" do
  channel channel.channel_name
  action :install
end
