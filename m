Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF9F171844
	for <lists+linux-i3c@lfdr.de>; Thu, 27 Feb 2020 14:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vdnWaD93fVFrouSTpYpvEOYBOgzrPlKvRsrIA5Tch4A=; b=MVjff7IYYYN59B
	AW0ORWj+FpQtYR9ZhbH0IFyl9JJJffoj1+2noTo+bxLfsByLvrZMxVz6EK2IISBDU7eznEBOr0xrG
	cHVWwhxJiB7Mm5L1eE/oLiyfus3nh825VpSfFSuFk4KXq8uuDfBHPEUpXCDlwOiKZEh5b5MGd2gDg
	4GEUtwLLWdG8w9twTBnvCRyglnQjz4qXm/4FkkirBzMG/ezGNQjooDNZyvhYRkMCsEJ4Xhh28Lodx
	ZazGd9KNYwdR+iMxHGKFZrA9I06fn1Q1aLP1Vu1iI7dQQt6uoVstavQ8qTFJVipBuU2KXDrGcmLHz
	o4aK9zVs2I0ZUfJoOPcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ivn-00048M-2R
	for lists+linux-i3c@lfdr.de; Thu, 27 Feb 2020 13:10:23 +0000
Received: from gateway34.websitewelcome.com ([192.185.149.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ivj-00047i-KX
 for linux-i3c@lists.infradead.org; Thu, 27 Feb 2020 13:10:21 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id D4F576B2EEC
 for <linux-i3c@lists.infradead.org>;
 Thu, 27 Feb 2020 07:10:16 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 7IvgjRLBaSl8q7Ivgj5crS; Thu, 27 Feb 2020 07:10:16 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qzDnfPXQnwdKlHtoPz0jeIpy5o9H6yWTrMabKluFuZg=; b=RyWYqttgdcI7GrTHQ98ocNUFIL
 G8sByhHkV+6Bx16Q8Q+Mnnnkkfy4gC0h4yS8vMWLrhHfpZ5QfyradEaQlQvF7NG5orD2PcbTlDefY
 QjPyzb8zIFv0h3GKVYOq94Ru6eGzgpFGLyMDICkiWvXOm/6fz2ZZkfhrsYrnWaVMAQpR3dw+EfcoK
 7QVD2EFoyNrY6dJvqgz6AiU6lCTWPbxqnjUumVicoGykBCuSKlpO07zvpWbFo6iXP92ojV2XilHBu
 6PA9dK0CD/5QpQ5XT8QGpsdU1UiUAKkxsgfYVejIbdSl+bvJwwAsaOHCL80aqz8L0KLFVyXkv3byu
 nMw565cA==;
Received: from [201.162.161.188] (port=40506 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j7Ive-000s4k-OE; Thu, 27 Feb 2020 07:10:15 -0600
Date: Thu, 27 Feb 2020 07:13:07 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Vitor Soares <vitor.soares@synopsys.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 =?utf-8?Q?Przemys=C5=82aw?= Gaj <pgaj@cadence.com>
Subject: [PATCH] i3c: master: Replace zero-length array with flexible-array
 member
Message-ID: <20200227131307.GA24935@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.161.188
X-Source-L: No
X-Exim-ID: 1j7Ive-000s4k-OE
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.161.188]:40506
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_051019_764998_8AF807F8 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.149.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/i3c/master/dw-i3c-master.c   | 2 +-
 drivers/i3c/master/i3c-master-cdns.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index bd26c3b9634e..5c5306cd50ec 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -221,7 +221,7 @@ struct dw_i3c_xfer {
 	struct completion comp;
 	int ret;
 	unsigned int ncmds;
-	struct dw_i3c_cmd cmds[0];
+	struct dw_i3c_cmd cmds[];
 };
 
 struct dw_i3c_master {
diff --git a/drivers/i3c/master/i3c-master-cdns.c b/drivers/i3c/master/i3c-master-cdns.c
index 54712793709e..3fee8bd7fe20 100644
--- a/drivers/i3c/master/i3c-master-cdns.c
+++ b/drivers/i3c/master/i3c-master-cdns.c
@@ -388,7 +388,7 @@ struct cdns_i3c_xfer {
 	struct completion comp;
 	int ret;
 	unsigned int ncmds;
-	struct cdns_i3c_cmd cmds[0];
+	struct cdns_i3c_cmd cmds[];
 };
 
 struct cdns_i3c_data {
-- 
2.25.0


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
