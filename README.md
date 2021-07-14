##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.0]
- Rails [6.1.4]

##### 1. Check out the repository

```bash
git clone git@github.com:organization/project-name.git
```

##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:create
rails db:migrate
rails db:seed
```

##### 3. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000 .

App also available at https://gl-keep.herokuapp.com/ .
