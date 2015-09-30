# -*- coding: utf-8 -*-

require "webkit-gtk2"

Plugin.create(:inBrowser) do

  settings "inBrowser_plugin" do
    boolean "PC版サイトを表示する", :browser_PCver
  end

  if UserConfig[:browser_PCver] then
    tab(:browser, "ぶらうざPC版") do
      view = WebKitGtk2::WebView.new
      view.load_uri("http://google.co.jp")
      nativewidget view.show_all
    end
  else
    tab(:browser, "ぶらうざスマホ版") do
      settings = WebKitGtk2::WebSettings.new
      settings.set_property('user-agent', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19')
      view = WebKitGtk2::WebView.new
      view.set_settings(settings)
      view.load_uri("http://google.co.jp")
      nativewidget view.show_all
    end
  end
end
