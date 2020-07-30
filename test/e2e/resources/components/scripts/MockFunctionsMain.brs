sub main()
     _brs_.mockComponentPartial("ComponentMockFunctions", {
        formatJson: function(json as object, flags=0 as integer) as dynamic
            return "{fake:'json'}"
        end function,
        http_get: function()
            return "GET status: 400"
        end function,
        http_post: function()
            return "POST status: 500"
        end function,
        isValid: function()
            return true
        end function
    })

    m1 = createObject("roSGNode", "ComponentMockFunctions")
    real = createObject("roSGNode", "ComponentWithoutMockFunctions")
end sub
