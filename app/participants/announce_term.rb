class AnnounceTerm 
  
  # This class will be invoked when the automated participant, announce_term gets a workitem
  
  include Ruote::LocalParticipant
  
  def on_workitem
    
   
    id = workitem.fields['id']
    
    Notifier.newTerm(id).deliver

    reply
  end
  
  def on_cancel
    
    # no need
  end
end