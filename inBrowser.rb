# -*- coding: utf-8 -*-

require "webkit-gtk2"

Plugin.create(:inBrowser) do

  settings "inBrowser_plugin" do
    boolean "PC版サイトを表示する", :browser_PCver
  end

  command(:in_browser_open_homepage_in_new_tab,
          icon: Enumerator.new{|y| Plugin.filtering(:photo_filter, File.join(__dir__, 'icon.png'), y)}.first,
          name: 'ホームページを開く',
          condition: lambda{ |opt| true },
          visible: true,
          role: :window) do |opt|
    create_tab("http://google.co.jp")
  end

  def create_tab(url)
    tab_slug = :"browser-#{SecureRandom.uuid}"
    tab(tab_slug, "ぶらうざ") do
      temporary_tab
      set_deletable true
      view = WebKitGtk2::WebView.new
      unless UserConfig[:browser_PCver]
        settings = WebKitGtk2::WebSettings.new
        settings.set_property('user-agent', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19')
        view.set_settings(settings)
      end
      view.load_uri(url.to_s)
      nativewidget view.show_all
      active!
    end
  end
end
