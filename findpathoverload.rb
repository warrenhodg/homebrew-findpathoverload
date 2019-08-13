class Findpathoverload < Formula
  desc "A tool for finding different binaries of the same name on the path"
  homepage "https://github.com/warrenhodg/findpathoverload"
  url "https://github.com/warrenhodg/findpathoverload/archive/1.0.tar.gz"
  sha256 "9857488a53fff4ce90c2acf16a342672a8d3845fc56fb442d831adcc48bd71a5"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "./findpathoverload" => "findpathoverload"
  end

  test do
    system "#{bin}/findpathoverload"
  end
end
