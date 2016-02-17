;;;; Stuff for editing haskell files

; (add-hook 'haskell-mode-hook 'haskell-indent-mode)

; ew...  There has to be a better way to fix the annoying indentation
(defun evil-open-below (count)
    "Insert a new line below point and switch to Insert state.
The insertion will be repeated COUNT times."
    (interactive "p")
    (evil-insert-newline-below)
    (setq evil-insert-count count
          evil-insert-lines t
          evil-insert-vcount nil)
    (evil-insert-state 1)
    (add-hook 'post-command-hook #'evil-maybe-remove-spaces))

(provide 'haskell-config)
