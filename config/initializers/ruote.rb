
#require 'ruote/storage/hash_storage'
require 'ruote/storage/fs_storage'


#
# initialize engine

#RuoteKit.engine = Ruote::Engine.new(
  #Ruote::Worker.new(
    #Ruote::HashStorage.new()))
    
RuoteKit.engine = Ruote::Engine.new(
  Ruote::Worker.new(
    Ruote::FileStorage.new()))

#
# register participants

RuoteKit.engine.register do
  write_document WriteDocument
  publish_document PublishDocument
  catchall
end

