class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.1/vibechat-darwin-arm64"
      sha256 "329ef93aa31d82c6b39f1b2f3aa7d3add6d4ce8085201740fbb05ee773b9aa67"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.1/vibechat-darwin-x64"
      sha256 "e49327b7323475e2becc76a5053604f9d07a16a3fece7bb583df29f2302d92d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.1/vibechat-linux-arm64"
      sha256 "69175d6d3154ad0973d477cc3bfc130aeab066b16aca882c09fce48b86a98326"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.1/vibechat-linux-x64"
      sha256 "e181919d571b99dddac2f1b407187e9c0a6927eee532355c15460f298d4fcca9"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
