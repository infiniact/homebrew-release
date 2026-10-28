cask "iaterm" do
  version "1.2.6"

  on_arm do
    sha256 "2cd1723192ff7ea49b0bbe3aa103172e5dc3feb751aa8653cea419dd18e32f17"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "1cbabfaea5ca68a6a189597dbf2f95c956481d68724a7dbbe96fca6d85effe33"

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
