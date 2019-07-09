Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C230963A70
	for <lists+linux-i3c@lfdr.de>; Tue,  9 Jul 2019 20:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hCAyrFpBUtMt/iMF8EAvZfMp4NPLx95T0H0+f7mETQ=; b=QtqZwnzlmanDP2
	aoeH2hvRkQ9O2g76/uaJZGvWmGH4LX12ZaYFrsO1FoENnxIxZwGs1y2GMw5KfbDrIzrnKqUG7AXd/
	kYlHUIqD6YfWGaZz63/79ZBqZ7PFT/83qgZ0KdakNP3HAjUOphd20x1jkzYYi8W3P6zwHyuCX83nZ
	qWNruj4m3Xa94kqTSBZXS+fH/8rVOANIuJeRHLTA6nlpYTxtYjP09IJVmPdeeefEXX+RJS1pOhoQe
	Liij9ZKInW9Z5jXN57qluBgnbNhrfAZ4D6BTLdaoN/sRJXWeCZ4GGSORZ9cL6MoPdAH+9aCTFhsSj
	6uE9k4vIH4Ap94lrPdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuUJ-00019B-FI
	for lists+linux-i3c@lfdr.de; Tue, 09 Jul 2019 18:05:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuUG-0000x5-GD
 for linux-i3c@lists.infradead.org; Tue, 09 Jul 2019 18:05:09 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562695507;
 bh=YOQIGj8196mFVtXj3Kiaq7v6ACBv31XOD/iowZB9rFA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=hbhZHPWH8b6XB6rgc3Dt2FAhPd4rgcaAW3vctZp2m/NpkF5j2NrHywmmcukeJIidy
 IDftRyblefiWeGzsYWeYsx7dSzLNwL+PXqo8+QsD+S52z8EZ1cPrOxIwPc3MzyBkag
 m27T2aWLiFgL4IgmwofBeS62u72RTpWDjOSqyI6Y=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190706092755.1e0e8275@collabora.com>
References: <20190706092755.1e0e8275@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190706092755.1e0e8275@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.3
X-PR-Tracked-Commit-Id: ede2001569c32e5bafd2203c7272bbd3249e942e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 96407298ff6ef59c4554833d47d29c775d1e7652
Message-Id: <156269550794.14383.5695856165136336391.pr-tracker-bot@kernel.org>
Date: Tue, 09 Jul 2019 18:05:07 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_110508_582820_CAE3BC2C 
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

The pull request you sent on Sat, 6 Jul 2019 09:27:55 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/96407298ff6ef59c4554833d47d29c775d1e7652

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
