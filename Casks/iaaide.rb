cask "iaaide" do
  version "0.0.82"

  on_arm do
    sha256 "c126c2308f726d8a15a28d0d57e34e081680d66269e494171acda5239db2c406"

    url "https://github.com/infiniact/homebrew-iaaide/releases/download/v#{version}/IaAide-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "70a3a0724cfa8caea4eddf996eb71b20f564e071a0ad1c69d7bd367e614dea86"

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
