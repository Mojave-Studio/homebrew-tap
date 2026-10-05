cask "solix" do
  version "1.0.1"
  sha256 "855f4d1db9393bd2724ef9ce6f1d94b26047a6b0ad5331f82fd9904e60a3e9b1"

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
