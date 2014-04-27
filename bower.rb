cheatsheet do
  title 'Bower'               
  docset_file_name 'Bower'    
  keyword 'bower'             

  introduction 'Cheatsheet for the [Bower](https://github.com/bower/bower) Frontend Package Management Utility'  

  category do
    id 'Main commands'
    
    entry do
      td_notes <<-'END'
      If you use it without a search term, you’ll get a list of all the bower packages available. 
      To filter those down, use a search term.
      
      ```
      bower search backbone
      ```
      END
      name 'bower search'
    end 
    
    entry do
      td_notes <<-'END'
      Will install the named component into the `components` directory.
      
      ```
      bower install jquery
      ```

      To install a specific version of a package, include the version number after it, with a hash between:
      
      ```
      bower bower install jquery#1.7.0
      ```
      
      Other possibilities
      
      ```
      bower install git://github.com/pivotal/jasmine.git
      bower install http://backbonejs.org/backbone-min.js
      bower install ~/code/secretProject
      ```
      
      In order to update automatically your `component.json`
      
      ```
      bower install jquery --save
      ```
      
      Packages are getting cached in `~/.bower/<package>`
      
      END
      name 'bower install'
    end
    
    entry do
      td_notes <<-'END'
      ```
      bower uninstall jquery
      ```
      END
      name 'bower uninstall'
    end  
    
    entry do
      td_notes <<-'END'
      ```
      bower update
      ```
    
      Note that you can’t pass a package name to the update command and only update that individual package: 
      it will still update ’em all. You can get the latest version of a single package by running `bower install <package>` 
      it will just over-write the version you currently have.
      END
      name 'bower update'
    end  
      
  end

  category do
    id 'Miscellaneous' 
    
    entry do
      td_notes <<-'END'
      Will list the packages your currently have installed, you can also use `bower ls` as a shorter command
      
      ```
      bower list
      ```
      END
      name 'bower list'
    end  
    
    entry do
      td_notes <<-'END'
      To see what repository URL a certain package refers to
      
      ```
      bower lookup backbone
      ```
      END
      name 'bower lookup'
    end 
    
    entry do
      td_notes <<-'END'
      To see what package versions are available
      
      ```
      bower info backbone
      ```
      END
      name 'bower info'
    end   
    
    entry do
      td_notes <<-'END'
      Finally, to remove all the packages cached to `~/.bower`,
      
      ```
      bower cache-clean
      ```
      END
      name 'bower cache-clean'
    end   
    
  end
  
  notes 'Thanks to [Andrew Burgess](http://hub.tutsplus.com/authors/andrew-burgess) Tutsplus tutorial.'
end