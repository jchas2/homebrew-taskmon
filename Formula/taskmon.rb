class Taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon"
  version "1.6.3"

  url "https://github.com/jchas2/taskmon/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "761ff10fe046de871a79279a17418d0890c86fd48e95834a13986fff919262d3"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
