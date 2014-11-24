;;;; Evil mode--Vim-like stuff

(require 'evil)
(require 'key-chord)
(require 'evil-search-highlight-persist)
(require 'evil-surround)

(key-chord-mode t)
(global-evil-leader-mode t)
(global-evil-surround-mode t)
(evil-set-toggle-key "C-M-z") ; because f clobbering my C-z...

(evil-leader/set-leader "<SPC>")
(global-evil-search-highlight-persist t)
(evil-leader/set-key "h" 'evil-search-highlight-persist-remove-all)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state) ; inoremap jk <ESC>
(evil-mode t)

(setq evil-shift-width 2)

(provide 'evil-config)
