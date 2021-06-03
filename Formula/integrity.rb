class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/3.0.2.tar.gz"
  sha256 "aefaadf4db418af76d25e0f6312962836d0be0cdd08a836f5d9b0fa52b14087e"
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
