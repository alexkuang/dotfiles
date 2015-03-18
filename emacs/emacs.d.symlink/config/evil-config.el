;;;; Evil mode--Vim-like stuff

;; Must be loaded before requiring 'evil.  Not entirely sure why.
(setq-default evil-want-C-u-scroll t)

(require 'evil)
(require 'evil-search-highlight-persist)
(require 'evil-surround)
(require 'evil-visualstar)

(setq evil-shift-width 2)
(setq evil-want-fine-undo "No")

(key-chord-mode t)
(global-evil-leader-mode t)
(global-evil-surround-mode t)

(global-evil-search-highlight-persist t)
; For some reason, this breaks evil-search-highlight-persist-remove-all, which is slightly more annoying...
; (evil-select-search-module 'evil-search-module 'evil-search)

(evil-mode t)

(provide 'evil-config)
