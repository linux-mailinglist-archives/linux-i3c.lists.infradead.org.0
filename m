Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A57C189E78
	for <lists+linux-i3c@lfdr.de>; Wed, 18 Mar 2020 16:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgyjBU8RTLGo96dfMA5XxeqIag3DFCf00zNSLquqVeQ=; b=FYBGJnyZMfSnAX
	uBkySo83DSx23QaxeOy2RaH1J2BbEcY/9ZZwMiCRnHDyG1hV3i/H5WsLZzBEpaWHhZMO8eUiiBp0i
	6x61FLZjToBhnKg3umB7+uBy9+b0evF59oSHE4ucp3hMT+Iw7hBtvh6VvhRHYt13asAVu/KGdojXn
	sCrxR9pnKsN+Ydq7Fr/KIrPIJLP7E1yhhHPlqKtwbIwvW9mN3HPuYAwyhqHruxqapwDjKf2zRCN6q
	JEpubbDarekcYgPUw2NAsui2rdbth3Rc3r1Q+8ypUbI/NKA2snIE+e22K1JtZ4UnBzJOFOJi6YA2a
	71OniuDjoOaTlkBIBzkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEaCF-0001XK-7F
	for lists+linux-i3c@lfdr.de; Wed, 18 Mar 2020 15:01:27 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEaBz-0000me-AW
 for linux-i3c@lists.infradead.org; Wed, 18 Mar 2020 15:01:13 +0000
Received: from localhost (p54B333FA.dip0.t-ipconnect.de [84.179.51.250])
 by pokefinder.org (Postfix) with ESMTPSA id 0D00C2C2E83;
 Wed, 18 Mar 2020 16:01:07 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [RFC PATCH v2 5/6] i2c: of: mark a whole array of regs as reserved
Date: Wed, 18 Mar 2020 16:00:58 +0100
Message-Id: <20200318150059.21714-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_080111_671186_4B88746D 
X-CRM114-Status: GOOD (  12.45  )
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
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran@bingham.xyz>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Back then, 'reg' properties in I2C DT bindings only contained one
address and this address was assigned a device and, thus, blocked.
Meanwhile, chips using multiple addresses are common and the 'reg'
property can be an array described by 'reg-names'. This code enhances
I2C DT parsing, so it will reserve all addresses described in an array.
They will be bound to the 'dummy' driver as 'reserved' iff the first
address can be assigned successfully. If that is not the case, the array
is not further considered. If one later address of the array can not be
assigned, it will be reported but we don't bail out. The driver has to
decide if that address is critical or not.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/i2c-core-of.c | 70 +++++++++++++++++++++++++--------------
 1 file changed, 46 insertions(+), 24 deletions(-)

diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
index f2d09ea0d336..67eb2cd305cf 100644
--- a/drivers/i2c/i2c-core-of.c
+++ b/drivers/i2c/i2c-core-of.c
@@ -16,25 +16,18 @@
 #include <linux/i2c.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/sysfs.h>
 
 #include "i2c-core.h"
 
-int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
+static void of_i2c_decode_board_info(struct device_node *node, u32 addr,
+				     bool first_addr, struct i2c_board_info *info)
 {
-	u32 addr;
-	int ret;
-
 	memset(info, 0, sizeof(*info));
 
-	ret = of_property_read_u32(node, "reg", &addr);
-	if (ret) {
-		pr_err("invalid reg on %pOF\n", node);
-		return ret;
-	}
-
-	if (of_modalias_node(node, info->type, sizeof(info->type)) < 0)
+	if (!first_addr || of_modalias_node(node, info->type, sizeof(info->type)) < 0)
 		strlcpy(info->type, I2C_RESERVED_DRV_NAME, sizeof(I2C_RESERVED_DRV_NAME));
 
 	if (addr & I2C_TEN_BIT_ADDRESS) {
@@ -51,11 +44,27 @@ int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
 	info->of_node = node;
 	info->fwnode = of_fwnode_handle(node);
 
-	if (of_property_read_bool(node, "host-notify"))
-		info->flags |= I2C_CLIENT_HOST_NOTIFY;
+	if (first_addr) {
+		if (of_property_read_bool(node, "host-notify"))
+			info->flags |= I2C_CLIENT_HOST_NOTIFY;
+
+		if (of_get_property(node, "wakeup-source", NULL))
+			info->flags |= I2C_CLIENT_WAKE;
+	}
+}
+
+int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
+{
+	u32 addr;
+	int ret;
+
+	ret = of_property_read_u32(node, "reg", &addr);
+	if (ret) {
+		pr_err("invalid reg on %pOF\n", node);
+		return ret;
+	}
 
-	if (of_get_property(node, "wakeup-source", NULL))
-		info->flags |= I2C_CLIENT_WAKE;
+	of_i2c_decode_board_info(node, addr, true, info);
 
 	return 0;
 }
@@ -64,21 +73,34 @@ EXPORT_SYMBOL_GPL(of_i2c_get_board_info);
 static struct i2c_client *of_i2c_register_device(struct i2c_adapter *adap,
 						 struct device_node *node)
 {
-	struct i2c_client *client;
+	struct i2c_client *client, *first_client = ERR_PTR(-ENOENT);
 	struct i2c_board_info info;
-	int ret;
+	bool first_reg = true;
+	unsigned int i = 0;
+	const __be32 *prop;
+	u16 reg;
 
 	pr_debug("register %pOF\n", node);
 
-	ret = of_i2c_get_board_info(node, &info);
-	if (ret)
-		return ERR_PTR(ret);
+	while ((prop = of_get_address(node, i++, NULL, NULL))) {
+		reg = of_read_number(prop, 1);
+		of_i2c_decode_board_info(node, reg, first_reg, &info);
+
+		client = i2c_new_client_device(adap, &info);
+		if (IS_ERR(client)) {
+			pr_err("failure registering addr 0x%02x for %pOF (%ld)\n",
+				reg, node, PTR_ERR(client));
+			if (first_reg)
+				return client;
+		}
 
-	client = i2c_new_client_device(adap, &info);
-	if (IS_ERR(client))
-		pr_err("failure registering %pOF (%ld)\n", node, PTR_ERR(client));
+		if (first_reg) {
+			first_client = client;
+			first_reg = false;
+		}
+	}
 
-	return client;
+	return first_client;
 }
 
 void of_i2c_register_devices(struct i2c_adapter *adap)
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
