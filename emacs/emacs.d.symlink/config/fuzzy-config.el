;;;; Fuzzy finding, auto-complete, fast navigation

(use-package projectile
  :defer t
  :config
  (progn
    (projectile-global-mode t)
    ;; use etags instead of just TAGS for both e- and vim tags
    (setq projectile-tags-file-name "etags")))

(use-package helm
  :defer t
  :config
  (progn
    (helm-mode t) ; helm is a general matching framework that works on freakin' everything apparently

    (define-key helm-map (kbd "C-j") 'helm-next-line)
    (define-key helm-map (kbd "C-k") 'helm-previous-line)))

(use-package helm-projectile
  :defer t
  :init (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile)
  :config (helm-projectile-on))


(provide 'fuzzy-config)
