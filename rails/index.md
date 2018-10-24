# RoR Cheat Sheet

## Data migrations

### Running migrations

Run the migration with rake:
```bash
>  bin/rake db:migrate RAILS_ENV=development
```

If you f-ed up, just rollback the migration with the following command
```bash
>  bin/rake db:rollback RAILS_ENV=development
```


### Creating a new table

```bash
> bin/rails generate migration CreateAppointments time:string name:string 
```

The above command will generate the following migration :

```ruby
class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :time
      t.string :name
    end
  end
end
```

To have a working endpoint, the following things need to be added:
* A model
* A serializer
* A controller
* Routing to the new controller


### Adding a column to an existing table

```bash
> bin/rails generate migration AddAddressToOrders
```

The above command will generate the following migration :

```ruby
class AddAddressToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :address
  end
end
```
