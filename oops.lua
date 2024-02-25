-- Creating a object class
local function Pet(name) 
    local age = 10 -- local data/ private data
    return {                     -- returns the table
        name = name or 'charlie',     -- data menbers for class Pet
        status = "hungry",

        speak = function (self) -- data functions for class Pet
            print("meaw")
            print(age)
        end,

        feed = function(self)
            print(self.name.. ' eating')
        end
    }
end

local function Dog(name) -- Another class Dog
    local dog=Pet(name) -- Inheriting class Pet 

    dog.breed = 'Doberman'
    dog.loyalty = 0
    dog.speak = function (self) -- function overwriting
        print('Woof')
    end

    return dog
end

local cat = Pet('jasy')
local dog = Dog()
print(cat.name, dog.name)
cat.speak()
dog.speak()

function love.load()
    love.window.setTitle('HEllo lovw')
    love.graphics.setNewFont(24)
end

function love.draw()
    love.graphics.printf('Welcome to Love',0,love.graphics.getHeight()/2, love.graphics.getwidht(),'center')
end 
