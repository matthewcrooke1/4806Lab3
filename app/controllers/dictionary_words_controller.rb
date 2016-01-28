class DictionaryWordsController < ApplicationController
  def spellcheck
	input_word = params[:term]
	render text:input_word
  end
end
