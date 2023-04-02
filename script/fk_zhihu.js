// ==UserScript==
// @name         remove stupid login window on zhihu.com
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  fuck zhihu.com
// @author       mistwave
// @match        https://www.zhihu.com/*
// @match        https://zhuanlan.zhihu.com/*
// @grant        none
// ==/UserScript==

// 原作者：https://greasyfork.org/en/users/552186-mistwave
// 在原版基础上添加 https://zhuanlan.zhihu.com/*

(function () {
    'use strict';
    new MutationObserver(function (mutations) {
        const button = document.querySelector('.signFlowModal button.Modal-closeButton')
        if (button) {
            button.click();
        }
    }).observe(document, { childList: true, subtree: true });
})();