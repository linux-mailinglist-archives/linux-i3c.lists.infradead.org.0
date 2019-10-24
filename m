Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1372EAD5D
	for <lists+linux-i3c@lfdr.de>; Thu, 31 Oct 2019 11:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pYULyT7UIx17ojkprO3cNaF8AB7V8QdiLXAWdnzwAbg=; b=Qpb
	90SZ1WEg0E6aNNDXkzscYJe38Ags7jTSTP3vpS9kHOdFlnrEcRvYRuwRyN6xVjVhyxPm7ZyMYdYwR
	WSoiMz53/Ipmpm6NeJ4jPhFzRCqGdGHz2UK6WEi4SZ8NIorbxA9HZlA3avBV+cbcmTkNX23ZTjZl7
	dIv6TGc1beot4yzFn0ZLSf/cppJ5tHwD3CWBhcaUsKhzNFStGz1+mbReANhzKeEtIGk9j51jOXvRY
	Q5lWwOG0sBO0p8HUL2ylXG++8ftuIFd4YR3uYjAZpdf0XNbQens3LhMRCQ06HC9afPb0jL3Xnt6e8
	VawvU4GLr/ueO3pi0XYHNWBsKDSUHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7cf-0001GE-IV
	for lists+linux-i3c@lfdr.de; Thu, 31 Oct 2019 10:24:09 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNetG-0004Tf-Da
 for linux-i3c@lists.infradead.org; Thu, 24 Oct 2019 15:19:08 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id HTK22100Y5USYZQ01TK26f; Thu, 24 Oct 2019 17:19:02 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNetC-0006zB-IB; Thu, 24 Oct 2019 17:19:02 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNetC-0007hC-Gd; Thu, 24 Oct 2019 17:19:02 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Boris Brezillon <bbrezillon@kernel.org>, Jiri Kosina <trivial@kernel.org>
Subject: [PATCH trivial] i3c: Spelling s/dicovered/discovered/
Date: Thu, 24 Oct 2019 17:19:01 +0200
Message-Id: <20191024151901.29519-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081906_652275_B76584A1 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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

Fix misspellings of "discovered".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/i3c/master.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5c051dba32a51fa8..7f1e11b78371501a 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -2493,7 +2493,7 @@ int i3c_master_register(struct i3c_master_controller *master,
 
 	/*
 	 * We're done initializing the bus and the controller, we can now
-	 * register I3C devices dicovered during the initial DAA.
+	 * register I3C devices discovered during the initial DAA.
 	 */
 	master->init_done = true;
 	i3c_bus_normaluse_lock(&master->bus);
-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
