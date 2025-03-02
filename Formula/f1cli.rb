class F1cli < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool to fetch Formula 1 data"
  homepage "https://github.com/monkspams/f1cli"
  url "https://github.com/monkspams/f1cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dc89d22aca6174f27f8560210c3b67a73c720ed64733486a47b1467504f64c16"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/f1cli", "--help"
  end
end
