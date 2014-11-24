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
(defun init-packages ()
  (package-initialize)
  (package-refresh-contents)
  (require-package 'evil)
  (require-package 'evil-leader)
  (require-package 'evil-surround)
  (require-package 'evil-search-highlight-persist)
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
  (require-package 'flycheck))

;;; Evil mode--Vim-like stuff
(defun init-evil ()
  (require 'evil)
  (require 'key-chord)
  (require 'evil-search-highlight-persist)
  (require 'evil-surround)

  (key-chord-mode t)
  (global-evil-leader-mode t)
  (global-evil-surround-mode t)
  (evil-set-toggle-key "C-M-z") ; because f clobbering my C-z...

  (evil-leader/set-leader "<SPC>")
  (global-evil-search-highlight-persist t)
  (evil-leader/set-key "h" 'evil-search-highlight-persist-remove-all)
  (key-chord-define evil-insert-state-map  "jk" 'evil-normal-state) ; inoremap jk <ESC>
  (evil-mode t))

;;; Turn my UI into fruit salad once more
(defun init-pretty ()
  (require 'powerline)
  (require 'rainbow-delimiters)
  (powerline-evil-vim-color-theme)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  (load-theme 'ir-black))

;;; Highlight when my line is > 120 chars
(defun init-line-len-warn ()
  (require 'whitespace)
  (setq whitespace-line-column 120)
  (setq whitespace-style '(face lines-tail))
  (add-hook 'prog-mode-hook 'whitespace-mode))

;;; Fuzzy find, auto-complete, etc
(defun init-fuzzy ()
  (require 'projectile) ; projectile => kinda like ctrl-p but not really?
  (require 'evil)
  (require 'helm-projectile)
  (helm-mode t) ; helm is a general matching framework that works on freakin' everything apparently
  (helm-projectile-on) ; use helm stuff for projectile
  (projectile-global-mode t)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile))

(defun init-markdown ()
  (autoload 'markdown-mode "markdown-mode" "Major mode for *.md files" t)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode)))

(defun init-scala ()
  (autoload 'scala-mode "scala-mode2" "Major mode for scala" t)
  (add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode)))

(defun init-elixir ()
  (autoload 'elixir-mode "elixir-mode" "Major mode for elixir" t)
  (add-to-list 'auto-mode-alist '("\\.elixir2\\'" . elixir-mode)) ; the defaults should be included already
  (add-hook 'elixir-mode-hook '(lambda () (alchemist-mode t))))

(defun init-lang-autoloads ()
  (init-markdown)
  (init-scala)
  (init-elixir))

(defun init-flycheck ()
  (global-flycheck-mode))

;;; Some plugin-independent settings
(setq ring-bell-function 'ignore)
(setq-default fill-column 120)
(auto-fill-mode t) ; Not sure if I should keep this auto wrap or settle for the highlight warning
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil) ; set expandtab
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; Make backups + auto-saves less intrusive by sticking them into tmpdir
;;; While at it, also keep multiple versions of backups, since you never know.
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq backup-by-copying t) ; in case original file is symlink/etc.
(setq delete-old-versions t)
(setq version-control t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)

(defun post-init-hooks ()
  (init-pretty)
  (init-line-len-warn)
  (init-lang-autoloads)
  (init-fuzzy)
  (init-flycheck)
  (init-evil))

;;; My first slightly dubious customization!  YAY!  (See http://stackoverflow.com/a/18783152/474065)
(add-hook 'after-init-hook 'post-init-hooks)
