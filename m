Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C913FD3FE
	for <lists+linux-i3c@lfdr.de>; Fri, 15 Nov 2019 06:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ub96GVshG8dkZdDOmw6ngxOQ/oTsMApa266feTT6Wk=; b=Td0tCVek4L7UwK
	pPLmD1sHitsfhI/WtRyUsPMl7M/1lBwSkbDoqSOFMZ+aKCn9DFmuPekjd1WAwRHb0wj7FpzcCcBuw
	qtcap1V9lQL7a92eXz/LnCt+cQAfhiuDdpspGku140qTKgzq/YimaNcaAfynXx7jW1zN/1YzL4dqJ
	WBQ+2Fo5CZElpDSStNKwzpVME7mBBHVtjbJIZ7gWe9tkFk+V7RGa/YA4T+KBIbcKGkqgm6oUX6MNo
	Ilv9qRhiarXaCXWPp2N1cvpit+P4WtJHzChMeVDZOZkwQ8igcL0lkJR2CsxuypPhdsGAKJoXlpO6v
	UQ8vKBGRC9S04W83pt2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTxj-0005vk-1m
	for lists+linux-i3c@lfdr.de; Fri, 15 Nov 2019 05:16:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTxf-0005us-M4
 for linux-i3c@lists.infradead.org; Fri, 15 Nov 2019 05:16:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 629D5291347;
 Fri, 15 Nov 2019 05:15:58 +0000 (GMT)
Date: Fri, 15 Nov 2019 06:15:54 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] MAINTAINERS: Mark linux-i3c mailing list moderated
Message-ID: <20191115061554.532d29e9@collabora.com>
In-Reply-To: <20191024153756.31861-1-geert+renesas@glider.be>
References: <20191024153756.31861-1-geert+renesas@glider.be>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_211559_859741_444A3705 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-i3c@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 17:37:56 +0200
Geert Uytterhoeven <geert+renesas@glider.be> wrote:

> The linux-i3c mailing list is moderated for non-subscribers.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Queued to i3c/next. It was actually queued 2 weeks ago but the
patchwork bot didn't send a notification for that one (one was sent for
your other patch) and I don't know why.

> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7f361fba6c4070ae..937017266a2edf08 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7746,7 +7746,7 @@ F:	drivers/i2c/i2c-stub.c
>  
>  I3C SUBSYSTEM
>  M:	Boris Brezillon <bbrezillon@kernel.org>
> -L:	linux-i3c@lists.infradead.org
> +L:	linux-i3c@lists.infradead.org (moderated for non-subscribers)
>  C:	irc://chat.freenode.net/linux-i3c
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git
>  S:	Maintained


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
