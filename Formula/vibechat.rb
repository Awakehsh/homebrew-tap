class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.0/vibechat-darwin-arm64"
      sha256 "069c691c06d6001dc82a9300902287ed73c722370ee95cec2fb8510b005bef3e"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.0/vibechat-darwin-x64"
      sha256 "8582ff627206310529db4b8c0fd8e22418f8386b777e1ab3fb2cd1aa9ce43a94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.0/vibechat-linux-arm64"
      sha256 "573b3ad7f56f4a72fac9fb6c0cb5ecafea376710470c79e644694d4d2f0cf1fc"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.0/vibechat-linux-x64"
      sha256 "6cc59d828e2f34fbb7dd3bddf8bf9b0ace25afc73d1f12c8208408a32e68597b"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
