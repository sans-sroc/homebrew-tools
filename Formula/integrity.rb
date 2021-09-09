class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/3.1.0.tar.gz"
  sha256 "8bc48ac0e57e182a0cfd6c3a65b3144520b909d7c7997a2df4200a680e9f19cc"
  license "MIT"

  bottle do
    root_url "https://github.com/sans-sroc/homebrew-tools/releases/download/integrity-3.0.2"
    sha256 cellar: :any_skip_relocation, catalina:     "5ca1c62b5301fbe530ae077d6caa015080a3db475e55373174e8a85153433e3d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6e200a1c5fffe185b623ac118f4b6019d1bd31469c380c4d26a1e0fbee8390f0"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args

    bin.install
  end

  test do
    system "true"
  end
end
