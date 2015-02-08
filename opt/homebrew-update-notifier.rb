class HomebrewUpdateNotifier < Formula
  homepage "https://github.com/rwoeber/homebrew-update-notifier"
  url "https://github.com/rwoeber/homebrew-update-notifier/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha1 "1243e015454b4c23c0315a7bb9a29bb63c70a45a"

depends_on "terminal-notifier"

  def install
    bin.install "homebrew-update-notifier"
  end
  
  def plist; <<-EOS.undent
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>EnableGlobbing</key>
          <false/>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>/bin/bash</string>
            <string>#{HOMEBREW_PREFIX}/bin/homebrew-update-notifier</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/homebrew-update-notifier.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/homebrew-update-notifier.log</string>
          <key>RunAtLoad</key>
          <true/>
          <key>StartCalendarInterval</key>
          <array>
              <dict>
                  <key>Hour</key>
                  <integer>10</integer>
                  <key>Minute</key>
                  <integer>0</integer>
              </dict>
              <dict>
                  <key>Hour</key>
                  <integer>15</integer>
                  <key>Minute</key>
                  <integer>0</integer>
              </dict>
          </array>
        </dict>
      </plist>
      EOS
    end


end
