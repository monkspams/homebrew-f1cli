class F1cli < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool to fetch Formula 1 data"
  homepage "https://github.com/monkspams/f1cli"
  url "https://github.com/monkspams/f1cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "0901d5a00eef631969e41e14f95729e4fdfbf03df8310d8f0bd933409502efb2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/f1cli", "--help"
  end
end
