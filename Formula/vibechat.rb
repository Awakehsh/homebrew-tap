class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.1/vibechat-darwin-arm64"
      sha256 "1d39ddec1bf6c544f2e9c4d229148277d9e5d8b1001ebaf13b61a069d317dab8"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.1/vibechat-darwin-x64"
      sha256 "cf718847a2e3d21298836329babd14ca23b93ddfc279788e759a03ee4a2249b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.1/vibechat-linux-arm64"
      sha256 "a22dfda1d2752239fc5ffe16c094a417a1320ebcfd479963380668429e01198c"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.1.1/vibechat-linux-x64"
      sha256 "6cdfa542cb97e0ff520ca4b002c2e6f55b352958f808de70d6be79d7a5678fe2"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
