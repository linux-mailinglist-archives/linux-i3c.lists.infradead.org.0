Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE7E12418F
	for <lists+linux-i3c@lfdr.de>; Wed, 18 Dec 2019 09:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b82xNdKSLYEFroleRHr6cMP+bSIXoa8+0FwCop7LVH8=; b=IqIQPD5BhbHpu5
	dZ6VylZKQVBG+Y44F91TY2DpwaP3aaomI5JKxlle+bkeUAgvjskhwKNMEetwY1v4yDQ/Irwdh8Gpu
	tG5IOQQHaSsoJ7oFUBI/9IEWbeZcg7j+r6yzdHDSjlavypI5IN5XCi5QxPkaWOb0J49EvcQmlECVx
	BruRjNqvuYt4HslcYuPEGwERLy7j2iPmIAaNOfgowUp1LCHszSZu9yUdj0w/UCEuDOpg0PiclvX6i
	lfvym28bxhiIfj9XkdD4SKU7l0ZszU8Isl+Im1zsHvIKbM5Mn28dbP009J63ywn8BVW8Aj1deHcvI
	iDCkS87Xi04S/4mdA6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUdi-0005Rg-JE
	for lists+linux-i3c@lfdr.de; Wed, 18 Dec 2019 08:25:02 +0000
Received: from imap2.colo.codethink.co.uk ([78.40.148.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBgw-0007mA-Er
 for linux-i3c@lists.infradead.org; Tue, 17 Dec 2019 12:11:07 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihBgt-00062E-Iw; Tue, 17 Dec 2019 12:11:03 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1ihBgt-008xPS-Aj; Tue, 17 Dec 2019 12:11:03 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk
Subject: [PATCH] i3c: make 'i3c_bus_set_mode' static
Date: Tue, 17 Dec 2019 12:01:50 +0000
Message-Id: <20191217120150.2134326-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_041106_496064_7B8BCACA 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Mailman-Approved-At: Wed, 18 Dec 2019 00:25:01 -0800
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

The function i3c_bus_set_mode() is not declared or
exported, so make it static to avoid the following
warning:

drivers/i3c/master.c:530:5: warning: symbol 'i3c_bus_set_mode' was not declared. Should it be static?

If it is needed in the future, then it should be declared
and suitably exported.

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: linux-i3c@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/i3c/master.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 043691656245..7f8f896fa0c3 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -527,8 +527,8 @@ static const struct device_type i3c_masterdev_type = {
 	.groups	= i3c_masterdev_groups,
 };
 
-int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
-		     unsigned long max_i2c_scl_rate)
+static int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
+			    unsigned long max_i2c_scl_rate)
 {
 	struct i3c_master_controller *master = i3c_bus_to_i3c_master(i3cbus);
 
-- 
2.24.0


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
