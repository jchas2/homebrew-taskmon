class Taskmgr < Formula
  desc "Task Manager for the command line"
  homepage "https://github.com/jchas2/taskmgr-cli"
  version "1.5.0"

  url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-arm64.tar.gz"
  sha256 "9a483dd0dd1e3145012d0f78aa748e6192f8ef9b2f7f72aa409376e7dfe8cc80"

  def install
    bin.install "taskmgr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmgr --version")
  end
end
