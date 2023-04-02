// ==UserScript==
// 原作者：https://greasyfork.org/en/users/552186-mistwave
// 添加 https://zhuanlan.zhihu.com/*
// @name         去除知乎登陆弹窗 remove stupid login window on zhihu.com
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  fuck zhihu.com
// @author       mistwave
// @match        https://www.zhihu.com/*
// @match        https://zhuanlan.zhihu.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';
    new MutationObserver(function (mutations) {
        const button = document.querySelector('.signFlowModal button.Modal-closeButton')
        if (button) {
            button.click();
        }
    }).observe(document, { childList: true, subtree: true });
})();