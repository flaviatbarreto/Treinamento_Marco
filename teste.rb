class Event
  
  @@events = []
  @@menu = ["0 - Sair","1 - Adicionar Eveneto","2 - Buscar Evento","3 - Listar Evento"]

  def initialize
    
    opc = 5
    
    while opc != 0
      
      @@menu.each do |option|
        puts option
      end
      
      opc = gets
      opc = opc.to_i
      
      case opc
        when 1 then 
          nome = gets 
          add_event nome
        when 2 then 
          nome = gets
          search_event nome
        when 3 then 
          list_events
      end  
   end 
  end
  
  def add_event nome
    @@events.push nome
  end
  
  def event_exist? nome
    @@events.each do |event|
      if event == nome
        return true
      end  
    end
    false
  end
  
  def list_events
    @@events.each do |event|
      puts "- " + event
    end
  end
  
  def search_event nome
    if event_exist? nome
      return puts "Exite!"
    end
    puts "No Existe!"
  end
  
end

Event.new
