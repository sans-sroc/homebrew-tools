class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/2.0.0.tar.gz"
  sha256 "96fc01bcfe1e683f2c153b82fbcd5605fdcea6e81ea88aaea03d63e09283c4da"
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
