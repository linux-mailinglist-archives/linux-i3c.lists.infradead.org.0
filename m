Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D661664A0
	for <lists+linux-i3c@lfdr.de>; Thu, 20 Feb 2020 18:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIXPSQ8q+MArir0P68Q7OY78POStPgeekt3BL22oqTw=; b=tlT88Hcsr07YQ8
	jtlfhGAKDDMBxR/DJ83KCpidwCtmVePGNWkRRx+7eC/v6E8kOiSSU88/Ax+4HdKa07ROBw69YgaLU
	/531sPiicAr0N1hd7ILq0J57UACzUyFp63eKy1nE0A1bszplDfJvhZ0itBf+VHHVaZExuQrCmS0nf
	ObNVu4lvGwhly/7IB7MIX2db+y0u0hk+k+4CfvvAQqUqaIodUnCfMr4g2xS9BukVMFDWx+psKJD34
	VbbODgWnMkB1IbA4hHmsVrNxtVjDkx1H/1rU4OdrJbY6VgYxdK712AivtD8KDSdYYQjtU23GJBclA
	hmsnTTokPAPJUmxpm7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pap-0007sq-4z
	for lists+linux-i3c@lfdr.de; Thu, 20 Feb 2020 17:26:31 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4paL-0007PJ-R6
 for linux-i3c@lists.infradead.org; Thu, 20 Feb 2020 17:26:03 +0000
Received: from localhost (p5486CC48.dip0.t-ipconnect.de [84.134.204.72])
 by pokefinder.org (Postfix) with ESMTPSA id 721632C1EC5;
 Thu, 20 Feb 2020 18:25:54 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [RFC PATCH 7/7] i2c: core: hand over reserved devices when requesting
 ancillary addresses
Date: Thu, 20 Feb 2020 18:24:03 +0100
Message-Id: <20200220172403.26062-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092602_077758_A9B8DD68 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Jacopo Mondi <jacopo@jmondi.org>,
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

With i2c_new_ancillary_address, we can check if the intended driver is
requesting a reserved address. Update the function to do these checks.
If the check passes, the "reserved" device will become a regular "dummy"
device.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/i2c-core-base.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index 4000a4384306..ba325f8107a3 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -975,6 +975,8 @@ struct i2c_client *i2c_new_ancillary_device(struct i2c_client *client,
 						u16 default_addr)
 {
 	struct device_node *np = client->dev.of_node;
+	struct device *reserved_dev, *adapter_dev = &client->adapter->dev;
+	struct i2c_client *reserved_client;
 	u32 addr = default_addr;
 	int i;
 
@@ -984,7 +986,21 @@ struct i2c_client *i2c_new_ancillary_device(struct i2c_client *client,
 			of_property_read_u32_index(np, "reg", i, &addr);
 	}
 
-	dev_dbg(&client->adapter->dev, "Address for %s : 0x%x\n", name, addr);
+	dev_info(adapter_dev, "Address for %s : 0x%x\n", name, addr);
+
+	/* No need to scan muxes, siblings must sit on the same adapter */
+	reserved_dev = device_find_child(adapter_dev, &addr, __i2c_check_addr_busy);
+	reserved_client = i2c_verify_client(reserved_dev);
+
+	if (reserved_client) {
+		if (reserved_client->dev.of_node != np ||
+		    strcmp(reserved_client->name, I2C_RESERVED_DRV_NAME) != 0)
+			return ERR_PTR(-EBUSY);
+
+		strlcpy(reserved_client->name, I2C_DUMMY_DRV_NAME, sizeof(client->name));
+		return reserved_client;
+	}
+
 	return i2c_new_dummy_device(client->adapter, addr);
 }
 EXPORT_SYMBOL_GPL(i2c_new_ancillary_device);
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
