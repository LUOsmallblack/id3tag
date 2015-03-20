namespace :db do
  desc "run the mongodb"
  task run: :environment do
    exec("mongod --config db/mongodb.conf &")
  end

  desc "stop the mongodb"
  task stop: :environment do
    exec("kill `cat db/mongod/mongod.lock`")
  end

end
