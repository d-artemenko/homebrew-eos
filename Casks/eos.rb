cask "eos" do
  version "1.8.41"
  sha256 "bdfa94cc6b65d03f035c1d86ab7ffeb76b2ba3a85a02ddf77c476cae9eadcadd"

  url "https://api.github.com/repos/d-artemenko/eos/releases/assets/390688257",
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
