cask "solix" do
  version "1.0.4"
  sha256 "4efb02517de49e70ce24f214b1fd56b81dc0a89bb71777d15fa8ad55ca203cfe"

  url "https://solix.fyi/Solix-macOS.zip"
  name "Solix"
  desc "Menu-bar host for persistent terminals and agent crews"
  homepage "https://solix.fyi"

  # Proprietary software — governed by the Solix EULA, see
  # https://solix.fyi/license.html before installing.
  app "Solix/Solix.app"
  binary "Solix/solix"

  zap trash: [
    "~/Library/Application Support/Solix",
    "~/Library/Caches/com.aimo.solixhost",
    "~/Library/Preferences/com.aimo.solixhost.plist",
    "~/Library/LaunchAgents/com.aimo.solixhost.plist",
    "~/Library/LaunchAgents/com.aimo.solixmcpcloud.plist",
  ]

  caveats <<~EOS
    Solix is proprietary software licensed under the Solix End User
    License Agreement (https://solix.fyi/license.html). Installing it
    means you accept that agreement.
  EOS
end
