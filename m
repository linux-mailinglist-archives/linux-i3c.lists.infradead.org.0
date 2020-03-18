Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C596B189E72
	for <lists+linux-i3c@lfdr.de>; Wed, 18 Mar 2020 16:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRwua1FelcVR9WBsZtw3g+D2qdChx/5LlS09pmwwKvo=; b=gYjCqt5tL6ru/R
	q8FBUNZJPLgcAQRiV6jUsHoAMMPeYslEHrMANNQQviw3FEF4mqfPedOSpBim4RN0+2GgsqVZp/PW2
	3NmwgQqqvXzMKkdYvxxcjorubQIZN5+CuBKnCd3HwdJDCQrJ1NVmfORdn5kc4pcP5qCxq9QQLUFM0
	alxeS8eMuOhMhdowiraE5+RUKdH43Q1kqpt6pLKFVd4lFNZXW961aiGXSXHVLyVEzvP/i8ExoChcp
	TKBh3D/VhECTPGOvcQPiy4DhtuHtvZv5OoWE1FsIK6NGtb7Z+44d1S0kWG1b1Nqephomzbg84P6qY
	SCS7NArQEAg11g2bJiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEaCE-0001UV-HR
	for lists+linux-i3c@lfdr.de; Wed, 18 Mar 2020 15:01:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEaBx-0000WW-9B
 for linux-i3c@lists.infradead.org; Wed, 18 Mar 2020 15:01:10 +0000
Received: from localhost (p54B333FA.dip0.t-ipconnect.de [84.179.51.250])
 by pokefinder.org (Postfix) with ESMTPSA id 42CA82C2E6F;
 Wed, 18 Mar 2020 16:01:05 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [RFC PATCH v2 1/6] i2c: use DEFINE for the dummy driver name
Date: Wed, 18 Mar 2020 16:00:54 +0100
Message-Id: <20200318150059.21714-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_080109_465562_A8220E26 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran@bingham.xyz>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

We use it in multiple places, so make sure it is consistent whenever we
need to change it.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/i2c/i2c-core-base.c | 8 ++++----
 drivers/i2c/i2c-core.h      | 2 ++
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index cefad0881942..3d7b8a00a7d9 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -853,7 +853,7 @@ EXPORT_SYMBOL_GPL(i2c_unregister_device);
 
 
 static const struct i2c_device_id dummy_id[] = {
-	{ "dummy", 0 },
+	{ I2C_DUMMY_DRV_NAME, 0 },
 	{ },
 };
 
@@ -869,7 +869,7 @@ static int dummy_remove(struct i2c_client *client)
 }
 
 static struct i2c_driver dummy_driver = {
-	.driver.name	= "dummy",
+	.driver.name	= I2C_DUMMY_DRV_NAME,
 	.probe		= dummy_probe,
 	.remove		= dummy_remove,
 	.id_table	= dummy_id,
@@ -896,7 +896,7 @@ static struct i2c_driver dummy_driver = {
 struct i2c_client *i2c_new_dummy_device(struct i2c_adapter *adapter, u16 address)
 {
 	struct i2c_board_info info = {
-		I2C_BOARD_INFO("dummy", address),
+		I2C_BOARD_INFO(I2C_DUMMY_DRV_NAME, address),
 	};
 
 	return i2c_new_client_device(adapter, &info);
@@ -1487,7 +1487,7 @@ static void i2c_do_del_adapter(struct i2c_driver *driver,
 static int __unregister_client(struct device *dev, void *dummy)
 {
 	struct i2c_client *client = i2c_verify_client(dev);
-	if (client && strcmp(client->name, "dummy"))
+	if (client && strcmp(client->name, I2C_DUMMY_DRV_NAME))
 		i2c_unregister_device(client);
 	return 0;
 }
diff --git a/drivers/i2c/i2c-core.h b/drivers/i2c/i2c-core.h
index 517d98be68d2..fb89fabf84d3 100644
--- a/drivers/i2c/i2c-core.h
+++ b/drivers/i2c/i2c-core.h
@@ -22,6 +22,8 @@ int i2c_check_7bit_addr_validity_strict(unsigned short addr);
 int i2c_dev_irq_from_resources(const struct resource *resources,
 			       unsigned int num_resources);
 
+#define I2C_DUMMY_DRV_NAME "dummy"
+
 /*
  * We only allow atomic transfers for very late communication, e.g. to send
  * the powerdown command to a PMIC. Atomic transfers are a corner case and not
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
