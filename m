Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA904C0DC
	for <lists+linux-i3c@lfdr.de>; Wed, 19 Jun 2019 20:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IkoEQEs2AgFq0BXoBwiAtG6yPEu/p9di7KgBXv5M044=; b=Hwe
	3OLjb3tfHL+IDYVpjRt23PB5PHmLt4CWHKugPZ0ODacW2Z9R/eh9OrdY6pOLpwvuCu6V50kayQRrl
	ZZ8WssNf/PvbmxaCChEDxh7qL38cjQPK2rxfVrSQ5y2GXIr3TLve25pWkRvAHyFZ++eNgTuqaemCN
	yEAX6ZHPUhuMTIp8dLHkiH81oxwSJJ5yyl4aLv3a9Da0zuqVM9FWSJIbF3+2no9yZ9TsbQug7ign9
	vdTMxCSWwJANeq1gdp9HjxypJpqLw5AN8Kpuye+ItniqpW1KXhqLhPvTk1qc3K4A4c9mle9DBwr75
	VEmHksLdzd2Bg+G0mtKNdJDnnZXGHMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfS1-0005wv-VT
	for lists+linux-i3c@lfdr.de; Wed, 19 Jun 2019 18:36:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfRy-0005ug-9T
 for linux-i3c@lists.infradead.org; Wed, 19 Jun 2019 18:36:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D3401C01D6
 for <linux-i3c@lists.infradead.org>; Wed, 19 Jun 2019 18:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560969408; bh=RGchGZJQNbFtQ9jnJno/U8DK9KV0WI668+5HNvJxEB8=;
 h=From:To:Cc:Subject:Date:From;
 b=U2HSINhV1HPDB95MW2AfSbcHBpmK9XX3xeCZuLphAKsfNgbxZbudA6xhQ3PxEKSV5
 DeN4PZq5yK41GPkhNjgQtkxiG2OrYQqS8e+zz5FunroDp9m8IaOQn4pwaWMWStfP/F
 Q7kULKbdqWn53O4IWIdZRvB3lUbgp3d649/eZmPEcv+0XNcLcU+87PMHJIj0CnkeKH
 JgEcA0Z+YAPFD+WYlwQTOorQvPbuLMr+hMBW6DNnVafvd9LZVBnfls4epG8e7uAAHr
 yAFsohLcCySySvieVF8tDuMhuGl/czy6ayx8ydmR/5p9g1ZYTDxhM0JFwnws/sw+nc
 LqWsHLYhJdxsg==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 94908A0057
 for <linux-i3c@lists.infradead.org>; Wed, 19 Jun 2019 18:36:45 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 7AEAA3F211;
 Wed, 19 Jun 2019 20:36:45 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-i3c@lists.infradead.org, Joao.Pinto@synopsys.com
Subject: [PATCH v4 0/3] Fix i2c and i3c scl rate according bus mode
Date: Wed, 19 Jun 2019 20:36:30 +0200
Message-Id: <cover.1560968688.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_113650_356159_6022E52E 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vitor Soares <Vitor.Soares@synopsys.com>
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

 drivers/i3c/master.c               | 57 +++++++++++++++++++++++++++++---------
 drivers/i3c/master/dw-i3c-master.c |  1 +
 include/linux/i3c/master.h         |  5 ++++
 3 files changed, 50 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
