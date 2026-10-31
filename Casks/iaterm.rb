cask "iaterm" do
  version "1.2.7"

  on_arm do
    sha256 "0a1314ec7952d76016949276e113b13918423bf1195065941a763db8c6d67672"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "5c3794b820bf7251934e44e32d97d704164ad566889354521efb9dc1e944d0e3"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_x64.dmg"
  end

  name "IATerm"
  desc "Terminal for the AI era with multi-screen, broadcast and session memory"
  homepage "https://www.iaterm.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "IATerm.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm",
    "~/Library/Caches/com.infiniact.iaterm",
    "~/Library/Preferences/com.infiniact.iaterm.plist",
  ]
end
