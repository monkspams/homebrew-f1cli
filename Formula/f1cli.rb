class F1cli < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool to fetch Formula 1 data"
  homepage "https://github.com/monkspams/f1cli"
  url "https://github.com/monkspams/f1cli/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "21eadc44785c6ed7307ec82cc04a2f04e58314c43b33663396eefa10f7e8421c"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/f1cli", "--help"
  end
end
