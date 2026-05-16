class Taskmgr < Formula
  desc "Task Manager for the command line"
  homepage "https://github.com/jchas2/taskmgr-cli"
  version "1.4.2"

  url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-arm64.tar.gz"
  sha256 "20012ded8a82b109b75a40c4817c9b32ea967fd9f89d22a49786e6d598f2b4e2"

  def install
    bin.install "taskmgr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmgr --version")
  end
end
