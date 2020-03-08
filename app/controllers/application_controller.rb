class ApplicationController < ActionController::Base
    class Tab
        def initialize(title: title, links: links)
            @title = title
            @links = links
        end
        def title
            @title
        end
        def links
            @links
        end
    end
    class Link
        def initialize(title: title, url: url)
            @title = title
            @url = url
        end
        def title
            @title
        end
        def url
            @url
        end
    end

    before_action :set_header_tabs, :set_bread_crumbs, :set_footer_tabs
    def set_header_tabs
        @headerTabs = [
            Tab.new(title: "ニュース", links: [
                Link.new(title: "最新記事", url: "https://www.google.com"), 
                Link.new(title: "EdTech（エドテック)", url: "/"), 
                Link.new(title: "EdTech（エドテック)", url: "/")
            ]),
            Tab.new(title: "インタビュー", links: [
                Link.new(title: "最新記事", url: "https://www.google.com"), 
                Link.new(title: "EdTech（エドテック)", url: "/")
            ]),
            Tab.new(title: "キャリア", links: [
                Link.new(title: "最新記事", url: "https://www.google.com"), 
                Link.new(title: "EdTech（エドテック)", url: "/")
            ]),
            Tab.new(title: "お問い合わせ", links: [
                Link.new(title: "最新記事", url: "https://www.google.com"), 
                Link.new(title: "EdTech（エドテック)", url: "/")
            ])
        ]
    end
    def set_bread_crumbs
        @breadCrumbs = [
            Link.new(title: "", url: "/"),
            Link.new(title: "Webアプリケーションコース ", url: "/"),
            Link.new(title: "Webアプリケーションコース ", url: "/"),
            Link.new(title: "Webアプリケーションコース ", url: "/"),
            Link.new(title: "Webアプリケーションコース ", url: "/")
        ]
    end
    def set_footer_tabs
        @footerTabs = [
            Tab.new(title: "MENU", links: [
                Link.new(title: "aaaaaaaa", url: "/"), 
                Link.new(title: "aaaaaaaa", url: "/"), 
                Link.new(title: "aaaaaaaa", url: "/"), 
                Link.new(title: "aaaaaaaa", url: "/")
            ]),
            Tab.new(title: "TechAcademy", links: [
                Link.new(title: "bbbbbbbb", url: "/"), 
                Link.new(title: "bbbbbbbb", url: "/"), 
                Link.new(title: "bbbbbbbb", url: "/"), 
                Link.new(title: "bbbbbbbb", url: "/")
            ]),
            Tab.new(title: "GROUP SERVICE", links: [
                Link.new(title: "cccccccc", url: "/"),
                Link.new(title: "cccccccc", url: "/"),
                Link.new(title: "cccccccc", url: "/"),
                Link.new(title: "cccccccc", url: "/"),
                Link.new(title: "cccccccc", url: "/")
            ])
        ]
    end
end