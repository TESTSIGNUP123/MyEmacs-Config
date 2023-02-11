;;Company-MODE
(add-hook 'after-init-hook 'global-company-mode)
(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)
  (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
   (setq company-tooltip-align-annotations t)
   (setq company-idle-delay 0.0)
  (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence))  ; 根据选择的频率进行排序，读者如果不喜欢可以去掉




(global-flycheck-mode)
;(setq truncate-lines nil) 
;(prog-mode . flycheck-mode)


;;CommonLisp
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(slime-setup)
(require 'slime)
(require 'slime-autoloads)
(slime-setup '(slime-fancy slime-banner))


(provide 'init-code)
