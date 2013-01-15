include_recipe "php"

channels = %w{pear.phpunit.de pear.symfony.com}
channels.each do |chan|
  php_pear_channel chan do
    action [:discover, :update]
  end
end

php_pear "PEAR" do
  action :upgrade
end

php_pear "PHPUnit" do
  channel "phpunit"
  action :install
end
