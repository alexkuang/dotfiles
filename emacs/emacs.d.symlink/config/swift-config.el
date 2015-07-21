;;;; Stuff for editing swift files

(autoload 'swift-mode "swift-mode" "Major mode for swift" t)
(add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

(provide 'swift-config)
