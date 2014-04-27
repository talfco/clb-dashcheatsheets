cheatsheet do
  title 'Brunch'               
  docset_file_name 'Brunch'    
  keyword 'brunch'             

  introduction 'Cheatsheet for  [Brunch](https://github.com/brunch/brunch/tree/stable/docs/) HTML5 package builder'  

  category do
    id 'Commands'
    
    entry do
      td_notes <<-'END'
      Full syntax: `brunch new <url-or-path> [rootPath]`

      Create new brunch project. Options:

      * `url-or-path`: (required) skeleton (path or git / github repo address of project), contents of which will be copied to new dir.
      * `rootPath`: name of project directory that would be created. Default: '.'.
      * `.git directory` is automatically removed when copying.

      Brunch skeleton is basically an application boilerplate that provides a good starting point for new applications. Creating new application with any skeleton is pretty simple: `brunch new <app> --skeleton <address>`.
      
      `<address>` can be a:

      * System directory (`~/skeletons/my-private-skel`)
      * Git URL (`git://github.com/user/skel.git`)
      * GitHub-sugared URL (`gh:user/skel, github:user/skel`)
      * Each skeleton must have `config.(js,coffee)`.

      Short-cut: `brunch n`.

      Examples:

      * `brunch n ~/brunch-templates/simple`
      * `brunch n gh:paulmillr/brunch-with-chaplin twitter`
      END
      name 'brunch new'
      
    end 
    
    entry do
      td_notes <<-'END'
      Build a brunch project. Options
      
      * `-e SETTING, --env SETTING:` apply settings from `config.overrides[SETTING]`
      * `-P, --production`: run optimize/minify plugins during compilation, disable source maps and auto-reload; 
      * same as `-e production` and settings can be modified in `config.overrides.production`
      
      Short-cut: `brunch b`.

      Examples:

      * `brunch b -P`: would create optimized/production build.
      * `brunch b -e ios`: build using the settings from config.overrides.ios
      END
      name 'brunch build'
    end 
    
    entry do
      td_notes <<-'END'
      Watch brunch directory and rebuild if something changed. Options:

      all the same options available in brunch build, plus:
      
      * `-s, --server:` run a simple http server that would server public dir in / and test dir in /test/
      * `-p PORT, --port PORT:` if a server option was specified, define on which port the server would run
      
      Short-cut: `brunch w`.

      Examples:

      * `brunch w`: simply watch current directory & compile the output to public directory.
      * `brunch w -s`: watch current project and run a webserver that would work on public directory.
      * `brunch w -sp 8841`: same as above, but run webserver on port 8841.
      * `brunch w -e ios`: watch current directory & compile the output using settings from config.overrides.ios
      END
      name 'brunch watch'
    end 
    
  end  
end