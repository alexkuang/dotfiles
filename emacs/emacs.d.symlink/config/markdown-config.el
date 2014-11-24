;;;; Stuff for editing markdown files

(autoload 'markdown-mode "markdown-mode" "Major mode for *.md files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
; use hard wrap when composing in markdown, which is mostly regular text anyway
(add-hook 'markdown-mode-hook 'auto-fill-mode)

(provide 'markdown-config)
