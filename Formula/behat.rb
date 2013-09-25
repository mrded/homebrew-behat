require 'formula'

class Behat < Formula
  homepage 'http://behat.org'
  head "https://github.com/Behat/Behat"
  url 'https://github.com/Behat/Behat/archive/2.5.zip'
  sha1 'a90b0e2e613372b4c4883ce07817641a92493cb5'

  version "2.5"

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
