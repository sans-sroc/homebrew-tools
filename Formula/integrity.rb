class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/2.0.2.tar.gz"
  sha256 "0d4c65bb3b9b3dbf2ba4e90e4f29be1793cb125709467c6e3ecce291e54f04b6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args

    bin.install
  end

  test do
    system "false"
  end
end
