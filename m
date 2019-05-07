Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B02168FB
	for <lists+linux-i3c@lfdr.de>; Tue,  7 May 2019 19:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoIY9wQOC2nDVqXUpdraz4awNJew96PW/FSD5n3mInc=; b=HZH8Ucol5ELhhM
	C0T0ErZPt2CuMHGW0bSF9jMViX6Ejp2CNzwbGcpZQvA031KmepnnkIidM6GV+v5gWQr41pGq21IMD
	T0gozE6fKUeedPX40zMakAhvvd9rQgD0pvhYiRr1nxLMUR6Al7R+p+vfMBHtnjcGCT/5OenXwJXSS
	PhOKUCqucTdpXfsQErNwg4IarbngE5oM774mXoTssteVxUQlByHlDNdPIZpWCHWeQY/KPkr8EuRSC
	bEIAmEDFxJZj0lUikBAMoDGuCilAxekfp9b20mtFhTIgtzr/3wRJV5RIITSOrW/7ETWKLjRkg0Kyf
	qYFZCADToD14B5wkKFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3l9-0000OQ-96
	for lists+linux-i3c@lfdr.de; Tue, 07 May 2019 17:20:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3l6-0008Gd-5d
 for linux-i3c@lists.infradead.org; Tue, 07 May 2019 17:20:05 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557249603;
 bh=gWwe0zFb3P+pIl4cNVlAWOBbo7Fxyfh4BDTraeJSBXs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Z63emYpAUv+3pQ2Gja0JVsX9cPFnGv6lEBfWlYmiMthk1LRhNBdj02vZjF4Ezk1bm
 U6mcNWU6yNimyIwvqwGutzEtb4xW++8QOlj9zJCO+uP47sK8M3/U07/w8VObz2CH2M
 xGuY8SzXdcp5FhtIq0qiE3SLNDfyXAEpQtTFS9i8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190506085835.61688fd2@collabora.com>
References: <20190506085835.61688fd2@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190506085835.61688fd2@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.2
X-PR-Tracked-Commit-Id: 476c7e1d34f2a03b1aa5a924c50703053fe5f77c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 80104bb06b17497b570b11a187131dca7d445b40
Message-Id: <155724960355.23705.11213415373851030230.pr-tracker-bot@kernel.org>
Date: Tue, 07 May 2019 17:20:03 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102004_235144_0CE325A5 
X-CRM114-Status: UNSURE (   0.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <vitor.soares@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 6 May 2019 08:58:35 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/80104bb06b17497b570b11a187131dca7d445b40

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
