class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.0/vibechat-darwin-arm64"
      sha256 "c53b3424c0291d74098e2eadb9e14789a2760f1a759a1ad551a99ba09904ad5b"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.0/vibechat-darwin-x64"
      sha256 "66b821d26e52118b5b7c4a3d60952b6ccf5bf2968f86c410c83bf3ed9ddf9c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.0/vibechat-linux-arm64"
      sha256 "5e37be2c8616cffa52b7cfd2cfc683f0e98f746e745436502b2a83db04e07e66"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.0/vibechat-linux-x64"
      sha256 "6ce2a5a763e982fa63f604f77d4e820fcede311c8659e1b9bc02c7929a8dafe9"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
