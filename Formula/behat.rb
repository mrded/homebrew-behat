require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Behat < Formula
  homepage 'http://behat.org'
  head "https://github.com/Behat/Behat"
  url 'https://github.com/Behat/Behat/archive/v2.4.6.zip'
  sha1 'f8b7f64b3564a5c8684c8a527e4aff26c6e31144'

  version "2.4.6"

  def install
    bin.install ["bin/behat"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test v`.
    system "false"
  end
end
