

## Always restore open sites when qutebrowser is reopened.
## Type: Bool
# c.auto_save.session = False
c.auto_save.session = True

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True


## The editor (and arguments) to use for the `open-editor` command. `{}`
## gets replaced by the filename of the file to be edited.
## Type: ShellCommand
# c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']
c.editor.command =  ["nvim-gui", "-f", "{file}", "-c", "'normal {line}G{column0}l'"]
