Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B2144B0
	for <lists+linux-i3c@lfdr.de>; Mon,  6 May 2019 08:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oSaAI+4h/eTU34CYtF8RjEVZXCkXRENlDui59BeoZqQ=; b=E21+i7sPReAiMw
	Qi/ErCK0uKItdA56uHbugPODzi0oJi1TRUAqzZ1TX6GKc1rYZtBtAtKI0gLIiQgkc14iIhnL1zCio
	oFP2cMkKCkQjPQsXfnIGbG5rbEbJgPpl0ViG+p5YWloqBUooM03YF9UsffKT8ODXmWj2/RFwVpDod
	FKbya1jmd7A4rvooqZESfIvAytRs5OoLjn2Unm7ZRb+8qo2fm5PcbbvtW7QheIXFGnLDRms4ntkTD
	0i/SS+VxODo/IzaH3fpnA1yqooyUD3aruhVn1udJiZLUNcatTlE2y4yYhgJ0fqAmR2qsRsL3IOy0o
	wBmaLEBfDAwv+zNckc9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXaH-0006au-VV
	for lists+linux-i3c@lfdr.de; Mon, 06 May 2019 06:58:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXaE-0006aE-Dw
 for linux-i3c@lists.infradead.org; Mon, 06 May 2019 06:58:43 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3C5942613C6;
 Mon,  6 May 2019 07:58:39 +0100 (BST)
Date: Mon, 6 May 2019 08:58:35 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] i3c: Changes for 5.2
Message-ID: <20190506085835.61688fd2@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_235842_602361_C3C36DB7 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-i3c@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Przemyslaw Gaj <pgaj@cadence.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <vitor.soares@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Linus,

Here is the I3C PR for 5.2.

Regards,

Boris

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.2

for you to fetch changes up to 476c7e1d34f2a03b1aa5a924c50703053fe5f77c:

  i3c: Fix a shift wrap bug in i3c_bus_set_addr_slot_status() (2019-05-06 08:15:02 +0200)

----------------------------------------------------------------
* Fix a shift wrap bug in the core
* Remove dead code in the DW driver

----------------------------------------------------------------
Dan Carpenter (1):
      i3c: Fix a shift wrap bug in i3c_bus_set_addr_slot_status()

Vitor Soares (1):
      i3c: master: dw: remove dead code from dw_i3c_master_*_xfers()

 drivers/i3c/master.c               |  5 +++--
 drivers/i3c/master/dw-i3c-master.c | 10 ----------
 2 files changed, 3 insertions(+), 12 deletions(-)

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
