;;;; Stuff for editing java files

(add-hook 'java-mode-hook '(lambda ()
                            (setq evil-shift-width 2
                                  c-basic-offset 2
                                  tab-width 2)
                            (evil-leader/set-key
                              "t" 'projectile-test-project)))

(provide 'java-config)
