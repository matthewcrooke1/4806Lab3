class WebSpellchecker < Spellchecker

def initialize()

end


def known(words)
	result = DictionaryWord.select("word,count").where(word:words).order(count: :desc)

	return result.map{|x| x[:word]}
end



end
