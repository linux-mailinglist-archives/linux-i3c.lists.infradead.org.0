Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A37B432F
	for <lists+linux-i3c@lfdr.de>; Mon, 16 Sep 2019 23:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFjGlNsSdkVFkryV+DP9MXWpLKAtP74vH2BQidOUllg=; b=jQh7x+dSlsFKdw
	ndZhIdO6VZMYhX2nlIEdapRel6zbgExH45WmVcKUo2RiHyWVRCmeRu3+8BsxF9LqFkBvN1LhY2oyA
	pdfcsmRzoVGFRi8BUNkYyK9OpJ3n8EQ1lyTs63Z7xZd2CjQzhRaQl6J6WXKVN7kScypbHuRPPU8Kc
	/eVdNdCAryG5MtRq/wg1g/ufhN+EmmKU0C5nPcUzCBA2b5pILDYkUnhFUaVMXhHXHsiWXL4O3viT3
	4LoSpVBeCLCgWpXFskHeuqCE/pXR9Qa7PaN0GExcvU97ycTWaQMCZIOZCnfYpTgedN3dmYPhEOMyg
	2JBcsfwe3tpciPvEi9qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yeT-0005js-7W
	for lists+linux-i3c@lfdr.de; Mon, 16 Sep 2019 21:35:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yeQ-0005in-B3
 for linux-i3c@lists.infradead.org; Mon, 16 Sep 2019 21:35:15 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568669713;
 bh=PiNFwM0Sr3u3cER5de0oCo3OV0xuvlqxbb0g/N2345I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=GK9PW7TrqDMDCT+lpfoOQ+KnC0/RUtawW6YojJsffShHqET9y72sE4+6YzYxmYTDj
 q26btHYjJfM+YwxeUJxe8Y0dI2sNLY3mcJuEFQWZ9lhvQUWJvsoPiqhqn44zJ4BAnJ
 7ualna3nlvRWkVDo9xRsT1Yg/F/EojiNrjZJ5anM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190916093953.05c99b3e@collabora.com>
References: <20190916093953.05c99b3e@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190916093953.05c99b3e@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.4
X-PR-Tracked-Commit-Id: 6030f42d20cedc04df019891851320f3e257038b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 31dda85e49da949fdea5fd4e1fdeeabc44e59625
Message-Id: <156866971340.13102.13795117505251561651.pr-tracker-bot@kernel.org>
Date: Mon, 16 Sep 2019 21:35:13 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143514_403340_5D7D284F 
X-CRM114-Status: UNSURE (   0.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Mon, 16 Sep 2019 09:39:53 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/31dda85e49da949fdea5fd4e1fdeeabc44e59625

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
