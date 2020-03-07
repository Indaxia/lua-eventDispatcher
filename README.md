Lua eventDispatcher 

## Installation

### Copy code from /src and use eventDispatcher global

### *OR* use [WLPM](https://github.com/Indaxia/wc3-wlpm-module-manager) and import("eventDispatcher")
```
wlpm install https://github.com/Indaxia/wlpm-wc3-demo-hello
```

## Usage

```lua

-- subscription on the event
eventDispatcher.on("my.event.a", function(event)
    print("Callback A 1: " .. event.data)
end)

-- ... another file ...

-- dispatch with any data  
eventDispatcher.dispatch("my.event.a", "Dispatch A 1 Data")

```

See [test file](/test/test.lua) for details
