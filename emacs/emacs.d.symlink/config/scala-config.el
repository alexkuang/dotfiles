;;;; Stuff for editing scala files

(autoload 'scala-mode "scala-mode2" "Major mode for scala" t)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

(add-hook 'scala-mode-hook '(lambda ()
                            (setq evil-shift-width 2
                                  scala-indent:use-javadoc-style t)))

(provide 'scala-config)
