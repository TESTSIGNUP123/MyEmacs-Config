(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/")))

(package-initialize)

(defun use-package (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package))
  (package-installed-p package))


(use-package  'mood-line)



(use-package 'simple-modeline)
(use-package 'all-the-icons)
(use-package 'centaur-tabs)
(use-package 'company)
(use-package 'company-box)
(use-package 'dash)
(use-package 'dashboard)
(use-package 'eat)
(use-package 'epl)
(use-package 'flycheck)
(use-package 'frame-local)
(use-package 'leuven-theme)
(use-package 'macrostep)
(use-package 'neotree)
(use-package 'org-bullets)
(use-package 'pkg-info)
(use-package 'powerline)
(use-package 'projectile)
(use-package 'rich-minority)
(use-package 'slime)
(use-package 'smart-mode-line)
(use-package 'zenburn-theme)


(provide 'init-package)
