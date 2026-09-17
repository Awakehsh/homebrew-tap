class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.3.0/vibechat-darwin-arm64"
      sha256 "1b78054bffd1cfca666e39e66f62e0cbcdf9ff5ce4b704c5f5381bd3c31c53aa"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.3.0/vibechat-darwin-x64"
      sha256 "47439656ac807700bbf09b1ce04b79d7cbf408daf6830c889c2917aebe12b5c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.3.0/vibechat-linux-arm64"
      sha256 "ef8759479cfd3bdcdfbc6bd5ed52ee1be8c6fc8855e49d5882b3e31740c9688f"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.3.0/vibechat-linux-x64"
      sha256 "76555a0b451a6fd44a91e666e73de91c2a85cd30fa4525f2ac12a4306f4ac25a"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
