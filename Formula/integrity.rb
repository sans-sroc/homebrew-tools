class Integrity < Formula
  desc "Validation tool for SANS Courseware files"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/3.1.0.tar.gz"
  sha256 "8bc48ac0e57e182a0cfd6c3a65b3144520b909d7c7997a2df4200a680e9f19cc"
  license "MIT"

  bottle do
    root_url "https://github.com/sans-sroc/homebrew-tools/releases/download/integrity-3.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, big_sur:      "43d896e6d57562b58daa872dad9f2c56397f42387f92f99399f2d967ebbb2da6"
    sha256 cellar: :any_skip_relocation, catalina:     "cf8e753866f515329f6a50bd45d1305a37afdfa1e942ef20dc92b3abfc4bdf9a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "10685792f8027b48754c1d881c6e788178aedc9bdc709b67862e5b4ae05ae4ef"
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
