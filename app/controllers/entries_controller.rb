class EntriesController < ApplicationController
    def index
        @entries = Entry.all.sort_by{|entry| entry.date}
    end

    def show
        puts params
        @entry = Entry.find(params["id"])
      end
end
