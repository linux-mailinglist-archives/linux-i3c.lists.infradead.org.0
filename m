Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3127E14AA46
	for <lists+linux-i3c@lfdr.de>; Mon, 27 Jan 2020 20:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znFnWwKP0+g9IYSDGuahF047eRzer3wvGunVkKagRUw=; b=THdmZ/1ab9m1Q0
	oIFZ1NULjltjDsc2rm6RsTVq1UyvswFaI86CrqUPPMDSSQXUC4wQCysphQLMFyvLXijNN3l2jp/Si
	NH8QTxlsxoRWnxJt182uGBUiwpNlnY4rScCKrGyvFFzbgsj1pCew7ib2TsOOvnPprQtLZ3XYeoWZw
	UF2Xospmlg09GccJjibeLnI7QiEawLDL/taRqTIR31aqUFjM2ZgpVjZWHib+g36ANw3S8o7vPr84j
	G+WJT1NKqfVdo2XpG/OO6ZjM3LcgMkHk2dh3y+JlAVMonO3Vpykthyh4NEooK/otI/wq9AuI2EBvV
	w1Fq8P9xs0nxGD2/mLlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9ql-00057y-1V
	for lists+linux-i3c@lfdr.de; Mon, 27 Jan 2020 19:15:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9qi-0004jd-S8
 for linux-i3c@lists.infradead.org; Mon, 27 Jan 2020 19:15:06 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580152504;
 bh=5PJ1QmOz7vqKCGA8OAbZfdhW0dpAIj0rV2gNmSaB8q4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=oosBFCBJvs84VjFQU8lZl92Q41FR48HxVKpfL9tzwMBQaquJJMt3V9BU/dIWZBhzO
 +jfKCYtHkWG1ZfJvhhhDNR6f9aGfryIUVYsiHqpC0TOAefPrAT06l1a9ek24Wn1YPN
 ZxF9QE0xRVykGmhTDx/ey8LE62XGHskf7e2pThvM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200127093443.0f52c6b3@collabora.com>
References: <20200127093443.0f52c6b3@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200127093443.0f52c6b3@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.6
X-PR-Tracked-Commit-Id: 3952cf8ff2f7751ee2f9d6cc6140df4667853250
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b9b627a449889e9dacfe9e7ac3cdf829a0004845
Message-Id: <158015250427.1024.3046247350246362257.pr-tracker-bot@kernel.org>
Date: Mon, 27 Jan 2020 19:15:04 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_111504_949334_06289EC7 
X-CRM114-Status: UNSURE (   0.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Mon, 27 Jan 2020 09:34:43 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b9b627a449889e9dacfe9e7ac3cdf829a0004845

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
