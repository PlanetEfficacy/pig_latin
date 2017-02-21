# Pig Latin Word Translator
Pig Latin Word Translator will convert a regular English word into its [Pig Latin](https://en.wikipedia.org/wiki/Pig_Latin#cite_note-7) equivalent. This utility is written in Ruby and to run it, your machine must have Ruby installed. For more on installing Ruby, read [this](https://www.ruby-lang.org/en/documentation/installation/).

## Setup and use
To get started, clone this repository.
```
% git clone
```

Navigate to this project's root directory. Open an `irb` session:
```
% cd pig_latin
% irb
```
Once in irb, require the translator.
```
> require './lib/pig_latin_word_translator.rb'
```
Create an instance of the translator by passing in the word you wish to translate.
```
> translator = PigLatinWordTranslator.new('pig')
```
Execute the translation.
```
> translator.translate
# => "igpay"
```
Optionally combine the instantiation and translation execution into a single line:
```
> PigLatinWordTranslator.new('pig').translate
# => "igpay"
```

## Features
Translate words that begin with consonants.
```
> PigLatinWordTranslator.new('pig').translate
# => "igpay"
```
Translate words that begin with vowels.
```
> PigLatinWordTranslator.new('arrow').translate
# => "arrowway"
```

## Special Features
Translate words that begin with specific consonant clusters including 'ch', 'sm', 'sh'.
```
> PigLatinWordTranslator.new('cheers').translate
# => "eerschay"
```
Translate words that begin and end with the same consonant clusters, e.g. sheesh
```
> PigLatinWordTranslator.new('sheesh').translate
# => "eeshay"
```

## Testing
This project is thoroughly tested with minitest. To run the test file from the project root execute:
```
% ruby test/pig_latin_word_translator_test.rb
```

## Next Steps
Some ideas for expanding this translator's functionality are to:
1. Make the translator case insensitive
2. Make the translator able to convert multiple words at a time
3. Add additional consonant group support
4. Add special rules for additional idiosyncrasies of the Pig Latin language
