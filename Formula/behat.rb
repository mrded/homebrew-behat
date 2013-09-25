require 'formula'

class Behat < Formula
  homepage 'http://behat.org'
  head "https://github.com/Behat/Behat"
  url 'https://github.com/Behat/Behat/archive/3.0.zip'
  sha1 'c4acdee678cebfb204fe23a975943cdc9a6ab018'

  version "3.0"

  depends_on 'composer'

  def install
    system 'curl -O http://getcomposer.org/composer.phar'
    system 'php composer.phar install'

    prefix.install Dir['*']
  end

  test do
    system "false"
  end
end
