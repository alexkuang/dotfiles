;;;; Evil mode--Vim-like stuff

(require 'evil)
(require 'evil-search-highlight-persist)
(require 'evil-surround)

(setq evil-shift-width 2)

(key-chord-mode t)
(global-evil-leader-mode t)
(global-evil-surround-mode t)

(global-evil-search-highlight-persist t)
(evil-mode t)

(provide 'evil-config)
