class F1cli < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool to fetch Formula 1 data"
  homepage "https://github.com/monkspams/f1cli"
  url "https://github.com/monkspams/f1cli/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "7f10cc1170792a009766138198e9c00c53a4f497a7c0d8d95b3ef7592e589a02"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/f1cli", "--help"
  end
end
