Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C7B1984DF
	for <lists+linux-i3c@lfdr.de>; Mon, 30 Mar 2020 21:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7NHs80607U7/k1tZ8Mm8euhN0C34K2v8a0CjZFHHKY=; b=jWI7N2XTR9u3TP
	3aHiqov6kHF7AeMCimj6uUWeDwJsNvYjqLUHts6/lImfG4ywqlC1/SgAkEUaVcr6qzrpyfmN9fyDg
	KfnbSlYvaUXbZEXZeVlIXmTyhqVX7S7++zXY/d4NuGpugqwmm9tv049dSBcOlUbcXcblB6KL3fLFU
	Ftpzvl4HN2+/3SdPWiXthKxElY+o9deIrXgJ/8+ckXqWsYV8iXSv1j1NPWJrpGkBJnPbmu5EJPY8e
	7KQdlEKW/8F2Z+4n8Y0W/PoiA/5HkASPs29/pu9Ge0zqB2bGTKdm8euCIOUpysDe79tYorTVn8QHb
	jX9xqrzqjV2qzmyjzJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0QH-0003Qy-D7
	for lists+linux-i3c@lfdr.de; Mon, 30 Mar 2020 19:50:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0QE-0003KW-1A
 for linux-i3c@lists.infradead.org; Mon, 30 Mar 2020 19:50:11 +0000
Subject: Re: [GIT PULL] i3c: Changes for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585597808;
 bh=fF5DwcqY4G4U6cpmzqWHasL6Ak99ZVQ75vcvbgBa2MA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=wuEcZVSHH7yNfLJRxQDgTsaD9/lM22hp1sOBsUrR4+qK4MPGjVNAV41BV5fD2subS
 eJtBaxFhl/M8JHEGcD48xZNERJimNB+pIE62Ryyfrx1dZitcYmK2rFUDBV+m9v8kgD
 XOsSSzc6xiShvaraCKJugwJy+TZPiOWC+ak/TU0c=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200329104816.5cbdb74f@collabora.com>
References: <20200329104816.5cbdb74f@collabora.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200329104816.5cbdb74f@collabora.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.7
X-PR-Tracked-Commit-Id: c4b9de11d0101792c4d5458b18581f4f527862d1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c03cb66464742cf4b196b4863e4101b8cf9eb9be
Message-Id: <158559780876.12131.2222508196297047884.pr-tracker-bot@kernel.org>
Date: Mon, 30 Mar 2020 19:50:08 +0000
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_125010_100017_EC2BF171 
X-CRM114-Status: UNSURE (   0.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <vitor.soares@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 29 Mar 2020 10:50:07 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/for-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c03cb66464742cf4b196b4863e4101b8cf9eb9be

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
