module NavigationHelpers
  def path_to(page_name)
    case page_name

      when /the home\s?page/
        '/'
      else
        begin
          page_name =~ /the (.*) page/
          page_name = page_name.gsub(' page', '')
          path_components = page_name.split(' ')
          self.send(path_components.push('path').join('_').to_sym)
        rescue Object => e
          puts path_components
          raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                    "Now, go and add a mapping in #{__FILE__}"
        end
    end
  end
end

World(NavigationHelpers)