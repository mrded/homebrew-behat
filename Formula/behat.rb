require 'formula'

class Behat < Formula
  homepage 'http://behat.org'
  head "https://github.com/Behat/Behat"
  url 'https://github.com/Behat/Behat/archive/v2.4.6.zip'
  sha1 'f8b7f64b3564a5c8684c8a527e4aff26c6e31144'

  version "2.4.6"

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
