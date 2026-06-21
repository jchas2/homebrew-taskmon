class Taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon"
  version "1.7.0"

  url "https://github.com/jchas2/taskmon/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "cd8fb6ad7f77a715f7ea5af8348e95864759f479bbb268f943ae94400d1db0e3"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
