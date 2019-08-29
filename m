Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC581A15B9
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 12:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=83+TenHk/aVujCazS5skQ4aY9w7vtPbh5N+rhqD397E=; b=fFQTMIK+FyxrozFLi9QJcsySul
	ilv0MIhlPg9bRmKTzrGXNFqFeIQiA/XQym33qoNqKtIiB9ODmxsL+wS/g4tSqgN4gKFix06FZvIAb
	VWkD2x61UtRmcmfK01Vx9rzDHX0qGrW2tO+bkT8BeXUo0wH0Y3uJulkQyvpf6JIcoqTEaUBfR3lWV
	uMzsbANtI6DBZXMEM97ljLdj5ENPnt4OPhRrey3+dgq5GZtxDjtg8GuEuD/hZM8hlTV3u6rt21v7a
	K5sgr/bzdF/QtNkeuKkafGacxgASefVxvDkLE0hqnd0+lTMfGMV8c/XcNmd/Ie6DcifI8NDkD5IPI
	JnXjyyvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HXK-0006cN-D8
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 10:20:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HWq-00054V-5X
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 10:19:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 24BAAC0392;
 Thu, 29 Aug 2019 10:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567073980; bh=QDbC66s0MbpPHltxDTwd7lR7K6eOPJkK1UO9tfAzUE4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Ld9hkTWWxN/DsnaOXBnAvHG4pNKtD5vOcsH6ELjzWOfgOAz4grSJ/ttRqRJ0fyQmM
 qJiBDB/OnkbEYoPqchH52tQp22bk11Xz/L15yp52udkSUzkkYY2NOyOckVF8psRH7k
 iTYaN6b7wfakoUXrMhDIQlHReNwGgCk8iwqgRE24TDCb/uLqmd66hkJY7URkbaWon1
 EBy7kzZGCLB/x2FAYUoCT44pRpKKFfPr/bb06wvcLT4TRp56V4KMSzicktNeHQPRAW
 ykfP5SGXZR0vQQRH5sM+QvwVbSC9fyfbrZtxQL1cs9kUVbvj8lvfLDP/jF+w0D8hLP
 BzGmWo2a/Mebw==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 52DA3A0064;
 Thu, 29 Aug 2019 10:19:38 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 3759A3B646;
 Thu, 29 Aug 2019 12:19:38 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i3c@lists.infradead.org
Subject: [PATCH 2/4] i3c: master: Check if devices have i3c_dev_boardinfo on
 i3c_master_add_i3c_dev_locked()
Date: Thu, 29 Aug 2019 12:19:33 +0200
Message-Id: <3e21481ddf53ea58f5899df6ec542b79b8cbcd68.1567071213.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567071213.git.vitor.soares@synopsys.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
In-Reply-To: <cover.1567071213.git.vitor.soares@synopsys.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_031944_360615_3BBE593A 
X-CRM114-Status: GOOD (  11.79  )
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

The I3C devices described in DT might not be attached to the master which
doesn't allow to assign a specific dynamic address.

This patch check if a device has i3c_dev_boardinfo and add it to
i3c_dev_desc structure. In this conditions, the framework will try to
assign the i3c_dev_boardinfo->init_dyn_addr even if stactic address = 0.

Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
---
 drivers/i3c/master.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 4d29e1f..85fbda6 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1795,6 +1795,23 @@ i3c_master_search_i3c_dev_duplicate(struct i3c_dev_desc *refdev)
 	return NULL;
 }
 
+static struct i3c_dev_boardinfo *
+i3c_master_search_i3c_boardinfo(struct i3c_dev_desc *dev)
+{
+	struct i3c_master_controller *master = i3c_dev_get_master(dev);
+	struct i3c_dev_boardinfo *boardinfo;
+
+	if (dev->boardinfo)
+		return NULL;
+
+	list_for_each_entry(boardinfo, &master->boardinfo.i3c, node) {
+		if (dev->info.pid == boardinfo->pid)
+			return boardinfo;
+	}
+
+	return NULL;
+}
+
 /**
  * i3c_master_add_i3c_dev_locked() - add an I3C slave to the bus
  * @master: master used to send frames on the bus
@@ -1816,6 +1833,7 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 {
 	struct i3c_device_info info = { .dyn_addr = addr };
 	struct i3c_dev_desc *newdev, *olddev;
+	struct i3c_dev_boardinfo *boardinfo;
 	u8 old_dyn_addr = addr, expected_dyn_addr;
 	struct i3c_ibi_setup ibireq = { };
 	bool enable_ibi = false;
@@ -1875,6 +1893,10 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 	if (ret)
 		goto err_detach_dev;
 
+	boardinfo = i3c_master_search_i3c_boardinfo(newdev);
+	if (boardinfo)
+		newdev->boardinfo = boardinfo;
+
 	/*
 	 * Depending on our previous state, the expected dynamic address might
 	 * differ:
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
