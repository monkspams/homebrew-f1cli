class F1cli < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool to fetch Formula 1 data"
  homepage "https://github.com/monkspams/f1cli"
  url "https://github.com/monkspams/f1cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7f6e5efe3c3ab581b57f26378e2b089092cc2eb7dfcef55c16d0d37162ecff2a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/f1cli", "--help"
  end
end
