Lua eventDispatcher 

## Installation

### Copy code from /src and use eventDispatcher global

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
