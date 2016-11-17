require "translate/version"
require "httparty"
require "translate/tranapi"

module Translate
  translator = Translate::TranApi.new('trnsl.1.1.20160923T161439Z.a61c74b31a009a6a.77fea3fff49d34ac21d21d5155e39bbed4c21e9c')

  puts translator.trans('Mom', 'en', 'ru')
  puts translator.get_langs('ru')
  puts translator.detect('Hello')
end

