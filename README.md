<!--Your documentation is complete when someone can use your module without ever having to look at its code. This is very important. This makes it possible for you to separate your module's documented interface from its internal implementation (guts). This is good because it means that you are free to change the module's internals as long as the interface remains the same.

Remember: the documentation, not the code, defines what a module does. -- Ken Williams-->

# Shoe Store

#### _Simple app to track shoe brands and shoe stores_

#### By _**David Lewis**_

## Setup/Installation Requirements

Clone to your Desktop.
In terminal, navigate to the root directory of the project.
Recreate the database by using the following commands in terminal:

```
$ bundle
```
```
$ rake db:create
```
```
$ rake db:migrate
```

Use this command in terminal to run app on the localhost:

```
$ ruby app.rb
```

Open your browser and go to localhost:4567


## Specifications (use case scenarios)

* User can view, add, update and delete stores.
* User can view, add, and delete brands.
* User can add brands to the stores
* User can view brands in a store
* User can add and delete brands in a store

## Technologies Used

Ruby, ActiveRecord, Sinatra, Postgres, HTML, CSS

## License

*Licensed under MIT license*

Copyright (c) 2018 **_David Lewis_**
