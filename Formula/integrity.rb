class Integrity < Formula
  desc "Validates files in a given directory"
  homepage "https://github.com/sans-sroc/integrity"
  url "https://github.com/sans-sroc/integrity/archive/1.0.6.tar.gz"
  sha256 "322cefb950eba8fdf784e33429b4cfeb30f6b1d1c81311d968b91f168dfd8c20"
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
