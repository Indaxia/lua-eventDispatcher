Lua eventDispatcher

Event Dispatcher implemented in Lua. It can work in the normal object mode or in the WLPM module mode (detected automatically).
One of the fundamental modules when building achitecture application.
Solves the [high сohesion](https://en.wikipedia.org/wiki/GRASP_%28object-oriented_design%29) problem. Based on the observer pattern.

## Installation

```
imp install https://github.com/Indaxia/lua-eventDispatcher
```

## Usage

```lua
local EventDispatcher = Imp.import(EventDispatcher)

-- Subscription on the event
-- The event param is an object with "data", "name" and "stopPropagation" properties
-- You can set event.stopPropagation = true inside the callback to break current dispatch loop
EventDispatcher.on("my.event.a", function(event)
    print("Callback A 1: " .. event.data)
end)

-- ... another file ...

-- Dispatch with any data  
EventDispatcher.dispatch("my.event.a", "Dispatch A 1 Data")

```

See [test file](/test/test.lua) for details

[See on XGM/Russian](https://xgm.guru/p/wc3/lua-eventdispatcher)
