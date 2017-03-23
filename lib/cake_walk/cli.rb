class CakeWalk::Cli

  def self.execute(command_line_args)
    command, group_name, file_name, list = command_line_args
    case command
      when "creategroup"     || "create"
        CakeWalk::GroupManager.create_group(group_name)
      when "addtogroup"      || "add"
        CakeWalk::GroupManager.add_to_group(group_name, file_name, list)
      when "removefromgroup" || "group"
        CakeWalk::GroupManager.remove_from_group(group_name, file_name)
      when "destroygroup"    || "destroy"
        CakeWalk::GroupManager.destroy_group(group_name)
      when "showgroup"       || "show"
        CakeWalk::GroupManager.show_group(group_name)
      when "help"
        help_menu
    end
  end 
end