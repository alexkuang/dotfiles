;;;; Everything to do with prettying up the UI, i.e., fruit salad

(require 'powerline)
(require 'rainbow-delimiters)

(powerline-evil-vim-color-theme)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(load-theme 'ir-black)

(provide 'pretty-config)
