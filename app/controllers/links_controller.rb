class LinksController < ApplicationController
	def index
		@link = Link.last.short
	end

	def new
		@link = Link.new
	end
	
	def track
    @link_url = Link.where(short: params[:short]).first.url
    @link_shorturl = Link.where(short: params[:short]).first.short
    @link_count = Link.where(short: params[:short]).first.count
  end

	def create
		@link = Link.new(params[:link])
		@link.save
		@link.short = (0...5).map{("a".."z").to_a[rand(26)]}.join
		@link.count = 0
		@link.save
	  redirect_to links_path
	end
	
	def short
      @link = Link.where(:short => params[:short])
      @url = @link.first.url
      puts @url
      @link.each do |link|
        link.count += 1
        link.save
      end
      redirect_to @url
    end
end
