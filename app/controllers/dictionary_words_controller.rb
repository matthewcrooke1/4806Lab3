require "#{Rails.root}/app/models/web_spellchecker.rb"

class DictionaryWordsController < ApplicationController
  def spellcheck
        spellchecker = WebSpellchecker.new
	input_word = params[:term]
	#newWord = spellchecker.correct(input_word)
	known = spellchecker.known(params[:term]).any?	
	words = Hash.new
	words["term"] = input_word
	words["known"] = known
	words["suggestions"] = [spellchecker.correct(input_word)]
	render :json =>words
	
	
  end
end
