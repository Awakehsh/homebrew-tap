class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.0/vibechat-darwin-arm64"
      sha256 "418aeb95b5a4c08d9995fe80184120fa27f4f0a4f4bd97e6ff114ecea2e297ea"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.0/vibechat-darwin-x64"
      sha256 "9bda4c20ccbfb8774362d1ff265339898f58bfdb21cb935fc494f19be9a31f4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.0/vibechat-linux-arm64"
      sha256 "b76356e48c88771cb102dae1443cf2bbfe067e5b58bb38af48c909aaf121dd9b"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.0/vibechat-linux-x64"
      sha256 "4ac0d763ef02527c7aa1d56f426076bcef39c040652309d79990a8761f1d80b2"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
