# My Lua Helper


## Creating a class

```lua
MyClass = {
   -- Members
   foo = {},
   bar = 42
}
MyClass.__index = MyClass


function MyClass.new(bar)
   -- Create our new object
   local instance = {}
   
   -- Set the metatable to lookup the methods
   setmetatable(instance, MyClass)
   
   -- Initialize the object
   instance.bar = bar
   
   return instance
end

function instance:getBar()
   return self.bar
end

-- Intanciate
local obj = MyClass.new(1000)

-- Use
obj:getBar()
```

## Extending a class

```lua
-- Creating a class that inherits from MyClass 

MySubClass = {
   
}

-- Setup the inheritance
setmetatable(MySubClass, {__index = MyClass})

MySubClass.__index = MySubClass

-- constructor
function MySubClass.new()
   -- Parent Class contrusctor
   local instance = MyClass.new(42)
   
   -- apply method lookup
   setmetatable(instance, MySubClass)
   
   -- initialize instance here
   
   return instance
end


-- Extending MyClass with a new method
function MySubClass:sayHello()
    print("Hello")
end

-- Overriding MyClass method
function MySubClass:getBar()
    -- Calling the parent method
    local bar = MyClass.getBar(self)
    
    return bar + 1
end
```
