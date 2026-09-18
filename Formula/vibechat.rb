class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.8.0/vibechat-darwin-arm64"
      sha256 "f0b75fa9a841f1a4b82ddc7ec5e599f042b4b92cfb2ad86e0650e1ccb715495f"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.8.0/vibechat-darwin-x64"
      sha256 "428e0992a59f6ef34cd1e8108cfa15902376ddb46ab10860cfe9f6bbee7cc342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.8.0/vibechat-linux-arm64"
      sha256 "624da4f92d248d30ac68fc41891704a06f16561076f55d5b419e96adbe64eca7"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.8.0/vibechat-linux-x64"
      sha256 "c7c9376102ec9279561af8d608ffad7c3b1368fa0d930b6df9275dec65506ab7"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
