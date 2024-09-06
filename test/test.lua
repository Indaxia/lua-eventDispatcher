EventDispatcherTest = Imp.export("EventDispatcherTest", function()
  local eventDispatcher = Imp.import(EventDispatcher)

  -- subscription 1
  eventDispatcher.on("my.event.a", function(event)
    print("Callback A 1: " .. event.data)
  end)
  -- subscription 2 and stop propagation to another callbacks
  eventDispatcher.on("my.event.a", function(event)
    event.stopPropagation = true
    print("Callback A 2: " .. event.data)
  end)
  -- subscription 3
  eventDispatcher.on("my.event.a", function(event)
    print "This is never called"
  end)

  -- dispatch with data  
  eventDispatcher.dispatch("my.event.a", "Dispatch A 1 Data")
  -- dispatch again with another data
  eventDispatcher.dispatch("my.event.a", "Dispatch A 2 Data")

  -- unsubscription examples

  -- define a callback explicitly
  local callbackB1 = function(event)
    print ("Callback B 1: " .. event.data)
  end
  -- subscription 1
  eventDispatcher.on("my.event.b", callbackB1)
  -- subscription 2
  eventDispatcher.on("my.event.b", function(event)
    print ("Callback B 2: " .. event.data)
  end)
  
  eventDispatcher.dispatch("my.event.b", "Dispatch B 1 Data")
  -- unsubscribe from the callback
  eventDispatcher.off("my.event.b", callbackB1)
  eventDispatcher.dispatch("my.event.b", "Dispatch B 2 Data")
  -- unsubscribe from the event
  eventDispatcher.off("my.event.b")
  eventDispatcher.dispatch("my.event.b", "Nothing is subscribed to this") 

  return {}
end)
