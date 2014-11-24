;;;; Stuff for editing scala files

(autoload 'scala-mode "scala-mode2" "Major mode for scala" t)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

(provide 'scala-config)
