cask "solix" do
  version "1.0.0"
  sha256 "55bb6a9348dce58f193f411479bce30c3331742b3af2c1b66ccf3568ab88c62e"

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
  ]

  caveats <<~EOS
    Solix is proprietary software licensed under the Solix End User
    License Agreement (https://solix.fyi/license.html). Installing it
    means you accept that agreement.
  EOS
end
