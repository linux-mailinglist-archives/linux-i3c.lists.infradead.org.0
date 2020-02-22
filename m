Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C620168E43
	for <lists+linux-i3c@lfdr.de>; Sat, 22 Feb 2020 11:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9v97bb3xgvDvTiNd0Mms5iR6WqQYYADFrr8Hqs4IdtM=; b=hHBsXpvL/7+lLq
	A4pEe089xQm6tNO7aCYHs9gFoSxj5i45SLqV1knu+8Kz5R+QrWPZtFBCMHm6KKbPkaI+2jRsmT4wy
	yyW11mF311EOnPCrxj4O5LXX8MhXsFO7DX12mpuSqLv9V1apx6sN6uLvIpWyChC/rS5a9G0e4KDvX
	8Gm2yGwfgGvje8G48IBGSCEar2j75kiQu6Rud2absCBdmRocp4fCSy55Gg0GVVYXh+rbBL+ua1Q7l
	+/0QwZFj84s4XRwQYCxirgy1p+MRCQNiYZfb2VAZ9YSDJqsIOe+2eYNt3lDx5sq6jXv339zBk4Cu2
	YV9bbedd9ApfdLQ9wp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5S0O-00061l-Ia
	for lists+linux-i3c@lfdr.de; Sat, 22 Feb 2020 10:27:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5S0K-000608-Oh
 for linux-i3c@lists.infradead.org; Sat, 22 Feb 2020 10:27:26 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 650D82711FF;
 Sat, 22 Feb 2020 10:27:20 +0000 (GMT)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Boris Brezillon <bbrezillon@kernel.org>,
 =?UTF-8?q?Przemys=C5=82aw=20Gaj?= <pgaj@cadence.com>,
 Vitor Soares <Vitor.Soares@synopsys.com>, linux-i3c@lists.infradead.org
Subject: [PATCH 0/3] i3c: Address i3c_device_id related issues
Date: Sat, 22 Feb 2020 11:27:08 +0100
Message-Id: <20200222102711.1352006-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_022724_937692_4ECA63E8 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
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

Hello,

When the I3C subsystem was introduced part of the modalias generation
logic was missing (modalias generation based on i3c_device_id tables).
This patch series addresses that limitation and simplifies our match
function along the way.

Regards,

Boris

Boris Brezillon (3):
  i3c: Fix MODALIAS uevents
  i3c: Generate aliases for i3c modules
  i3c: Simplify i3c_device_match_id()

 drivers/i3c/device.c              | 50 ++++++++++++++-----------------
 drivers/i3c/master.c              |  2 +-
 scripts/mod/devicetable-offsets.c |  7 +++++
 scripts/mod/file2alias.c          | 19 ++++++++++++
 4 files changed, 49 insertions(+), 29 deletions(-)

-- 
2.24.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
