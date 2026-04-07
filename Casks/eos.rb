cask "eos" do
  version "1.8.43"
  sha256 "f051d8bcc52d842f52de9a101f81930d9ae8909cd9044d111981c3c58ac30710"

  url "https://api.github.com/repos/d-artemenko/eos/releases/assets/390863679",
      verified: "api.github.com/repos/d-artemenko/eos/releases/assets/",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch('HOMEBREW_GITHUB_API_TOKEN')}",
      ]
  name "eos"
  desc "AI workspace shell for Pi"
  homepage "https://github.com/d-artemenko/eos"

  depends_on arch: :arm64

  app "eos.app"

  zap trash: [
    "~/Library/Application Support/eos",
    "~/Library/Caches/com.eos.app",
    "~/Library/Logs/eos",
    "~/Library/Preferences/com.eos.app.plist",
    "~/Library/Saved Application State/com.eos.app.savedState",
  ]
end
