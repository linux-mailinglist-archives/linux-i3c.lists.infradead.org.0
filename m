Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6B6A669C
	for <lists+linux-i3c@lfdr.de>; Tue,  3 Sep 2019 12:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XQ7bCQAi5719iX06wenLopkGO6oQ+X18vfHo+2FbV+w=; b=Od5ZWzbWV6h5/AvBRODK5ypN18
	BnBnKwFc+RTYIw/Yyzbz0+ASs10r1y1CytuKMnEgYOTegUyDlNFg1REMPzNyMB+JSKFw6sQJEhrHN
	V7MxM8TG6BPX7iZtiwHsNrivBvNpBYcKK1ezOMH6OstBJ/OTVV20+r9rVk4j2k4ToFzW9mVUxmp7W
	+67DTj1ivhwwVSSHBejBFrT6AteefReA/04iKVFUmW6DWGJwbvzufI9j33mY5030rofMPBjUPB1vn
	4IwJ5wdOTjb4eBG4IpKMtktPS5AvI6Bd0RnD3oUQal48RfqI1vWxSJvTmb9qt2NPM8qyJzW8fFWqe
	8smlY6PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i56AQ-0008CN-L9
	for lists+linux-i3c@lfdr.de; Tue, 03 Sep 2019 10:36:06 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i56AL-00089k-5t
 for linux-i3c@lists.infradead.org; Tue, 03 Sep 2019 10:36:04 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 775DCC0C52;
 Tue,  3 Sep 2019 10:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567506958; bh=Us+4XqIuSgrgqPQl3Zo4WsQI7jnJlgChFazSxhqaRoY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=VcPJveV+17cvScWJ1y8ynm2YFj+pUYTCZ8A9J8BiOTqLJ1F3mQl1Ozz+6OdphrqMT
 18nzb6i7BaifA1vfldZQ62ncYjlI0euYZWb9PoezB+nzHj2+KQC55v42srhl2SimdN
 ke7IFjKUbpiKSOKASEsJtXoO78yGyALucxSUOh1Qg4zpTReQjfnnXUpRrmQ0WXQD1f
 znED+FhcFsL0NmFRh1hJAyXWPwC0akd+tqiNll5JElvMSRgcYWkPyZPx12OImR1Drs
 pAvo8/uEtHKxv/+A780vUOMSKdzDThPYWNEuNvjZQYns6pIp/molgzJ1l/sz2YHp5M
 5jhTkeXWnq8QA==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id CBF74A0068;
 Tue,  3 Sep 2019 10:35:56 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id A0C6C3C0D4;
 Tue,  3 Sep 2019 12:35:56 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i3c@lists.infradead.org
Subject: [PATCH v2 1/5] i3c: master: detach and free device if
 pre_assign_dyn_addr() fails
Date: Tue,  3 Sep 2019 12:35:50 +0200
Message-Id: <105a3ac1653e9ae658056a5ec9ddc2a084a61669.1567437955.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567437955.git.vitor.soares@synopsys.com>
References: <cover.1567437955.git.vitor.soares@synopsys.com>
In-Reply-To: <cover.1567437955.git.vitor.soares@synopsys.com>
References: <cover.1567437955.git.vitor.soares@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_033601_426896_4FB284F6 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Joao.Pinto@synopsys.com, bbrezillon@kernel.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, pgaj@cadence.com, robh+dt@kernel.org
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
Changes in v2:
  - Move out detach/free the i3c_dev_desc from pre_assign_dyn_addr()
  - Convert i3c_master_pre_assign_dyn_addr() to return an int

 drivers/i3c/master.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5f4bd52..586e34f 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1426,19 +1426,19 @@ static void i3c_master_detach_i2c_dev(struct i2c_dev_desc *dev)
 		master->ops->detach_i2c_dev(dev);
 }
 
-static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
+static int i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
 {
 	struct i3c_master_controller *master = i3c_dev_get_master(dev);
 	int ret;
 
 	if (!dev->boardinfo || !dev->boardinfo->init_dyn_addr ||
 	    !dev->boardinfo->static_addr)
-		return;
+		return 0;
 
 	ret = i3c_master_setdasa_locked(master, dev->info.static_addr,
 					dev->boardinfo->init_dyn_addr);
 	if (ret)
-		return;
+		return ret;
 
 	dev->info.dyn_addr = dev->boardinfo->init_dyn_addr;
 	ret = i3c_master_reattach_i3c_dev(dev, 0);
@@ -1449,10 +1449,12 @@ static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
 	if (ret)
 		goto err_rstdaa;
 
-	return;
+	return 0;
 
 err_rstdaa:
 	i3c_master_rstdaa_locked(master, dev->boardinfo->init_dyn_addr);
+
+	return ret;
 }
 
 static void
@@ -1647,7 +1649,7 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 	enum i3c_addr_slot_status status;
 	struct i2c_dev_boardinfo *i2cboardinfo;
 	struct i3c_dev_boardinfo *i3cboardinfo;
-	struct i3c_dev_desc *i3cdev;
+	struct i3c_dev_desc *i3cdev, *i3ctmp;
 	struct i2c_dev_desc *i2cdev;
 	int ret;
 
@@ -1746,8 +1748,14 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 	 * Pre-assign dynamic address and retrieve device information if
 	 * needed.
 	 */
-	i3c_bus_for_each_i3cdev(&master->bus, i3cdev)
-		i3c_master_pre_assign_dyn_addr(i3cdev);
+	list_for_each_entry_safe(i3cdev, i3ctmp, &master->bus.devs.i3c,
+				 common.node) {
+		ret = i3c_master_pre_assign_dyn_addr(i3cdev);
+		if (ret) {
+			i3c_master_detach_i3c_dev(i3cdev);
+			i3c_master_free_i3c_dev(i3cdev);
+		}
+	}
 
 	ret = i3c_master_do_daa(master);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
