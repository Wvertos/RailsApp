class EntriesController < ApplicationController
    def index
        @entries = Entry.all.sort_by{|entry| entry.date}

    end
end
