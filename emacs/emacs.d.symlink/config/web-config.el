;;;; Editing web stuff--html mixed with js mixed with css and the like

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun web-mode-config-hook ()
  "Configure web-mode on load"
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'web-mode-config-hook)

(provide 'web-config)
