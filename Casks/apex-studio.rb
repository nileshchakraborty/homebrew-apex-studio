cask "apex-studio" do
  version "1.0.0"
  sha256 "69bee635cb520f1f7010bf56059a72d3ac1c34ad0986d91ef98a9d37efcd9486"

  url "https://github.com/nileshchakraborty/apex-studio/releases/download/v#{version}/Apex-Studio-macOS-arm64.zip"
  name "Apex Studio"
  desc "Standalone Cognitive Architecture & Actuation AI IDE"
  homepage "https://github.com/nileshchakraborty/apex-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Apex Studio.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Apex Studio.app"],
                   sudo: false
  rescue StandardError
    nil
  end

  zap trash: [
    "~/Library/Application Support/Apex Studio",
    "~/Library/Application Support/apex-studio",
    "~/Library/Preferences/com.apex.studio.plist",
    "~/Library/Saved Application State/com.apex.studio.savedState",
  ]
end
