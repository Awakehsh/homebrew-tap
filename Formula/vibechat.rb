class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.1/vibechat-darwin-arm64"
      sha256 "97f51f2a59b19d1a6ae20c6222abba8de36b6a0d355d6237a163299ff91eeafd"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.1/vibechat-darwin-x64"
      sha256 "f65e429650dfb3b4f6e73acf5d6c9866071b84e7d1313701af869cd34ee43d3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.1/vibechat-linux-arm64"
      sha256 "757dcd7e1729789dad5c18265a94bc27462b391d6cbeb4a291acef12d4c0a88d"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.1/vibechat-linux-x64"
      sha256 "f990c7c8fcbd9e4ae084ba8dfdb08d5cd685f3ac5c6d075b6443e5fead826fd8"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
