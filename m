Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF96C14EC67
	for <lists+linux-i3c@lfdr.de>; Fri, 31 Jan 2020 13:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UqkPPwTAc4jrQDM0KJhyNTsH4SkvmWUG/XR/N/WE2Ig=; b=HQ61ihw24D3Gs4ZG5e1IjXA0Su
	J36O1EF3I5ELe0knYGo6dQ6KHzAZ0ZdKyFZ24aG3Ws9ZR6qNwtyYmztMcSBcyHJnL8wHmoLUHLdYa
	wy56xCfsHf+tMzJG7V6u4eoVHm+pO+WOgXabaf2oxDckUOC/Dv3Gi5eCns7iJ7tJVSgFY1ejYWcFY
	16f4rCBC2/JQaCPZxCO0vlyi8Gd9J1M6fW2pgOR2SSd/52Qu1T12o9Kxy/lUCJn//anf1UbefZMtJ
	aQEvPess+r2wXuIho10jCaVOeQNEpZPGdAo7pRdzgNf4aCrw+pZEgIwJwU0WWNYBUAEI5aQCAYK1S
	NeLaJosg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixVLj-0006Bx-GC
	for lists+linux-i3c@lfdr.de; Fri, 31 Jan 2020 12:24:39 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwmHw-0001Ct-K1
 for linux-i3c@lists.infradead.org; Wed, 29 Jan 2020 12:17:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6230A40829;
 Wed, 29 Jan 2020 12:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580300261; bh=EWznO/7FCN3HQvpSq9KAAmnQZlA5wLD6bU4uUlvRy1Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=HeGuhWKA79xkjv8P+Gup8W5OG9GV4gOdWlHYCFsUYIhx0FsBO+jeqN+oIO4Y3vjhN
 hVULQnS2Cj/HQPSKbAcBQxnt74tHZX0/uVLwqz7DbJwwL9Ha8wFSM4tqqAfLzGsB+k
 qcgFrkkiaHWlvY8X7Hcuf4FTYLQGH0QRU3DizlEi+Tt4kDiqCWM7XfPqNC2nZqmKxD
 owpywKt4gmhVfCb7o9wNJYGel7/Uj3ZH5kfBrnnXEtQ5JMZ5hOOaLWnAUsgykyLXex
 W43U6rX4FRL0fjf5V80R4zy8Cp6Zua6RYumW29jmIu522nRUq6+zLxpJb9C3q+BDJc
 M+ZmB7A809n1g==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5C76FA0072;
 Wed, 29 Jan 2020 12:17:38 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 2BE1F3F035;
 Wed, 29 Jan 2020 13:17:38 +0100 (CET)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org
Subject: [RFC v2 1/4] i3c: master: export i3c_masterdev_type
Date: Wed, 29 Jan 2020 13:17:32 +0100
Message-Id: <7c742fba6c488b29f6fb15a5b910e799d50c5051.1580299067.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1580299067.git.vitor.soares@synopsys.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
In-Reply-To: <cover.1580299067.git.vitor.soares@synopsys.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_041744_656995_91405A0C 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Mailman-Approved-At: Fri, 31 Jan 2020 04:24:38 -0800
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, arnd@arndb.de,
 wsa@the-dreams.de, gregkh@linuxfoundation.org, bbrezillon@kernel.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, broonie@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Exporte i3c_masterdev_type so i3cdev module can verify if an i3c device
is a master.

Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
---
 drivers/i3c/internals.h | 1 +
 drivers/i3c/master.c    | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i3c/internals.h b/drivers/i3c/internals.h
index 86b7b44..bc062e8 100644
--- a/drivers/i3c/internals.h
+++ b/drivers/i3c/internals.h
@@ -11,6 +11,7 @@
 #include <linux/i3c/master.h>
 
 extern struct bus_type i3c_bus_type;
+extern const struct device_type i3c_masterdev_type;
 
 void i3c_bus_normaluse_lock(struct i3c_bus *bus);
 void i3c_bus_normaluse_unlock(struct i3c_bus *bus);
diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 7f8f896..8a0ba34 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -523,9 +523,10 @@ static void i3c_masterdev_release(struct device *dev)
 	of_node_put(dev->of_node);
 }
 
-static const struct device_type i3c_masterdev_type = {
+const struct device_type i3c_masterdev_type = {
 	.groups	= i3c_masterdev_groups,
 };
+EXPORT_SYMBOL_GPL(i3c_masterdev_type);
 
 static int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
 			    unsigned long max_i2c_scl_rate)
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
