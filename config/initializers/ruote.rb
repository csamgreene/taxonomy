
require 'ruote/storage/hash_storage'

# File Storage does not work on Heroku
#require 'ruote/storage/fs_storage'


#
# initialize engine

RuoteKit.engine = Ruote::Engine.new(
  Ruote::Worker.new(
    Ruote::HashStorage.new()))
    
#RuoteKit.engine = Ruote::Engine.new(
  #Ruote::Worker.new(
    #Ruote::FileStorage.new()))

#
# register participants

RuoteKit.engine.register do
  announce_term AnnounceTerm
  catchall
end

