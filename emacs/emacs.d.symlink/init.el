(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; the config dir contains settings split up into nice files/functions
(add-to-list 'load-path (concat user-emacs-directory "config"))

(defun lang-load-hooks ()
  (require 'markdown-config)
  (require 'scala-config)
  (require 'swift-config)
  (require 'web-config))

;;; load up funcs from split out files and call them
(defun post-init-hooks ()
  (require 'package-config)
  (require 'use-package) ; third-party, used a lot later on
  (require 'evil-config)
  (require 'pretty-config)
  (require 'fuzzy-config)
  (require 'flycheck-config)
  (require 'general-config)
  (require 'key-config)
  (require 'snippet-config)
  (lang-load-hooks))

;;; My first slightly dubious customization!  YAY!  (See http://stackoverflow.com/a/18783152/474065)
(add-hook 'after-init-hook 'post-init-hooks)
