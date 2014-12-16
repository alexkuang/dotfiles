;;;; Everything to do with prettying up the UI, i.e., fruit salad

(require 'powerline)
(require 'rainbow-delimiters)

(powerline-evil-vim-color-theme)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(load-theme 'ir-black)

(setq show-paren-delay 0) ; why is this a thing??
(show-paren-mode t)

(provide 'pretty-config)
