class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/2.2.0.tar.gz"
  sha256 "65005166c5d0e9e63687f48d40d7b7f3ded39b0b7a19e4546dce047a7d065b8e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args

    bin.install
  end

  test do
    system "true"
  end
end
