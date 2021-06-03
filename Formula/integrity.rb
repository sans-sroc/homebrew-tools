class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/3.0.2.tar.gz"
  sha256 "aefaadf4db418af76d25e0f6312962836d0be0cdd08a836f5d9b0fa52b14087e"
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
