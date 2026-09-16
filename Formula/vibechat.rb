class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.2/vibechat-darwin-arm64"
      sha256 "842b19a64b58afdb9383550ee1b8aacf858af1535959377adc2578b8d447654f"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.2/vibechat-darwin-x64"
      sha256 "3a80bb5a1c5b688a17330335e3ea976ceeaaa283caa0e9c365d013c098761b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.2/vibechat-linux-arm64"
      sha256 "263920418e2d278ec6f547ee1f4ddfc3ed62af930682020a89d6d65c83fc8540"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.2/vibechat-linux-x64"
      sha256 "af33e2f38c8766da46d056e1ee26c94322c98f131784f222f5cc25e24c74c117"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
