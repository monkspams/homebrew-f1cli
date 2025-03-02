class F1CliTool < Formula
    include Language::Python::Virtualenv
  
    desc "A tool to view current and historic F1 data on the terminal"
    homepage "https://github.com/amateurmonke/f1-cli-tool"
    url "https://github.com/amateurmonke/f1-cli-tool/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "aebc226f8507477b89e509c2c454e87825efd1b0b1678194499fd7dcd64870ff" 
    license "MIT"
  
    depends_on "python@3.12"
  
    resource "typer" do
      url "https://files.pythonhosted.org/packages/source/t/typer/typer-0.9.0.tar.gz"
      sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
    end
  
    resource "requests" do
      url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
  
    resource "rich" do
      url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.0.tar.gz"
      sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
    end
  
    resource "prettytable" do
      url "https://files.pythonhosted.org/packages/source/p/prettytable/prettytable-3.9.0.tar.gz"
      sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
    end
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      assert_match "F1 CLI", shell_output("#{bin}/f1-cli-tool --help")
    end
  end