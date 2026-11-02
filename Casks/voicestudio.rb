cask "voicestudio" do
  arch arm: "arm64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "8db7a16f35af1e4eaca25c389d376acc86b3885f30d1982f5fd6497953f888a0",
         intel: "a6f961cd1a848562fb3f525d9db0f039dfdf4ce14e79d76c256734286377f44a"

  url "https://github.com/debpalash/VoiceStudio/releases/download/v#{version}/VoiceStudio-#{version}-mac-#{arch}.dmg"
  name "VoiceStudio"
  desc "Local AI voice studio for cloning, speech, dubbing, and transcription"
  homepage "https://voicestudio.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "VoiceStudio.app"

  caveats <<~EOS
    Requires macOS 13.3 or newer.
    Intel Macs run the app UI with a VoiceStudio backend on another computer.
    Local voice engines require Apple Silicon.
  EOS
end
