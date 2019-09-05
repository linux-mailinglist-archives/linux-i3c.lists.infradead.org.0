Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1151EAA0EB
	for <lists+linux-i3c@lfdr.de>; Thu,  5 Sep 2019 13:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0hfU5kqKiu2H86svX58bXJJEHOcvSoHoVPQevdG8Iqk=; b=lFi
	hqai0T9t9b6hsGgUy9gi+H2ZnUzA5uo+65EKgorAsbd+9b0pb80tbEpYbsV1hk+GJLbGIgQqNGOvM
	pINnqwKmwigpO7aJIx/gDjizIhUB5qjiRBplK02Fltru3EfbMmjRpuwh+LpQpfSR/RXPeoxsOUXoW
	4eupPZEr6xaqrPr1CRsjKH/G9T7RIu/0t4YweE9NCvf61sNhgQxcq2XUZa5DekN3e19/2OgrXhpdi
	D7O2F0doLGcL8NcOcyKd7Y/3Zf6r3/PRpY/cBKoll/4YGMmeTG+DyopEJP6reQwl3YJuThha4X0L5
	Tvvoqo9JGBXO2hGgpfDMALgqSYWDUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pcH-0006B0-6k
	for lists+linux-i3c@lfdr.de; Thu, 05 Sep 2019 11:07:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pbf-0005tl-92
 for linux-i3c@lists.infradead.org; Thu, 05 Sep 2019 11:07:16 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DB94EC0DA6;
 Thu,  5 Sep 2019 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567681634; bh=kCuE+2vcMDY0lRUgKRtsl4qQzvvtkyANRIcKu2FNqwg=;
 h=From:To:Cc:Subject:Date:From;
 b=TJwsUafHAy+MDH1sbPuP36qRMZWRwfqOK49AcQPPESSeTFTpvItAS1cz1AjC/VEFx
 3C6dO47Stb53oAsY3JTOrn+L6Qp/bkMN/vhSOP/yJIn0LN6kQ07ITI243+dswfGwKo
 sf4L8YpCtIgNBOkw03DJTy91flAKzTkhTLT5bHcszjej9itj+svx4f0zU53SotGKx9
 EHOEZgnbNXfHZG7L5ZI8Ang23/jSfGOHWNUaDbisIAEAidu4SrQI3UNJ/ZWNqEUuuX
 bDu29flld8vnmLHbZm+6CoT8i5aNLJQ9hcxxjo6WTZqG84+g/Xx3sQ3mvmUV7fk+oS
 wCCgazL9X/nkg==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 50949A005C;
 Thu,  5 Sep 2019 11:07:12 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 0BCCB3FC23;
 Thu,  5 Sep 2019 13:07:12 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-i3c@lists.infradead.org
Subject: [PATCH] i3c: master: use i3c_dev_get_master()
Date: Thu,  5 Sep 2019 13:06:52 +0200
Message-Id: <a9d994b78d50a21e4eeb3a92004c56e68bb52e79.1567681102.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_040715_408614_CCE9BC61 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao.Pinto@synopsys.com, Vitor Soares <Vitor.Soares@synopsys.com>,
 bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Since we have i3c_dev_get_master() available, use it.

Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
---
 drivers/i3c/master.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5f4bd52..d54039a 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1779,7 +1779,7 @@ static void i3c_master_bus_cleanup(struct i3c_master_controller *master)
 static struct i3c_dev_desc *
 i3c_master_search_i3c_dev_duplicate(struct i3c_dev_desc *refdev)
 {
-	struct i3c_master_controller *master = refdev->common.master;
+	struct i3c_master_controller *master = i3c_dev_get_master(refdev);
 	struct i3c_dev_desc *i3cdev;
 
 	i3c_bus_for_each_i3cdev(&master->bus, i3cdev) {
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
