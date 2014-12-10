;;;; Stuff for editing elixir files

(autoload 'elixir-mode "elixir-mode" "Major mode for elixir" t)
(add-to-list 'auto-mode-alist '("\\.elixir2\\'" . elixir-mode)) ; the defaults should be included already
(add-hook 'elixir-mode-hook '(lambda ()
                               (setq evil-shift-width 2)
                               (alchemist-mode t)))

(provide 'elixir-config)

