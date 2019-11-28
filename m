Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A51010C14E
	for <lists+linux-i3c@lfdr.de>; Thu, 28 Nov 2019 02:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LArpv5a/eNkiBn9AG9p1+BjJJytc2ec09XPcAgR8714=; b=DGk
	YDyyQppbqSgXgiUZVFjPQ7JPTcv23kMoaSK8XIQ3GzeFmNmioNHzp4MfjcbBzOp4VyKTyPaCHMyiq
	NTBDUeubsXjAaY5ei5Was7y3MwpYDgdCMbY/G7WX5LiGcdYCSYHMj/dD6rERhwzSkKsjVW76lyxhR
	j/bvYxEg+AYGSp4IE0VKLshcjAc4BfJrKa/P3D+VLQ46tDSuuH3cAr5yoyecJrE/jJUWXrWFlxnne
	BoEuROfGuBAM8qY2kdyGguQu7bedwrHboh78ZrxxxVVyPRhBuik77qoXtMbaJICBxOnlvbd2PzysV
	FfPevGfBckqaOgJBULR+K1XrDmmmlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia8Oy-00023S-9H
	for lists+linux-i3c@lfdr.de; Thu, 28 Nov 2019 01:15:24 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia8Ov-00021w-Oh
 for linux-i3c@lists.infradead.org; Thu, 28 Nov 2019 01:15:23 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id ECB7FC00A8;
 Thu, 28 Nov 2019 01:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574903717; bh=IzaiyApQqSN9hiSNRYnURBJO1N5BcD4Dw1ZkkBRHccE=;
 h=From:To:Cc:Subject:Date:From;
 b=JAURe9XNIJohBYlrQ6uOKre1T7Od8ZyMc1wiUAZgd61veAMIYLyK1enBkEVZbBPON
 Xxthu9q6Coz7SOSUELADx8y1iq9Ase++MtBq5rfrBXsTcwH9OTie1sZmmfGccnU7RU
 6HWR090zaj56nKA/vGczWXQiBpFlPZeyb+93ujNN6EYAFtSHfO9SRhq14wGEyoOIHc
 60hJ3twK1OJ0tr8FrXmI8MAGX05KrvHPAiD7XnVoiobDf31yyWk9UasKWPga0OE3DQ
 ApbE1ey7G4Hq9cKgs+Y9+WUZqBYfLzaeo2La/jvLmOCmkAUJyd+njjR6QOR5njoGgo
 D84gKqJTlVqtw==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 451D6A0066;
 Thu, 28 Nov 2019 01:15:14 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 01FF27010;
 Thu, 28 Nov 2019 02:15:14 +0100 (CET)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-i3c@lists.infradead.org
Subject: [RFC 0/2] Add secondary master
Date: Thu, 28 Nov 2019 02:15:10 +0100
Message-Id: <cover.1574897246.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_171521_845431_1DF3911E 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: pgaj@cadence.com, Joao.Pinto@synopsys.com,
 Vitor Soares <Vitor.Soares@synopsys.com>, bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

As agreed I'm sharing with you my secondary master approach based on
[1] and [2]. It is not my goal to use this as alternative solution to
[1] and [2] but to provide you feedback about my challenges. Futher the
following patch should be considered as final work.

During proposal of [1] and [2] I was't able to compile the code directly and
dad need to adjust them to be able to compile dw-i3c-master and found that
they didn'd address my use case.

Apart of what already was done IMO:
  - We may have a secondary master struct to embbed master and slave rules.
  - Algorithm to define the way masters share bus ownership
  - Delay a tranfers when secondary master doesn't bus ownership.

[1] https://patchwork.kernel.org/patch/11011447/
[2] https://patchwork.kernel.org/patch/10846309/

Vitor Soares (2):
  i3c: Add prliminary support for secondary master
  i3c: dw: add preliminary support for sec master

 drivers/i3c/master.c               | 365 +++++++++++++++++++++-
 drivers/i3c/master/dw-i3c-master.c | 619 +++++++++++++++++++++++++++++++++----
 include/linux/i3c/master.h         |  39 +++
 3 files changed, 959 insertions(+), 64 deletions(-)

-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
