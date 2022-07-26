# Phase 3 Project - myBujo

## Demo
![appDemo](demo/myBujo.gif)


## Overview
Phase 3 project for Flatiron School's software engineering program. This is the back end portion of the application. It was created using Sinatra Active Record and Ruby. Database management was maintained using SQLite3. 


## Description
myBujo is an online bullet journal application to help users stay organized and increase productivity. The user is able to sign up from the home page. Features include adding and deleting tasks to a todo list, tracking your mood and full CRUD functionality for journal posts.


## Requirements
* ruby v2.6.1
* sqlite3 v3.31.1
* sinatra v2.1
* sinatra active record v 2.0
* thin v1.8


## Installation
1. Fork and clone this repository

2. cd into the project and run 
```console 
$ bundle install
```

3. To create migrations run:
```console 
$ rake db:migrate
```

4. To seed the database run:
```console 
$ rake db:seed
```

5. The server will run on http://localhost:9292/.  To start the server run:
```console 
$ rake server
```

6. Follow directions for frontend url: 
https://github.com/janice87/phase-3-sinatra-react-frontend


## Contributing
Pull requests are welcome. For any major changes, please feel free to reach out to discuss the changes. 


## License
MIT License

Copyright (c) [2022] [Janice Chan]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.