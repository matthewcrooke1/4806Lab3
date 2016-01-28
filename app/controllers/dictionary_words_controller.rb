require "#{Rails.root}/app/models/web_spellchecker.rb"

class DictionaryWordsController < ApplicationController
  def spellcheck
        spellchecker = WebSpellchecker.new
	input_word = params[:term]
	#newWord = spellchecker.correct(input_word)	
	words = Hash.new
	words["term"] = input_word
	words["known"] = true or false
	words["suggestions"] = [spellchecker.correct(input_word)]
	render :json =>words
	
	
  end
end
