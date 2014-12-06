;;;; Misc config options that don't really belong anywhere else

(defun highlight-long-lines ()
  "Highlight when my line is > 120 chars"
  (require 'whitespace)
  (setq whitespace-line-column 120)
  (setq whitespace-style '(face lines-tail))
  (add-hook 'prog-mode-hook 'whitespace-mode))

;;; Make backups + auto-saves less intrusive by sticking them into tmpdir
;;; While at it, also keep multiple versions of backups, since you never know.
(defun sane-backup-files ()
  (setq backup-directory-alist `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
  (setq backup-by-copying t) ; in case original file is symlink/etc.
  (setq delete-old-versions t)
  (setq version-control t)
  (setq kept-new-versions 6)
  (setq kept-old-versions 2))

;;; Mapped to leader space in key-config
(defun switch-last-buffer ()
  "Switch back and forth between current and last buffer."
  (interactive)
    (switch-to-buffer (other-buffer (current-buffer) t)))

(setq ring-bell-function 'ignore)
(setq-default fill-column 120)
(add-hook 'text-mode-hook 'auto-fill-mode) ; use hard wrap when composing regular text
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil) ; set expandtab
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(sane-backup-files)
(highlight-long-lines)

(provide 'general-config)
