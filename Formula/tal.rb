class Tal < Formula
  desc "Align line endings if they match"
  homepage "https://thomasjensen.com/software/tal/"
  url "https://thomasjensen.com/software/tal/tal-1.9.tar.gz"
  sha256 "5d450cee7162c6939811bca945eb475e771efe5bd6a08b520661d91a6165bb4c"

  bottle do
    cellar :any_skip_relocation
    sha256 "9c2c4e5f9d6922f9a9d434485dea4ddf321744728c83adcda822c3c314f6a86e" => :sierra
    sha256 "bbdef6b2c92650352b7199cc2a9e3bc4698bf2a14fce46397eebcee72c1de419" => :el_capitan
    sha256 "e6b6f315bc14f5e001893371d18fb0ba88bea4c4d76dd657820eecf509103f9e" => :yosemite
    sha256 "26945b8471e2731ce34604a19f8bdb046770d961422969999a789168aa7ee25b" => :mavericks
  end

  def install
    system "make", "linux"
    bin.install "tal"
    man1.install "tal.1"
  end

  test do
    system "#{bin}/tal", "/etc/passwd"
  end
end
