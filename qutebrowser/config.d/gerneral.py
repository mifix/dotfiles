

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


## Open new tabs (middleclick/ctrl+click) in the background.
## Type: Bool
c.tabs.background = True

## Which tab to select when the focused tab is removed.
## Type: SelectOnRemove
## Valid values:
##   - prev: Select the tab which came before the closed one (left in horizontal, above in vertical).
##   - next: Select the tab which came after the closed one (right in horizontal, below in vertical).
##   - last-used: Select the previously selected tab.
c.tabs.select_on_remove = 'last-used'
