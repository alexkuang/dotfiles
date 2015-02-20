;;;; Editing web stuff--html mixed with js mixed with css and the like

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(provide 'web-config)
