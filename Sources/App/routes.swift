import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "The website for Penrith Chinese Presbyterian Church is under construction! For more information, please contact: Darren, 0430066645\n彭里斯华人长老会网站还在建设中！请联系牧师助理：大海 0430066645\nAddress地址: 9 Doonmore St, Penrith NSW 2750 (Penrith 公立小学对面)"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
