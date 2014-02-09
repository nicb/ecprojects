#
# $Id: 001_create_users.rb 1 2007-09-12 17:47:33Z nicb $
#
class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
    end
  end

  def self.down
    drop_table :users
  end
end
