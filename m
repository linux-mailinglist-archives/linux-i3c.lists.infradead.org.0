Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E261F4CA16
	for <lists+linux-i3c@lfdr.de>; Thu, 20 Jun 2019 10:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+OXPNPeVcIQWZlcEH+eksKLh/jajmIqI+DQxq7uDww=; b=EiIpmv7S4TCLne
	WUrb7qVerxD/s/i1JXFN1aK5Ucg4xZSRW0ysQGVcsjMNaHwacA7n7OEl8IjT2FFj/skKZk6SOgtXv
	McHk60czzvwp75i081jGbfo7o5g+0Hqsf38odg56kaCrYouDcPHamPFDVyNb66WJBbFzhNmbmkLmI
	Pk3WjpW1cz+SbDoZV+UMqpqWNv4PqBT+Skz9HFgNi6jyaZgbhzcMvW/6om5l4hU1rEQ4HWO5lydZ4
	+OqR7XRyUV44kxnZworHxY/DytQswuYU72F+IR5X+nJF4Y/cjzfa7hPpWJmwXTtMd/HHcTvXBXvY9
	itlw0pnPJLAvcTDxZCzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsrp-00010j-QS
	for lists+linux-i3c@lfdr.de; Thu, 20 Jun 2019 08:56:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsrY-0000pV-QY
 for linux-i3c@lists.infradead.org; Thu, 20 Jun 2019 08:56:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7ED44260D60;
 Thu, 20 Jun 2019 09:56:05 +0100 (BST)
Date: Thu, 20 Jun 2019 10:56:02 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v4 0/3] Fix i2c and i3c scl rate according bus mode
Message-ID: <20190620105602.28b538ae@collabora.com>
In-Reply-To: <cover.1560968688.git.vitor.soares@synopsys.com>
References: <cover.1560968688.git.vitor.soares@synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015609_051302_C0F01F7F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-i3c@lists.infradead.org, Joao.Pinto@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 20:36:30 +0200
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> This patch series fix the i2c and i3c scl rate according the bus mode
> and LVR register. It also introduce the mixed limited bus for the
> cases where i2c devices doesn't have 50 ns filter but allow higher
> clock rate for i3c transfers.
> Please refer table 5 and 10 of i3c bus spec v1.0 for more detail.
> 
> Please follow each patch commit message for more details and changes
> made in this version.
> 
> Vitor Soares (3):
>   i3c: fix i2c and i3c scl rate by bus mode
>   i3c: add mixed limited bus mode
>   i3c: dw: add limited bus mode support

Queued to i3c/next.

Thanks,

Boris

> 
>  drivers/i3c/master.c               | 57 +++++++++++++++++++++++++++++---------
>  drivers/i3c/master/dw-i3c-master.c |  1 +
>  include/linux/i3c/master.h         |  5 ++++
>  3 files changed, 50 insertions(+), 13 deletions(-)
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
