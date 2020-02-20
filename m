Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE8A16649A
	for <lists+linux-i3c@lfdr.de>; Thu, 20 Feb 2020 18:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHjYItFpEgSwPqtR+8iZBXSo8s7XsyeZkkXp0cPxUdw=; b=F3e71lJbR5viQG
	7C81cYXkzXJPyv4/7mZovX1r4Xw5fWRNxJqGvyH2wDiEsMnLNuABvrMEAfyCpZxsSTFtLbPlO1nSn
	5G7nrjAjVKA+n+UFUdBHqlbCvkMz02KwdiZckOqwJPdhUH2xkNANHXbrUi2GYTdfYzI98zxZasVJa
	7JbOkIm4g10q91DGrIkVEMdYBF+ZuenE3Je5ObaXqnw3AbOUzf9ZrQTzr7hpktHh68foB+ct7dm2G
	9p2kYH9tJ3VcUZN2zK7vrK8XYIsvfVAxB9WfjYTn9IRJps0L/Q/kksV0DFcIpeXzupxxInoSkcchQ
	7cnlVKpdOuTVySBbXS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pal-0007pW-J8
	for lists+linux-i3c@lfdr.de; Thu, 20 Feb 2020 17:26:27 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4paH-0007Fi-JC
 for linux-i3c@lists.infradead.org; Thu, 20 Feb 2020 17:26:01 +0000
Received: from localhost (p5486CC48.dip0.t-ipconnect.de [84.134.204.72])
 by pokefinder.org (Postfix) with ESMTPSA id A6F8A2C1EBF;
 Thu, 20 Feb 2020 18:25:52 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [RFC PATCH 4/7] i2c: of: remove superfluous parameter from exported
 function
Date: Thu, 20 Feb 2020 18:24:00 +0100
Message-Id: <20200220172403.26062-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092557_798938_7B437BC9 
X-CRM114-Status: UNSURE (   9.62  )
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

'dev' is only used for printing an error message. However, that
information is not needed because '%pOF' fully describes the location of
the error. Drop the 'dev' and remove the superfluous parameter.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/i2c-core-of.c | 7 +++----
 drivers/i3c/master.c      | 2 +-
 include/linux/i2c.h       | 6 ++----
 3 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
index d8d111ad6c85..710704cd583e 100644
--- a/drivers/i2c/i2c-core-of.c
+++ b/drivers/i2c/i2c-core-of.c
@@ -19,8 +19,7 @@
 
 #include "i2c-core.h"
 
-int of_i2c_get_board_info(struct device *dev, struct device_node *node,
-			  struct i2c_board_info *info)
+int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
 {
 	u32 addr;
 	int ret;
@@ -29,7 +28,7 @@ int of_i2c_get_board_info(struct device *dev, struct device_node *node,
 
 	ret = of_property_read_u32(node, "reg", &addr);
 	if (ret) {
-		dev_err(dev, "of_i2c: invalid reg on %pOF\n", node);
+		pr_err("of_i2c: invalid reg on %pOF\n", node);
 		return ret;
 	}
 
@@ -69,7 +68,7 @@ static struct i2c_client *of_i2c_register_device(struct i2c_adapter *adap,
 
 	dev_dbg(&adap->dev, "of_i2c: register %pOF\n", node);
 
-	ret = of_i2c_get_board_info(&adap->dev, node, &info);
+	ret = of_i2c_get_board_info(node, &info);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 7f8f896fa0c3..cc0549a9fc64 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1943,7 +1943,7 @@ of_i3c_master_add_i2c_boardinfo(struct i3c_master_controller *master,
 	if (!boardinfo)
 		return -ENOMEM;
 
-	ret = of_i2c_get_board_info(dev, node, &boardinfo->base);
+	ret = of_i2c_get_board_info(node, &boardinfo->base);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index f834687989f7..d84aaf0d83d5 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -942,8 +942,7 @@ const struct of_device_id
 *i2c_of_match_device(const struct of_device_id *matches,
 		     struct i2c_client *client);
 
-int of_i2c_get_board_info(struct device *dev, struct device_node *node,
-			  struct i2c_board_info *info);
+int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info);
 
 #else
 
@@ -969,8 +968,7 @@ static inline const struct of_device_id
 	return NULL;
 }
 
-static inline int of_i2c_get_board_info(struct device *dev,
-					struct device_node *node,
+static inline int of_i2c_get_board_info(struct device_node *node,
 					struct i2c_board_info *info)
 {
 	return -ENOTSUPP;
-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
