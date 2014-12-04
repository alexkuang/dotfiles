;;;; Config all the keybindings!

(require 'helm)
(require 'evil)
(require 'key-chord)

;; because f clobbering my C-z...
(evil-set-toggle-key "C-M-z")

;; Leader maps
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key "h" 'evil-search-highlight-persist-remove-all)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state) ; inoremap jk <ESC>

;; Fuzzy find, helm interaction
(define-key evil-normal-state-map (kbd "C-p") 'helm-projectile)
(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)

(provide 'key-config)
