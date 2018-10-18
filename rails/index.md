# RoR Cheat Sheet

## Creating a data migration

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

Run the migration with rake:
```bash
>  bin/rake db:migrate RAILS_ENV=development
```

If you f-ed up, just rollback the migration with the following command
```bash
>  bin/rake db:rollback RAILS_ENV=development
```
