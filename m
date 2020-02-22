Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F0168E44
	for <lists+linux-i3c@lfdr.de>; Sat, 22 Feb 2020 11:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BraFyJa0PhTG/9YfQtd8N0siWg6y46QRjnqa4NsrXXQ=; b=tTa3fndv6nr7i5
	E0vwM4rIgXd1WZsy9TQEQ5rHUO9I50vITWXaPsAIF2+LWau4TGeRgioQvnimdVLoj8/tQ+QO5NI2p
	K1FG1wp68KgpGwhA9zWvbvmEH5yISivcTDwJLLJ5zkQR+quc0HLjsbd0ZVtbh3+ebdgVcidkBET04
	HSyzm+woGY40I5XCRA6txaOANpdSdMXehpEq/pX8NBUJd5399XFy55pjxQoE2l3ts1SudpWy6QURR
	/uDio2EfRykHXpAATyrMhqPtHXdX+ykKUWCx89xueN4rcm0ONRZHPDlH1ASLCLt37dkpB/unukNvT
	up7y6f8LvSmmN7oB0WoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5S0O-00062b-PG
	for lists+linux-i3c@lfdr.de; Sat, 22 Feb 2020 10:27:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5S0K-00060B-Of
 for linux-i3c@lists.infradead.org; Sat, 22 Feb 2020 10:27:27 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 11BC72912ED;
 Sat, 22 Feb 2020 10:27:21 +0000 (GMT)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Boris Brezillon <bbrezillon@kernel.org>,
 =?UTF-8?q?Przemys=C5=82aw=20Gaj?= <pgaj@cadence.com>,
 Vitor Soares <Vitor.Soares@synopsys.com>, linux-i3c@lists.infradead.org
Subject: [PATCH 3/3] i3c: Simplify i3c_device_match_id()
Date: Sat, 22 Feb 2020 11:27:11 +0100
Message-Id: <20200222102711.1352006-4-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200222102711.1352006-1-boris.brezillon@collabora.com>
References: <20200222102711.1352006-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_022724_938903_DB2D1FD0 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Simply match against ->match_flags instead of trying to be smart and
fix drivers inconsistent ID tables.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/i3c/device.c | 50 +++++++++++++++++++-------------------------
 1 file changed, 22 insertions(+), 28 deletions(-)

diff --git a/drivers/i3c/device.c b/drivers/i3c/device.c
index 9e2e1406f85e..bb8e60dff988 100644
--- a/drivers/i3c/device.c
+++ b/drivers/i3c/device.c
@@ -213,40 +213,34 @@ i3c_device_match_id(struct i3c_device *i3cdev,
 {
 	struct i3c_device_info devinfo;
 	const struct i3c_device_id *id;
+	u16 manuf, part, ext_info;
+	bool rndpid;
 
 	i3c_device_get_info(i3cdev, &devinfo);
 
-	/*
-	 * The lower 32bits of the provisional ID is just filled with a random
-	 * value, try to match using DCR info.
-	 */
-	if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
-		u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
-		u16 part = I3C_PID_PART_ID(devinfo.pid);
-		u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
-
-		/* First try to match by manufacturer/part ID. */
-		for (id = id_table; id->match_flags != 0; id++) {
-			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
-			    I3C_MATCH_MANUF_AND_PART)
-				continue;
-
-			if (manuf != id->manuf_id || part != id->part_id)
-				continue;
-
-			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
-			    ext_info != id->extra_info)
-				continue;
-
-			return id;
-		}
-	}
+	manuf = I3C_PID_MANUF_ID(devinfo.pid);
+	part = I3C_PID_PART_ID(devinfo.pid);
+	ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
+	rndpid = I3C_PID_RND_LOWER_32BITS(devinfo.pid);
 
-	/* Fallback to DCR match. */
 	for (id = id_table; id->match_flags != 0; id++) {
 		if ((id->match_flags & I3C_MATCH_DCR) &&
-		    id->dcr == devinfo.dcr)
-			return id;
+		    id->dcr != devinfo.dcr)
+			continue;
+
+		if ((id->match_flags & I3C_MATCH_MANUF) &&
+		    id->manuf_id != manuf)
+			continue;
+
+		if ((id->match_flags & I3C_MATCH_PART) &&
+		    (rndpid || id->part_id != part))
+			continue;
+
+		if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
+		    (rndpid || id->extra_info != ext_info))
+			continue;
+
+		return id;
 	}
 
 	return NULL;
-- 
2.24.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
