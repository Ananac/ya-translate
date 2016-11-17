module Translate
  class TranApi
    $baseurl = 'https://translate.yandex.net/api/v1.5/tr.json/'

    def initialize(key)
      @key = key
    end

    def merge_url(path)
      URI("#{$baseurl}#{path}")
    end

    def get_langs(ui)
      path = "getLangs?ui=#{ui}&key=#{@key}"
      response = HTTParty.post(merge_url(path)).parsed_response
      return "#{response['langs']}#{response['message']}"
    end

    def detect(text)
      path = "detect?key=#{@key}"
      response = HTTParty.post(merge_url(path), body: {text: text}).parsed_response
      return "#{response['lang']}#{response['message']}"
    end

    def trans(text, langfrom, langto)
      lang = "#{langfrom}-#{langto}"
      path = "/translate?key=#{@key}&lang=#{lang}"
      response = HTTParty.post(merge_url(path), body: {text: text}).parsed_response
      return "#{response['text']}#{response['message']}"
    end
  end
end
