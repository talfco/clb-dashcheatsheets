cheatsheet do
  title 'Brunch'               
  docset_file_name 'Brunch'    
  keyword 'brunch'             

  introduction 'Cheatsheet for  [Brunch](https://github.com/brunch/brunch/tree/stable/docs/) HTML5 package builder'  

  category do
    id 'Main commands'
    
    entry do
      td_notes <<-'END'
      Build a brunch project. Options
      
      * `-m, --minify`: minify the result js & css files? Analog of minify option in config file.
      * `-c CONFIG_PATH, --config CONFIG_PATH`: path to config (default: config)
      Short-cut: `brunch b`.
      
      ```
      brunch b -c ios_config -m:
      ```
      
      would load ios_config.(js,coffee), build application and minify the output
      END
      name 'brunch build'
    end 
    
  end  
end