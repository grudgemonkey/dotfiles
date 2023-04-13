(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

(menu-bar-mode -1) 

(setq visible-bell t)

(load-theme 'tango-dark)


;; package shit
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org"  .  "https://orgmode.org/elpa/")
			 ("elpa"  .  "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
