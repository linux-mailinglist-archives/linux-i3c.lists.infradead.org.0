Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662071949DA
	for <lists+linux-i3c@lfdr.de>; Thu, 26 Mar 2020 22:10:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMKVXX46sa7y2q283vt8fBVA98DV0G73w0qprPkjh9Q=; b=MwFGrJpRHpGaTb
	XlR6M1aBPmsmm6wOGd8siEfOhZF16x2ovt/Zr8JY2MfVyq9HA7lIG40fM3N96mMa3kFOs5RXHFgnh
	rd08TMSAVeAh44Ha+azzbXlQxm3pHYddHi3XL+usW3HPAoOm/uxMsh45A2Aje8Qv8kbDrySmVz6ZL
	ev7KXOhcau8qPmwVzcoE52nbQ4S+ByZv21IIlXzEwE5yziUkWoB1w8twhIfUloaU5F8mTG00TnOji
	bVnfhNxFywFZ3ng+0A1VCbGAFAVD1uglYs+fya0RqOrj4Jgkz9uu2/XI2+8CzY9X3Qk3UIXjSmEN1
	ijHXKtw9WnrviUKWJl1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZlT-0000jB-51
	for lists+linux-i3c@lfdr.de; Thu, 26 Mar 2020 21:10:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZlQ-0008Fx-ML
 for linux-i3c@lists.infradead.org; Thu, 26 Mar 2020 21:10:10 +0000
Received: from localhost (p54B3331F.dip0.t-ipconnect.de [84.179.51.31])
 by pokefinder.org (Postfix) with ESMTPSA id AAAC42C1F90;
 Thu, 26 Mar 2020 22:10:03 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 1/1] i3c: convert to use i2c_new_client_device()
Date: Thu, 26 Mar 2020 22:10:02 +0100
Message-Id: <20200326211002.13241-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326211002.13241-1-wsa+renesas@sang-engineering.com>
References: <20200326211002.13241-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_141008_879699_E01C1E3D 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Move away from the deprecated API.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i3c/master.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 925e1ed18a2a..d79cd6d54b3a 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -2160,7 +2160,7 @@ static int i3c_master_i2c_adapter_init(struct i3c_master_controller *master)
 	 * correctly even if one or more i2c devices are not registered.
 	 */
 	i3c_bus_for_each_i2cdev(&master->bus, i2cdev)
-		i2cdev->dev = i2c_new_device(adap, &i2cdev->boardinfo->base);
+		i2cdev->dev = i2c_new_client_device(adap, &i2cdev->boardinfo->base);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
