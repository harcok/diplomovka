class PridajAdmina < ActiveRecord::Migration
  def self.up
   execute"INSERT INTO users values('1', 'mato', '1d4115c3442b1c36cbe6939a29117417ac570c94','372418000.26035908066542','2009-04-30 15:05:14','2009-04-30 15:05:14')"
  end

  def self.down
  end
end
