class TitleValidator < ActiveModel::Validator

    def validate(record)
        #binding.pry
        if record[:title]
            if !record[:title].include? "Won't Believe" or record[:title].include? "Secret" or record[:title].include? "Top " or record[:title].include? "Guess"
                record.errors[:title] << "MORE CLICKBAIT"
            end
        end

    end

end