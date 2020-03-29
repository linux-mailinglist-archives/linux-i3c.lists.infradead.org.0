Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC58196BEF
	for <lists+linux-i3c@lfdr.de>; Sun, 29 Mar 2020 10:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gQY23e0VTBdGMQcFcRxqVjZau2rb5RnKpDL+AFYfoT8=; b=qjWf/92kiT2/28
	gqogAIgIxN1Ed2YwDZZ2H/6f0v8s/lyOwoR80F6RP4VT99StDK5dkNrcSfwFFgFOeWVtqZY8l8Feq
	3GjHuXMmRNnQgoo/XAsyX57vkmnnC6yFHjF1a6xyXIS8SiGh7lAOYjB7hq7R0xRZ3KdFi23VXd9mo
	hKmrVgc97EGU8kPH5yvweiV2h1JLWFvxjAVegrXldMv8/LEuM6g0RWteocES6cgNpHs+CsjHQMpgL
	rBAqUW0wCSEiZqVd2NdUI3Apj7VkCE9iJRCqUWnrrbVslw33cw/BBBrccOKeXUQ5vX0gFrBDzZtFI
	Fox9i8j2HhnPxnNa43Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jITe9-0008SZ-5X
	for lists+linux-i3c@lfdr.de; Sun, 29 Mar 2020 08:50:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jITe6-0008RW-4m
 for linux-i3c@lists.infradead.org; Sun, 29 Mar 2020 08:50:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3514B29054B;
 Sun, 29 Mar 2020 09:50:14 +0100 (BST)
Date: Sun, 29 Mar 2020 10:50:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] i3c: Changes for 5.7
Message-ID: <20200329104816.5cbdb74f@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_015018_318901_8DA42104 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-i3c <linux-i3c@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <vitor.soares@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Linus,

Here is the I3C PR for 5.7.

Best Regards,

Boris

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.7

for you to fetch changes up to c4b9de11d0101792c4d5458b18581f4f527862d1:

  i3c: convert to use i2c_new_client_device() (2020-03-29 10:35:50 +0200)

----------------------------------------------------------------
* Fix driver auto-probing related issues
* Stop using the deprecated i2c_new_device() function
* Replace zero-length array with flexible-array member

----------------------------------------------------------------
Boris Brezillon (4):
      i3c: Fix MODALIAS uevents
      i3c: Add a modalias sysfs attribute
      i3c: Generate aliases for i3c modules
      i3c: Simplify i3c_device_match_id()

Gustavo A. R. Silva (1):
      i3c: master: Replace zero-length array with flexible-array member

Wolfram Sang (2):
      i3c: master: no need to iterate master device twice
      i3c: convert to use i2c_new_client_device()

 drivers/i3c/device.c                 | 50 ++++++++++++++++++++++----------------------------
 drivers/i3c/master.c                 | 28 +++++++++++++++++++++++++---
 drivers/i3c/master/dw-i3c-master.c   |  2 +-
 drivers/i3c/master/i3c-master-cdns.c |  2 +-
 scripts/mod/devicetable-offsets.c    |  7 +++++++
 scripts/mod/file2alias.c             | 19 +++++++++++++++++++
 6 files changed, 75 insertions(+), 33 deletions(-)

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
