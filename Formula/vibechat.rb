class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.0/vibechat-darwin-arm64"
      sha256 "2219e0a004c0c448f47b0e3fb831e28a87d272c0e05a0af8efc550c6b89407c2"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.0/vibechat-darwin-x64"
      sha256 "cc36b55b3d81e19569644e55bc82df479c1d58cfb9eceeac37ba3968c6f45f46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.0/vibechat-linux-arm64"
      sha256 "414628c37050ac3718f9cc6014bac86450df3a330076503a910e733000d40291"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.0/vibechat-linux-x64"
      sha256 "ed35fcfa122eaa34e350f29d91c971dd3523d607f29d7e4a70ce00f567e14c3c"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
