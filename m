Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A24A15B6
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 12:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j4c+6F2kLrLM3OlaAVNJfQIf9yAdeoPx4PXdtBrGIUg=; b=UCJ2gqCw62O+aDk1GgHkvO5NQl
	RublGOnkDMHZ8HmFfkHPpac83c3/bTwEtNX7Do3tgQYvnVXROTYVpKJ2Tj+W2xGC4T3IFQbLw3fFy
	sPPZ5BJ6CuTvIZjzgu7J0PDbkJTav8eQ35qOVsp4MgLPzcA+4/+odJgPcjp20IHGBwUx/4BK3XuUp
	vdT7Lz/2V1n02Pwc1ALpHEWomYu5LAAletcy9b0TYtU7RTmSgn94dDio1H8qxi9ZTa1nbICt8M1K5
	oog70ofP/odLs9YPZRdqfpvumpAKpZAZSXUKHQmIK/v3s74B6gSQJTkDmxPhavexZXeYJv0WCFkil
	2cJ+oemQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HXH-0006G9-QJ
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 10:20:12 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HWp-00054g-4t
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 10:19:44 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1C23FC038F;
 Thu, 29 Aug 2019 10:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567073980; bh=Baay742tAmtR5eF4AQp0vztAEFyf6Mwi4Geo9IdjYUI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Ob27sl4WyAP8VveUFpL+BxYV3wSUBnBadJam5pTzL2cVkD73KfEnXxbdjRK+7pIeL
 /7g2h+HmO2JSAsO5r15VgxLXoYP0GEHnR+i7TLfEofhn0FY7eMj19EcHHsNQX23p/g
 uXRzszdyzLILHmDcGmTEZ2rdkzy0U0kOoAS0VqXh+/Mcjpx8wWWCNUt+uDEUrQEFOR
 KKQnynSv4tWE/5/WvCWDRWXhT7p/QaO2j5s0JnCdOFs0jk5kuC7l4dXMGKJTZwBwVF
 iwXFhvhv/TbG3frCH7RGPsu6MM57qMrQPFSD/eexsoNLCW2jnv/yjnEvJm1O6/X4vR
 SyTHBitjKVRYw==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3D23EA0061;
 Thu, 29 Aug 2019 10:19:38 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 236CC3B643;
 Thu, 29 Aug 2019 12:19:38 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i3c@lists.infradead.org
Subject: [PATCH 1/4] i3c: master: detach and free device if
 pre_assign_dyn_addr() fails
Date: Thu, 29 Aug 2019 12:19:32 +0200
Message-Id: <e26948eaaf765f683d8fe0618a31a98e2ecc0e65.1567071213.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567071213.git.vitor.soares@synopsys.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
In-Reply-To: <cover.1567071213.git.vitor.soares@synopsys.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_031943_367793_59EE5630 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Joao.Pinto@synopsys.com, robh+dt@kernel.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On pre_assing_dyn_addr() the devices that fail:
  i3c_master_setdasa_locked()
  i3c_master_reattach_i3c_dev()
  i3c_master_retrieve_dev_info()

are kept in memory and master->bus.devs list. This makes the i3c devices
without a dynamic address are sent on DEFSLVS CCC command. Fix this by
detaching and freeing the devices that fail on pre_assign_dyn_addr().

Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
---
 drivers/i3c/master.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5f4bd52..4d29e1f 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1438,7 +1438,7 @@ static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
 	ret = i3c_master_setdasa_locked(master, dev->info.static_addr,
 					dev->boardinfo->init_dyn_addr);
 	if (ret)
-		return;
+		goto err_detach_dev;
 
 	dev->info.dyn_addr = dev->boardinfo->init_dyn_addr;
 	ret = i3c_master_reattach_i3c_dev(dev, 0);
@@ -1453,6 +1453,10 @@ static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
 
 err_rstdaa:
 	i3c_master_rstdaa_locked(master, dev->boardinfo->init_dyn_addr);
+
+err_detach_dev:
+	i3c_master_detach_i3c_dev(dev);
+	i3c_master_free_i3c_dev(dev);
 }
 
 static void
@@ -1647,7 +1651,7 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 	enum i3c_addr_slot_status status;
 	struct i2c_dev_boardinfo *i2cboardinfo;
 	struct i3c_dev_boardinfo *i3cboardinfo;
-	struct i3c_dev_desc *i3cdev;
+	struct i3c_dev_desc *i3cdev, *i3ctmp;
 	struct i2c_dev_desc *i2cdev;
 	int ret;
 
@@ -1746,7 +1750,8 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 	 * Pre-assign dynamic address and retrieve device information if
 	 * needed.
 	 */
-	i3c_bus_for_each_i3cdev(&master->bus, i3cdev)
+	list_for_each_entry_safe(i3cdev, i3ctmp, &master->bus.devs.i3c,
+				 common.node)
 		i3c_master_pre_assign_dyn_addr(i3cdev);
 
 	ret = i3c_master_do_daa(master);
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
