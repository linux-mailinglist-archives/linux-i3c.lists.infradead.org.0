Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA3B5F61E
	for <lists+linux-i3c@lfdr.de>; Thu,  4 Jul 2019 11:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MpeAh0/aKyKFgPO/i6Fr64pUOf/a/2ts32hJhOiwPfI=; b=CKE1gV5Ku++aIJ
	f5zxfJVcEROYFy/kDMVjrYhufXfg3kWGhgBUyvp3+ghk71BRgXgqck3esmonmA/pu5eEMLjzEtHbs
	72Ni9ee3HocRe6pQVm6PiRdwiIz7/4mAucTCc2IxT62wcwKzZcWYC7naHyi9e+9nH+o9o7MW2P8aS
	8i8Q/hziCO7D+yRGV+I//gwBVIoUP9fhEl+Jw2lDJ2ZPiy1wxhuxnzLj2BQBG8Jxy++wnHk/5NDfs
	XF7tnzewm1KKRQRAggPzWERUQtJ0CpEI6rgaPx2vPgeJkIMXJBjRLJSYx335FlrUkhxahNuhuUnfj
	O/WIx1XrOBUpfUR6jm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyTl-0007uy-Qh
	for lists+linux-i3c@lfdr.de; Thu, 04 Jul 2019 09:56:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhq13-0006hb-Dg; Mon, 01 Jul 2019 06:42:19 +0000
X-UUID: 43b04da3542b440abceb5b9ed713376d-20190630
X-UUID: 43b04da3542b440abceb5b9ed713376d-20190630
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 630599795; Sun, 30 Jun 2019 22:42:08 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 30 Jun 2019 23:42:07 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 14:42:05 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 1 Jul 2019 14:42:04 +0800
From: <qii.wang@mediatek.com>
To: <bbrezillon@kernel.org>
Subject: [PATCH] dt-bindings: i3c: cdns: Use correct cells for I2C device
Date: Mon, 1 Jul 2019 14:42:02 +0800
Message-ID: <1561963322-11513-1-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_234217_469843_B32E0C71 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Mailman-Approved-At: Thu, 04 Jul 2019 02:56:35 -0700
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

From: Qii Wang <qii.wang@mediatek.com>

I2C device reg should be "reg = <0x52 0x0 0x10>;"

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 .../devicetree/bindings/i3c/cdns,i3c-master.txt    |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
index 69da211..1cf6182 100644
--- a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
+++ b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
@@ -38,6 +38,6 @@ Example:
 
 		nunchuk: nunchuk@52 {
 			compatible = "nintendo,nunchuk";
-			reg = <0x52 0x80000010 0>;
+			reg = <0x52 0x0 0x10>;
 		};
 	};
-- 
1.7.9.5


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
