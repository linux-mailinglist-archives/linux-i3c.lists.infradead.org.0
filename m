Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D90EAD5E
	for <lists+linux-i3c@lfdr.de>; Thu, 31 Oct 2019 11:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eIHNek9klFdTde/mptae9ETteO/6K7t3LqCpWtjgmhc=; b=Ysv
	vWOyhZ02uz9VOusA7bqM6YMJYOrEQInDrNj/o2ztGm0Txf5c1sYC5Xmswbqa9N/zbQXM2SzjDlWGc
	n5CS+gskoisjEfRensJrOOb76d3a6H3DTQedZ8KGbzcbiBpeJnKRZwqfr3TclY9Aooiq8kl+QXW26
	9ptKBG4oX7pU8by1UZFCM1fq+5vMDmN3qj3J7ApvJf5IpFuZSC8wPZROuGGs4GkfCu7DVs6Aq+gnY
	RH+PEhlw1CZ5lF4AfPSn+6WQY7bmjxeozL0NwLLVLz7XZiEqmk0mM0D+l4R5Um7QrWQHyvTTscfpy
	IQ3YalfajW2M9yhWwwg6KyVitkwICJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7cf-0001GM-LC
	for lists+linux-i3c@lfdr.de; Thu, 31 Oct 2019 10:24:09 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfBc-0005Rj-Va
 for linux-i3c@lists.infradead.org; Thu, 24 Oct 2019 15:38:06 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id HTdz2100b5USYZQ01Te0tX; Thu, 24 Oct 2019 17:38:00 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNfBX-0007CB-T1; Thu, 24 Oct 2019 17:37:59 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNfBX-0008Id-QU; Thu, 24 Oct 2019 17:37:59 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Boris Brezillon <bbrezillon@kernel.org>
Subject: [PATCH] MAINTAINERS: Mark linux-i3c mailing list moderated
Date: Thu, 24 Oct 2019 17:37:56 +0200
Message-Id: <20191024153756.31861-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_083805_184958_1C8BC858 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Mailman-Approved-At: Thu, 31 Oct 2019 03:24:08 -0700
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
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The linux-i3c mailing list is moderated for non-subscribers.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7f361fba6c4070ae..937017266a2edf08 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7746,7 +7746,7 @@ F:	drivers/i2c/i2c-stub.c
 
 I3C SUBSYSTEM
 M:	Boris Brezillon <bbrezillon@kernel.org>
-L:	linux-i3c@lists.infradead.org
+L:	linux-i3c@lists.infradead.org (moderated for non-subscribers)
 C:	irc://chat.freenode.net/linux-i3c
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git
 S:	Maintained
-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
