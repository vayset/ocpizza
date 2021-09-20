import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("hello-saddam") { req in
        return req.view.render("saddam", ["title": "Hello Saddam!"])
    }

    try app.register(collection: TodoController())
}

