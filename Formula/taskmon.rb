class taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon-cli"
  version "1.6.0"

  url "https://github.com/jchas2/taskmon-cli/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "b002687cfeb57c811687202c6345781254248309b762407e5bf038c22c0f07c2"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
