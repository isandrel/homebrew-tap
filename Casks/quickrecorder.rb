cask "quickrecorder" do
  version "1.6.9"
  sha256 :no_check  # TODO: Add sha256 when release is created

  url "https://github.com/isandrel/QuickRecorder/releases/download/v#{version}/QuickRecorder.zip"
  name "QuickRecorder"
  desc "Lightweight screen recorder based on ScreenCapture Kit for macOS"
  homepage "https://github.com/isandrel/QuickRecorder"

  depends_on macos: ">= :ventura"

  app "QuickRecorder.app"

  zap trash: [
    "~/Library/Preferences/com.isandrel.QuickRecorder.plist",
    "~/Library/Application Support/QuickRecorder",
  ]
end
