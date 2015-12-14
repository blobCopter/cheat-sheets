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