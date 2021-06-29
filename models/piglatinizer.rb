class PigLatinizer
    attr_accessor :text
    def initialize(text="")
        self.text=text
    end

    def piglatinize(words)
        #text=self.text
        words=words.split(" ")
        words=words.map{|word| piglatinizeword(word)}
        words.join(" ")
    end

    def piglatinizeword(word)
        if(word[0].match(/[aeiouAEIOU]/))
            word+"way"
        else
            prefix=word.split(/[aeiouAEIOU]/)[0]
            word[prefix.size..]+prefix+"ay"
        end
    end

    def getLatinized()
        piglatinize(text)
    end
end