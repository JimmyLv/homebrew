# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

cask "bibigpt" do
  version "4.483.0"

  on_arm do
    sha256 "99a70a4a56bf4e54797efe14b35182260bebf3f00f7c5c8628ee7682c5c08f95"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-#{version}-darwin-aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "160d4da1d1368209c19c547643c515d30b3d3894a679b6138e1ad43287102086"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-#{version}-darwin-x86_64.app.tar.gz"
  end

  name "BibiGPT"
  desc "AI-powered video and audio content summarization"
  homepage "https://bibigpt.co"

  livecheck do
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "BibiGPT.app"

  binary "#{appdir}/BibiGPT.app/Contents/MacOS/BibiGPT", target: "bibi"

  zap trash: [
    "~/Library/Application Support/co.bibigpt.desktop",
    "~/Library/Caches/co.bibigpt.desktop",
    "~/Library/Preferences/co.bibigpt.desktop.plist",
    "~/Library/Saved Application State/co.bibigpt.desktop.savedState",
  ]
end
