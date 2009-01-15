require 'rubygems'
gem 'sinatra', '~> 0.3.3'
require 'sinatra'

configure do
  require File.join(File.dirname(__FILE__), 'config', 'frailty.rb')
end

helpers do
  def link_to(url, text)
    %(<a href="#{url}">#{text}</a>)
  end
  
  # Usage: partial :foo
  def partial(page, options={})
      erb :milestones, options.merge!(:layout => false)
  end
end

  # index
  get '/' do
    #@projects = Project.all
    erb :index
  end
  
  # projects home shows current testing, past testing will be in tests
  get '/projects' do
    #@current_milestone = Test.last
    erb :projects
  end

  # tests are populate by something elsewhere I think
  get '/milestones' do
    #@milestone = Milestone.all
    erb :milestones
  end

  # create
    
  # 404 and 505
  not_found do
    'This is nowhere to be found'
  end

  error do
    'Sorry there was a nasty error - ' + request.env['sinatra.error'].name
  end