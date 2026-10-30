cask "iaaide" do
  version "0.0.80"

  on_arm do
    sha256 "eca3ba9835012dea0135e7672366ff60f96a733a6ec412c7a49435bf6a6215c0"

    url "https://github.com/infiniact/homebrew-iaaide/releases/download/v#{version}/IaAide-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "942ba8c80e938ed13a64be9463015d1e9c2c5286a9b0add13a72ba5d6e70204e"

    url "https://github.com/infiniact/homebrew-iaaide/releases/download/v#{version}/IaAide-#{version}-x64.dmg"
  end

  name "IaAide"
  desc "AI friend that gets things done, from chat to finished work"
  homepage "https://www.iaaide.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "IaAide.app"

  zap trash: [
    "~/.iaaide",
    "~/.iawork",
    "~/Library/Application Support/com.infiniact.iaaide",
    "~/Library/Application Support/com.infiniact.iawork",
    "~/Library/Application Support/iaaide",
    "~/Library/Application Support/iawork",
    "~/Library/Caches/com.infiniact.iaaide",
    "~/Library/Caches/com.infiniact.iaaide.ShipIt",
    "~/Library/Caches/iawork-updater",
    "~/Library/HTTPStorages/com.infiniact.iaaide",
    "~/Library/Logs/IaAide",
    "~/Library/Preferences/com.infiniact.iaaide.plist",
    "~/Library/Preferences/com.infiniact.iawork.plist",
    "~/Library/Saved Application State/com.infiniact.iaaide.savedState",
  ]
end
