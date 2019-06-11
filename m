Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249DC3CE02
	for <lists+linux-i3c@lfdr.de>; Tue, 11 Jun 2019 16:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Pa2uYYOxi34Km8bClUrm4icO9Z5b+pjRXpI4xAuOIpg=; b=IpZ
	jTvxlaF8RRY8FdWjF8j4ff0oI1OcZxJqfHOTkSxwAL3cSr7ZNOnjuHkSmpa9+VQO/VznlqVfbZmQ9
	tJJhyFQ0xsOYucwJo/dmJUgeXC9i8TyuUlCCogO9PUcgTPzTJYAFiZpJ7kwkoAreoyGTMUpnxV/BX
	wSp+g65oI4TH1tc8RHvT/OfOxD0CLA3KmZ+ko8y1NqsJZL8sOvyrbbejZ/HBG5ggNZp2K/61C4pMX
	r2+GGgie+wzH6DeKrFgRqPh0R7NcBSlywRgtKLRsQc5YAUkut9PP48DufEA9DCR8YjP6wI54nnn3Z
	U8e4dR0vMe2Nn9NtNsqP/3B1GXeRTcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahQN-0000pD-LF
	for lists+linux-i3c@lfdr.de; Tue, 11 Jun 2019 14:06:55 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahQL-0000o8-6k
 for linux-i3c@lists.infradead.org; Tue, 11 Jun 2019 14:06:54 +0000
Received: from mailhost.synopsys.com (unknown [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 32053C5948
 for <linux-i3c@lists.infradead.org>; Tue, 11 Jun 2019 14:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560262009; bh=llL9weTnFhAXpoLAP7tKlRaiIgSzIDQ4VfIXTT9nIjI=;
 h=From:To:Cc:Subject:Date:From;
 b=Ks4/hcooHryn+679twhbNohS/6Jma7oBvr0+zzyOs06uebKl7SWgoYoMj40LZDibe
 S5YSPCAgrfs/NGBPcy9aIYhVccJyb4yGw84BY6zAGxxBSluxFCmYVIojSBues7v4z7
 BXIEXmOnDSKd3kC5/8T7Iw2M+Cu9PkoNbzPCt6sv3LjHBdd6LJ97ekYhRmZW26ZV9H
 h/YPHkOiYjoH1M7kZOxrgRhIEeFE5Pxq05nLRZpo6vV6q44zczpfV/hYm/a55bHXGb
 aUgSFSk2LPYjdtYHq536cyI11O79zCN49uHN71h6Krhz7mTQFbix+4K9mwRT+cZam0
 +xBHeyL+8BRgg==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id D2F66A0233
 for <linux-i3c@lists.infradead.org>; Tue, 11 Jun 2019 14:06:48 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id B00AB3F589;
 Tue, 11 Jun 2019 16:06:48 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-i3c@lists.infradead.org
Subject: [PATCH v3 0/3] Fix i2c and i3c scl rate according bus mode
Date: Tue, 11 Jun 2019 16:06:42 +0200
Message-Id: <cover.1560261604.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_070653_262523_49B425D8 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao.Pinto@synopsys.com, Vitor Soares <Vitor.Soares@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This patch series fix the i2c and i3c scl rate according the bus mode
and LVR register. It also introduce the mixed limited bus for the
cases where i2c devices doesn't have 50 ns filter but allow higher
clock rate for i3c transfers.
Please refer table 5 and 10 of i3c bus spec v1.0 for more detail.

Please follow each patch commit message for more details and changes
made in this version.

Vitor Soares (3):
  i3c: fix i2c and i3c scl rate by bus mode
  i3c: add mixed limited bus mode
  i3c: dw: add limited bus mode support

 drivers/i3c/master.c               | 66 ++++++++++++++++++++++++++++++--------
 drivers/i3c/master/dw-i3c-master.c |  1 +
 include/linux/i3c/master.h         |  5 +++
 3 files changed, 59 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
