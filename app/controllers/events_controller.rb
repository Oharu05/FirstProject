class EventsController < ApplicationController
  def top
  end
  def detail
    if params[:id] == "1"
      @event = Event.new(id: 1)
      @event.name = "東京トリックアート迷宮館"
      @event.descriptionText = "デックス東京ビーチのアイランドモール4階にある。立体的に見える絵画や目の錯覚を利用した絵画などが揃うアミューズメント感覚の美術館で、江戸をテーマにした世界初の和風トリックアートが楽しめる。江戸時代にタイムスリップできる江戸エリアをはじめ、斬新な怖くないお化け屋敷エリア、トリックアート名作ギャラリーなど、大きく5エリアに分かれている。館内のトリックアートを使ってユニークな面白写真を撮影したり、動物を探して遊ぶ隠し絵など、来館者が体験し楽しめる工夫が満載だ。"
    else
      @event = Event.new(id: 2)
      @event.name = "BBBB"
      @event.descriptionText = "bbbb"
    end
  end
end
