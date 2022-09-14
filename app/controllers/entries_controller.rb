class EntriesController < ApplicationController
    def index
        @entries = Entry.all.sort_by{|entry|}
    end

    def show
        puts params
        @entry = Entry.find(params["id"])
      end

      def new
      end

      def create
        puts "......, #{params}"
        entry_params = params["entry"].permit("title", "contents")
        puts "......, #{params["entry"]}"
        entry = Entry.create(entry_params)
        redirect_to(entry_path(entry))
      end
      
end
