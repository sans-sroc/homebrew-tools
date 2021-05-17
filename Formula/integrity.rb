class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/3.0.1.tar.gz"
  sha256 "c2aeb967dd557a52a526928edc5879bac2cd7a7b29038b973adfa1e8d09e7065"
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
