;;;; Flycheck: syntax checking on the fly.  Duh.

(defun init-flycheck ()
  (add-hook 'prog-mode-hook 'flycheck-mode))

(provide 'flycheck-config)
