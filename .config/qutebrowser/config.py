c.content.javascript.enabled = False
c.content.blocking.enabled = True

c.editor.command = ['kitty', 'emacs', '{}']
c.url.start_pages = 'https://search.brave.com/'
c.url.default_page = 'https://search.brave.com/'
c.url.searchengines = {'DEFAULT': 'https://search.brave.com/search?q={}'}

c.hints.chars = 'arstneioqwfpuy'
c.tabs.background = True
c.tabs.last_close = 'close'
c.zoom.default = '125%'

c.fonts.default_size = '15pt'

config.bind('m', 'spawn mpv {url}')
config.bind('M', 'spawn kitty video {url}')

config.bind('<Alt-x>', 'set-cmd-text :')
config.bind('<Ctrl-s>', 'set-cmd-text :search')

config.bind('n', 'scroll left')
config.bind('o', 'scroll right')
config.bind('e', 'scroll down')
config.bind('i', 'scroll up')

config.bind('N', 'back')
config.bind('O', 'forward')
config.bind('E', 'tab-prev')
config.bind('I', 'tab-next')

config.bind('?', 'search-next')
config.bind('u', 'enter-mode insert')

config.bind('gO', 'set-cmd-text :open -t -r ')

config.bind('r', 'spawn --userscript readability')
config.bind('R', 'spawn remarkable {url} {title}')

config.load_autoconfig(False)
