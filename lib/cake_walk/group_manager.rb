class GroupManager
  STORE_PATH = './group_store.yml'

  def self.store
    YAML.load_file(STORE_PATH) || {}
  end

  def self.save(store)
    File.open(STORE_PATH, "w+") {|f| f.write(store.to_yaml)}
  end

  def self.create_group(group_name)
    store[group_name] = nil
    save(store)
  end

  def self.add_to_group(group_name, file)
  end
end