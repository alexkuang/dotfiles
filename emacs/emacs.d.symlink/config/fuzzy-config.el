;;;; Fuzzy finding, auto-complete, fast navigation

(require 'projectile) ; projectile => kinda like ctrl-p but not really?
(require 'helm-projectile)

(helm-mode t) ; helm is a general matching framework that works on freakin' everything apparently
(helm-projectile-on) ; use helm stuff for projectile
(projectile-global-mode t)
(setq projectile-tags-file-name "etags") ; use etags instead of just TAGS for both e- and vim tags

(provide 'fuzzy-config)
