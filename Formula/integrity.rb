class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/2.1.0.tar.gz"
  sha256 "434a3bc20e4937e7cc52bc138abda625d8cfa41ad40bbf3c6eae65f1fb2c2a85"
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
