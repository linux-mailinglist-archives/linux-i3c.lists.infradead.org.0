Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8B2A15BA
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 12:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qfVPG/u9q75SNi6urTUWwICsaEVvDwBhXzHqREX4U8M=; b=kUM
	EjNP6nF9QnWNDhZkir1SokgYDhuRg4DV0XMMl2Ta5dHjvGSYFvBeU7IObD9ReTU62EQbb9Jga9t1l
	cujihOQImrIlcRYFl0E4SVq3yCt08EjXFCry6KsxSqtFYfbdvioAuuNHfhnrfbkv2BEKP7by0hPvh
	4C6r8MtmiicPySDHNgIK3lgaGI3uFzU7hTFnEcMxFMAowi6qApF69hKkUwod0I0UtuNH1W0vrIQD1
	w+wC0j0UxUeQNI4KUdrUTY3bj11/knNBrNWdYesihVMYTh0027vh9xGDqAc4pfSncXAnubUWunm/+
	//5YTJAXUZRGZfEHZTTaY9D/4XW59cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HXK-0006ci-PO
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 10:20:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HWq-00054c-7a
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 10:19:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 20432C0391;
 Thu, 29 Aug 2019 10:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567073980; bh=od80gmY2zZhh+3Bcew23DiiwRVI+IoD71SEOvgTHG9g=;
 h=From:To:Cc:Subject:Date:From;
 b=ZCpfD6NXKGjUIDyuyy6P1W/RWFyrnEbssFCR4FlNciPZnoNwnK4hSjHHsciqeGWvj
 csro7zd7SZAZh0DCnfIBbf3NUL3+o0LR8nfrt/WweoO5Mr2s7sYVuQ3Kr9kqlSHbue
 SSm8KGVcVawD/Fx3v5AmvjqXgCkwu2ObxiOm0Z1c8vAeEpTEvOAPtXDfI0SrjNhapt
 xgppE8g+DyxZToCwFV+TDQTHULhTyRGl6/qae1RQxj7g8cMi7/N02EhunlgLKMl+Oz
 kswwWiVz9H0z4sIjPUfWp+xwNF1Z3Hh9YmZTX8ZQX9pt5kKnPrK0cnOBRBS3sXVfMe
 uXKrEtyBe4lng==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 37493A005F;
 Thu, 29 Aug 2019 10:19:38 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 1176B3B640;
 Thu, 29 Aug 2019 12:19:38 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i3c@lists.infradead.org
Subject: [PATCH 0/4] i3c: remove device if failed on pre_assign_dyn_addr()
Date: Thu, 29 Aug 2019 12:19:31 +0200
Message-Id: <cover.1567071213.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_031944_448954_FDF1530F 
X-CRM114-Status: UNSURE (   9.28  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Joao.Pinto@synopsys.com, robh+dt@kernel.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This patch series remove the devices that fail during
pre_assign_dyn_addr() and were being sent on DEFSVLS command.
With the change above, during the i3c_master_add_i3c_dev_locked() is
necessary to check if the device has i3c_boardinfo and try to assign the
i3c_dev_boardinfo->init_dyn_addr if there no oldev. This change will
allow to describe in DT device with preferable dynamic address but without
static address.

Vitor Soares (4):
  "i3c: detach and free device if pre_assign_dyn_addr fails "
  i3c: check i3c_boardinfo during i3c_master_add_i3c_dev_locked
  update i3c bingins
  i3c: master: dw: Reattach device on first empty location of DAT

 Documentation/devicetree/bindings/i3c/i3c.txt | 13 ++++++++---
 drivers/i3c/master.c                          | 33 ++++++++++++++++++++++++---
 drivers/i3c/master/dw-i3c-master.c            | 16 +++++++++++++
 3 files changed, 56 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
