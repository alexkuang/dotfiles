;;;; Config all the keybindings!

(require 'evil)
(require 'key-chord)


;;; Misc
(evil-set-toggle-key "C-M-z") ; because f clobbering my C-z...


;;; Leader maps
(evil-leader/set-leader "<SPC>")
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state) ; inoremap jk <ESC>
(evil-leader/set-key "hl" 'evil-search-highlight-persist-remove-all)

(evil-leader/set-key
  "bk" 'kill-buffer
  "<SPC>" 'switch-last-buffer)

(evil-leader/set-key
  "hf" 'describe-function
  "hk" 'describe-key
  "hm" 'describe-mode
  "hv" 'describe-variable)

(evil-leader/set-key
  "j" 'ace-jump-char-mode)

(provide 'key-config)
