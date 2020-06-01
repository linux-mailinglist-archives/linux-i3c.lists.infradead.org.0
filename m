Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0348F1EAF9E
	for <lists+linux-i3c@lfdr.de>; Mon,  1 Jun 2020 21:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glsK1yzXoiqLFfUI3gOxxGkVWoo8M5qxiplT0N7O6KA=; b=b/sCX0uavZYZ5V
	qmvL1+OL/fa1NANvZFwqauODs79EtzQMsDHQp/qgZqeicaZnOMmLS+0jF6bxAJ9sVYY0nBxNfAdc6
	aa5dwX4xed5EuZcorAwTmMOkKC40iQbFqoA7ynIemjkdhUmih2PkJYeev3XaBVxwTg4A7LvxklPxz
	fqllcra/cUm7FWIoUk6HRWbvedREWD4baH8tMAe+R70R6vBm+cJSt2L3mxvgexF4iN2s6BmbAuTAY
	OJLqFJbMsOOpRif5Kyzv8XLItgDPbGkbeMXZ+HcLt65nR+eRwv5UcbYO+A42m+5xnA5UlQhhPXJsE
	hQRrJ2laTr2opnaPmqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfqDR-0005Ce-LH
	for lists+linux-i3c@lfdr.de; Mon, 01 Jun 2020 19:35:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfqDF-00045Z-8r
 for linux-i3c@lists.infradead.org; Mon, 01 Jun 2020 19:35:10 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591040108;
 bh=cZRPhidNzgL26jD3WIMp1hGTr1qEh2Dg54jftWSYPIM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qKWrlEBlbi0VokRs8dzmb5TfxqMIKwVakCNc02SumBNeB+PIEjmNl0FSPe1wFA/Ri
 O37Az6QmTa4sFfTsxS6Bsy6VTiaPybZnlo/4TcfMZZ1/wn1NcE8tMNbks64973yigL
 G//kM6NkWWALW6GNGtB7Z1rOQq0cp2ckTlK/7a9Q=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200601095423.00ffb5e1@collabora.com>
References: <20200601095423.00ffb5e1@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200601095423.00ffb5e1@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.8
X-PR-Tracked-Commit-Id: b4203ce0556348dcfe29f897d1dbe65102874d89
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 729ea4e064202aeec149b034b459501ef0a5060e
Message-Id: <159104010842.18844.6189652777114394861.pr-tracker-bot@kernel.org>
Date: Mon, 01 Jun 2020 19:35:08 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_123509_503190_E195F101 
X-CRM114-Status: UNSURE (   0.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 1 Jun 2020 09:54:23 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/729ea4e064202aeec149b034b459501ef0a5060e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
