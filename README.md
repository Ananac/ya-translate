# Translate

Yandex Translate API gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translate'
```

And then execute:

    $ bundle

## Usage

Use your API key:
```ruby
translator = Translate::TranApi.new('apikey')
```
List of possible directions of translation:
```ruby
translator.get_langs('language')
```
```ruby
translator.get_langs('en')
```
Language Recognition:
```ruby
translator.detect('text')
```
```ruby
translator.detect('Hello')
```
Translation:
```ruby
translator.trans('text', 'lang_from', 'lang_to')
```
```ruby
translator.trans('Hello', 'en', 'ru')
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ananac/ya-translate.

