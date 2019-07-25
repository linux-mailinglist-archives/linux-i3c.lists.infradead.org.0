Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E237791A
	for <lists+linux-i3c@lfdr.de>; Sat, 27 Jul 2019 16:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vqV24lztiGWITvabr2EQNKZdslAYapVIYhlkGF0c3fw=; b=FPJiJTGCnODWX2
	mAs29oCRtn6kTy5H5FZ4Md2b5BWBmTrgWshDJyDJZON6yZ2qcitMYOESkjjgmNbYUhGt3q7yxHacQ
	lsFLSss/LK0LGMLzKm6wN+VcqaMnDdIDk1u48JkJ4ItJp+LYx1pczpegesFdJkeCidZeoIln2Enlx
	JzH4Vw//V/DeJ0ac3UOyJcR99gARNg+ISl4dpJMmmBdpS91BGzXk9cbVEtRofX3dLroPCGTxJ0xv9
	4nRe6DTLdCjRtNluex2PCTu4QP5//uqjPdQm1mctkemraex0I+6iVCbrm5tQuaXOurnnHHhHLUkoD
	ykI2ABjIKJM/LX7Vz+3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNQ0-0003MJ-L7
	for lists+linux-i3c@lfdr.de; Sat, 27 Jul 2019 14:11:28 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkmC-00045W-Pc
 for linux-i3c@lists.infradead.org; Thu, 25 Jul 2019 20:55:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 13:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="181655273"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga002.jf.intel.com with ESMTP; 25 Jul 2019 13:51:46 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id D3FEF81; Thu, 25 Jul 2019 23:51:45 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Boris Brezillon <bbrezillon@kernel.org>,
	linux-i3c@lists.infradead.org
Subject: [PATCH v1] i3c: master: cdns: Use for_each_set_bit()
Date: Thu, 25 Jul 2019 23:51:45 +0300
Message-Id: <20190725205145.66117-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_135548_884348_43BC3886 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Mailman-Approved-At: Sat, 27 Jul 2019 07:11:26 -0700
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This simplifies and standardizes slot manipulation code
by using for_each_set_bit() library function.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/i3c/master/i3c-master-cdns.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/i3c/master/i3c-master-cdns.c b/drivers/i3c/master/i3c-master-cdns.c
index 237f24adddc6..c8adf1eb7e1e 100644
--- a/drivers/i3c/master/i3c-master-cdns.c
+++ b/drivers/i3c/master/i3c-master-cdns.c
@@ -903,7 +903,8 @@ static void cdns_i3c_master_upd_i3c_addr(struct i3c_dev_desc *dev)
 static int cdns_i3c_master_get_rr_slot(struct cdns_i3c_master *master,
 				       u8 dyn_addr)
 {
-	u32 activedevs, rr;
+	unsigned long activedevs;
+	u32 rr;
 	int i;
 
 	if (!dyn_addr) {
@@ -913,13 +914,10 @@ static int cdns_i3c_master_get_rr_slot(struct cdns_i3c_master *master,
 		return ffs(master->free_rr_slots) - 1;
 	}
 
-	activedevs = readl(master->regs + DEVS_CTRL) &
-		     DEVS_CTRL_DEVS_ACTIVE_MASK;
-
-	for (i = 1; i <= master->maxdevs; i++) {
-		if (!(BIT(i) & activedevs))
-			continue;
+	activedevs = readl(master->regs + DEVS_CTRL) & DEVS_CTRL_DEVS_ACTIVE_MASK;
+	activedevs &= ~BIT(0);
 
+	for_each_set_bit(i, &activedevs, master->maxdevs + 1) {
 		rr = readl(master->regs + DEV_ID_RR0(i));
 		if (!(rr & DEV_ID_RR0_IS_I3C) ||
 		    DEV_ID_RR0_GET_DEV_ADDR(rr) != dyn_addr)
@@ -1126,18 +1124,16 @@ static void cdns_i3c_master_upd_i3c_scl_lim(struct cdns_i3c_master *master)
 static int cdns_i3c_master_do_daa(struct i3c_master_controller *m)
 {
 	struct cdns_i3c_master *master = to_cdns_i3c_master(m);
-	u32 olddevs, newdevs;
+	unsigned long olddevs, newdevs;
 	int ret, slot;
 	u8 addrs[MAX_DEVS] = { };
 	u8 last_addr = 0;
 
 	olddevs = readl(master->regs + DEVS_CTRL) & DEVS_CTRL_DEVS_ACTIVE_MASK;
+	olddevs |= BIT(0);
 
 	/* Prepare RR slots before launching DAA. */
-	for (slot = 1; slot <= master->maxdevs; slot++) {
-		if (olddevs & BIT(slot))
-			continue;
-
+	for_each_clear_bit(slot, &olddevs, master->maxdevs + 1) {
 		ret = i3c_master_get_free_addr(m, last_addr + 1);
 		if (ret < 0)
 			return -ENOSPC;
@@ -1161,10 +1157,8 @@ static int cdns_i3c_master_do_daa(struct i3c_master_controller *m)
 	 * Clear all retaining registers filled during DAA. We already
 	 * have the addressed assigned to them in the addrs array.
 	 */
-	for (slot = 1; slot <= master->maxdevs; slot++) {
-		if (newdevs & BIT(slot))
-			i3c_master_add_i3c_dev_locked(m, addrs[slot]);
-	}
+	for_each_set_bit(slot, &newdevs, master->maxdevs + 1)
+		i3c_master_add_i3c_dev_locked(m, addrs[slot]);
 
 	/*
 	 * Clear slots that ended up not being used. Can be caused by I3C
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
