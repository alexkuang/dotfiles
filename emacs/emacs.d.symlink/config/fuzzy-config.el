;;;; Fuzzy finding, auto-complete, fast navigation

(defun init-fuzzy ()
  (require 'projectile) ; projectile => kinda like ctrl-p but not really?
  (require 'evil)
  (require 'helm-projectile)
  (helm-mode t) ; helm is a general matching framework that works on freakin' everything apparently
  (helm-projectile-on) ; use helm stuff for projectile
  (projectile-global-mode t)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile))

(provide 'fuzzy-config)
