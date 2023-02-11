;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
;(scroll-bar-mode -1)

;;Time
(display-time-mode 1) 
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

 (menu-bar-mode 0) 
(setq make-backup-files nil)
(when (display-graphic-p) (toggle-scroll-bar -1)) ;;滚动条
(column-number-mode t)  
;; 显示行号
(global-display-line-numbers-mode 1)
;(global-linum-mode 1)
;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)
(icomplete-mode 1)
(setq auto-save-default nil)
(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

;;Fonts
(set-face-attribute 'default nil :font "monaco 12") 
;; 快速打开配置文件
(defun open-init-file()
 (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;启动

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
(setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))

;;Projectie
(projectile-mode +1)
;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;;Mode
;(setq sml/no-confirm-load-theme t) 
;    (setq sml/theme 'respectful) 
;    (sml/setup)

;(simple-modeline-mode)

;(mood-line-mode)
;(mood-line-glyph-alist . mood-line-glyphs-fira-code)
;(setq mood-line-glyph-alist mood-line-glyphs-fira-code)

;;Theme
;(load-theme 'leuven t)                 
;(setq leuven-scale-outline-headlines nil)
;(setq leuven-scale-org-agenda-structure nil)
;(setq leuven-scale-volatile-highlight nil)

(load-theme 'srcery t)



;;顶部TAB
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-g")  'centaur-tabs-backward)
(global-set-key (kbd "C-h") 'centaur-tabs-forward)

;;NeoTREE
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;

(provide 'init-ui)
