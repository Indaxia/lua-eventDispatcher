Lua eventDispatcher

Event Dispatcher implemented in Lua. It can work in the normal object mode or in the WLPM module mode (detected automatically).
Is one of the fundamental modules when building achitecture application. Solves the problem of high engagement. It is based on the observer pattern.

## Installation

### Copy code from [/src](/src) and use eventDispatcher global

### *OR* use [WLPM](https://github.com/Indaxia/wc3-wlpm-module-manager) and import("eventDispatcher")
```
wlpm install https://github.com/Indaxia/lua-eventDispatcher
```

## Usage

```lua

-- Subscription on the event
-- The event param is an object with "data", "name" and "stopPropagation" properties
-- You can set event.stopPropagation = true inside the callback to break current dispatch loop
eventDispatcher.on("my.event.a", function(event)
    print("Callback A 1: " .. event.data)
end)

-- ... another file ...

-- Dispatch with any data  
eventDispatcher.dispatch("my.event.a", "Dispatch A 1 Data")

```

See [test file](/test/test.lua) for details

[See on XGM/Russian](https://xgm.guru/p/wc3/lua-eventdispatcher)
