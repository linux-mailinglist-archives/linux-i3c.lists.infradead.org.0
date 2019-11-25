Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B0E1089A3
	for <lists+linux-i3c@lfdr.de>; Mon, 25 Nov 2019 09:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzxvIGJEBgLE6GhiqjlEult0a0w11IIztoveTfjs9ww=; b=eC5qIjIo+YcgHE
	7GCSN3QOcYwVTDSeII05QKzl0LMoc4hfTJjhkE5fHOkwjTT4N00v4yAcdzm251Q+Iuk56JbETOjxu
	BV2qVQPNcv97KRS6XmqQ542p62mNrw0NogcufcAzoki6vE1TMUk63Od6dxi3NhP/rX7uu+H9dmLfx
	zSAW4DMzzWLi4nyguYNyB9TQ2TF9wuhMPtXRAwqVJyYdLTNuoj1p4iCxF/L7MEkkdhKJmF/Ojzyxh
	n1lgcHgETcZbYRxIA4Mex6J2D8AqAVTNwOR0veXLXj8n6bC+KNT3lrJzKBPqBdQNsdBEbbDhMGYBt
	VdiADU7hDPmoKFspIbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9Kf-0004fZ-5R
	for lists+linux-i3c@lfdr.de; Mon, 25 Nov 2019 08:02:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9Kc-0004eS-Av
 for linux-i3c@lists.infradead.org; Mon, 25 Nov 2019 08:02:51 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 62E8D28DB9C;
 Mon, 25 Nov 2019 08:02:47 +0000 (GMT)
Date: Mon, 25 Nov 2019 09:02:44 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] i3c: Changes for 5.5
Message-ID: <20191125090244.1ccd14cb@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_000250_503396_611B973C 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Przemyslaw Gaj <pgaj@cadence.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <vitor.soares@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Linus,

Here is the I3C PR for 5.5.

Regards,

Boris

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.5

for you to fetch changes up to ae24f2b6f828f4ae37d0f0fd3be4e7744b6aab13:

  MAINTAINERS: add myself as maintainer of Cadence I3C master controller driver (2019-11-14 10:28:51 +0100)

----------------------------------------------------------------
Minor fixes and MAINTAINERS updates

----------------------------------------------------------------
Geert Uytterhoeven (2):
      i3c: Spelling s/dicovered/discovered/
      MAINTAINERS: Mark linux-i3c mailing list moderated

Przemyslaw Gaj (1):
      MAINTAINERS: add myself as maintainer of Cadence I3C master controller driver

Vitor Soares (1):
      i3c: master: use i3c_dev_get_master()

 MAINTAINERS          | 8 +++++++-
 drivers/i3c/master.c | 4 ++--
 2 files changed, 9 insertions(+), 3 deletions(-)

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
