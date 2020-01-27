Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC3149FEC
	for <lists+linux-i3c@lfdr.de>; Mon, 27 Jan 2020 09:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F8RmF7Nh/Ov8FY+RiwA3XgpGzmjjdt3LOAb8mFEiEiQ=; b=fBBaxsuMXD+w+C
	G8yNxEbT+aEH/EmJcuHrIjbnTKxZznnOm9UJOT9LMTu2/L5O6f08yGEb6p34JSZAHzKGKttwqil9m
	mflWIbm2IPukCcl+9mR/EmoIYOsRXufOovy/+Nbik1ROSay+zqehY3ZaXhncXYjQ0WOVPuvK4HpA9
	2jVXUf9UiKqzoQlV/nGuf3V7eCWCOBO5JFJ09Gci0zcS8DGjpxEqc/Nh9qG6nRHXJWWeohEbNtSQd
	4OGgF8VJhIpi4dcjrZWUKxzUgdvuu7Tsk1jiCAFOY2NaJ2mRhbXhbJIvHqya6XjxZ6N/CE1DsFeBN
	53RPFk2CowTqydzYpzEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzrA-0004Oo-2d
	for lists+linux-i3c@lfdr.de; Mon, 27 Jan 2020 08:34:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzr7-0004G2-J8
 for linux-i3c@lists.infradead.org; Mon, 27 Jan 2020 08:34:51 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A5524292E13;
 Mon, 27 Jan 2020 08:34:45 +0000 (GMT)
Date: Mon, 27 Jan 2020 09:34:43 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] i3c: Changes for 5.6
Message-ID: <20200127093443.0f52c6b3@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_003449_765224_F610E51F 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: linux-i3c <linux-i3c@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Linus,

Here is the I3C PR for 5.6.

Best Regards,

Boris

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.6

for you to fetch changes up to 3952cf8ff2f7751ee2f9d6cc6140df4667853250:

  i3c: master: dw: reattach device on first available location of address table (2020-01-13 10:00:05 +0100)

----------------------------------------------------------------
* Core changes:
  - Make i3c_bus_set_mode() static

* Driver changes:
  - Add a per-SoC data_hold_delay property to the Cadence driver
  - Fix formatting issues in the 'CADENCE I3C MASTER IP' MAINTAINERS entry
  - Use devm_platform_ioremap_resource() where appropriate
  - Adjust DesignWare reattach logic

----------------------------------------------------------------
Benjamin Gaignard (1):
      i3c: master: make i3c_bus_set_mode static

Lukas Bulwahn (1):
      MAINTAINERS: fix style in CADENCE I3C MASTER IP entry

Przemyslaw Gaj (1):
      i3c: master: cdns: add data hold delay support

Vitor Soares (1):
      i3c: master: dw: reattach device on first available location of address table

Yangtao Li (2):
      i3c: master: dw: convert to devm_platform_ioremap_resource
      i3c: master: cdns: convert to devm_platform_ioremap_resource

 MAINTAINERS                          |  8 ++++----
 drivers/i3c/master.c                 |  4 ++--
 drivers/i3c/master/dw-i3c-master.c   | 20 +++++++++++++++++---
 drivers/i3c/master/i3c-master-cdns.c | 53 +++++++++++++++++++++++++++++++++++++++++++++--------
 4 files changed, 68 insertions(+), 17 deletions(-)

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
