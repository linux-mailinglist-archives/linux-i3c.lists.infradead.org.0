Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289091E9F94
	for <lists+linux-i3c@lfdr.de>; Mon,  1 Jun 2020 09:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7fFeqDbN7wyCsTW8C7p/2jO5rKGSwAhihLpmuJ96HSU=; b=Hd/D1e4mHqCgYB
	sr28Mng519F2BNHO0c73AbrEL93dw0vdGQlM1aJgLwy+XJBSs/yEwCQJIw6F/T0uDg5Y8b/gbEcZM
	co84IjOdUHmlrWJu2AjNDHgMcOyPoFzG8hX+XTab7AaEQ6oTTjpdZrEN42FCQ3MugfgLqhzLm5Us9
	yPfzN0nu6UX5EWjwimmOf5hfNzHOVK1GVT0tgQ4qIAvUvLsC/RUOv4vqioxcjNJSRG9CMxX40j6D9
	ZIRrKFapHL2lOW1g5dMEFjkglz4WzUziApSlLuAcUamIte/Bm8lrhLsk88m6vfYtnJ91E/1o8aXWr
	IXxW8mS9Mw0wtUZ+g+IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffHF-00024r-U3
	for lists+linux-i3c@lfdr.de; Mon, 01 Jun 2020 07:54:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffHC-00021A-Pa
 for linux-i3c@lists.infradead.org; Mon, 01 Jun 2020 07:54:32 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EA4312A1B92;
 Mon,  1 Jun 2020 08:54:26 +0100 (BST)
Date: Mon, 1 Jun 2020 09:54:23 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] i3c: Changes for 5.8
Message-ID: <20200601095423.00ffb5e1@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_005430_960954_AE9E8DEA 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Linus,

Here is the I3C PR for 5.8.

Regards,

Boris

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.8

for you to fetch changes up to b4203ce0556348dcfe29f897d1dbe65102874d89:

  i3c master: GETMRL's 3rd byte is optional even with BCR_IBI_PAYLOAD (2020-04-16 14:27:46 +0200)

----------------------------------------------------------------
Fix GETMRL's logic

----------------------------------------------------------------
Nicolas Pitre (1):
      i3c master: GETMRL's 3rd byte is optional even with BCR_IBI_PAYLOAD

 drivers/i3c/master.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
