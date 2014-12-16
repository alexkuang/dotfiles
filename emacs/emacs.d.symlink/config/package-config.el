;;;; Everything to do with package management

(require 'package)

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;;; Install a package if it's not already installed
(defun require-package (package)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

;;; Run this when importing config
(defun redownload-world ()
  (package-initialize)
  (package-refresh-contents)
  (require-package 'evil)
  (require-package 'evil-leader)
  (require-package 'evil-surround)
  (require-package 'evil-search-highlight-persist)
  (require-package 'evil-visualstar)
  (require-package 'evil-search)
  (require-package 'helm)
  (require-package 'helm-projectile)
  (require-package 'ir-black-theme)
  (require-package 'key-chord)
  (require-package 'markdown-mode)
  (require-package 'scala-mode2)
  (require-package 'elixir-mode)
  (require-package 'alchemist)
  (require-package 'powerline)
  (require-package 'powerline-evil)
  (require-package 'projectile)
  (require-package 'rainbow-delimiters)
  (require-package 'flycheck)
  (require-package 'magit)
  (require-package 'ag)
  (require-package 'golden-ratio))

(provide 'package-config)
