;;;; Everything to do with prettying up the UI, i.e., fruit salad n stuff

(require 'powerline)
(require 'rainbow-delimiters)
(require 'golden-ratio)

(powerline-evil-vim-color-theme)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(load-theme 'ir-black)

(setq show-paren-delay 0) ; why is this a thing??
(show-paren-mode t)

(golden-ratio-mode t)
(setq golden-ratio-extra-commands
      (append golden-ratio-extra-commands
              '(evil-window-left
                evil-window-right
                evil-window-up
                evil-window-down)))

(provide 'pretty-config)
