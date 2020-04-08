Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7221A1E80
	for <lists+linux-i3c@lfdr.de>; Wed,  8 Apr 2020 12:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtDSCqFCxzPLcsSPHq5+gRCroC9Oi73O6iPkxlM0yIw=; b=TZHqQhzdock9pz
	BcuPJJszXh1B8HCIPU7bKEAc4i3k9iAM33oFGPgTmJ9p0ZhL2SW+K168wAfYZS2UAde6C6s9+2t9+
	/3j9fEwAIcErP+H7M40+SVmTvGnPFvP3xK4MidXrSifOPOCFvpQuOEZMWrok5/Q2tZGth58uw+/WB
	6a4HLRnlIZhyZZeko35qzj7nEbIWzsyrlRLV6MImt/tNmluJk01VOMwfdJnjeMOG8zMkA+eUbn3pA
	kcRaaT0HMbwRPovHb3ZW8E7BXciIkGE+K528w2XwNeM/s3YRAQaaK9RzlOvbiKbGTTagpEjbMXR5c
	GSolFymWBEpaKwHPG0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7ZP-0005PO-1b
	for lists+linux-i3c@lfdr.de; Wed, 08 Apr 2020 10:04:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7ZM-0005OX-Mg
 for linux-i3c@lists.infradead.org; Wed, 08 Apr 2020 10:04:30 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4960528E176;
 Wed,  8 Apr 2020 11:04:24 +0100 (BST)
Date: Wed, 8 Apr 2020 12:04:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Parshuram Thombare <pthombar@cadence.com>
Subject: Re: [PATCH v1 0/3] I3C mastership handover support
Message-ID: <20200408120418.0d5235a6@collabora.com>
In-Reply-To: <1586211645-8065-1-git-send-email-pthombar@cadence.com>
References: <1586211645-8065-1-git-send-email-pthombar@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_030428_872977_0626F472 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mparab@cadence.com, bbrezillon@kernel.org, linux-kernel@vger.kernel.org,
 vitor.soares@synopsys.com, pgaj@cadence.com, linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Parshuram,

On Tue, 7 Apr 2020 00:20:45 +0200
Parshuram Thombare <pthombar@cadence.com> wrote:

> Hi,
> 
> This patch series is to enable mastership handover feature in I3C
> master subsystem and Cadence's I3C controller driver.

It's definitely not the first version (as implied in the subject), and
I'd like a proper changelog detailing what has changed since the last
version (the one sent by Przemek).

Thanks,

Boris

> 
> 
> [PATCH 1/3]
> i3c: master: split bus_init callback into bus_init and master_set_info
> There are 2 reasons for this split
> Currently bus_init callback is involved in
> a. Controller specific settings such as clock prescalar, enabling
>    different functionalities and finally enabling the controller.
> b. Allocating address to the main master and calling 
>    i3c_master_set_info, which basically create a I3C device for master
>    and add it to system. This is fine for main master, but for
>    secondary master this should be deferred until controller actually
>    owns the bus/mastership.
>    
> Another reason is, to support secondary master initialization without
> board info, controller specific bus mode setting need to be done twice
> First with pure bus mode and second time when actual bus mode is known
> based on data received through DEFSLVS, whereas master set info is
> supposed to be done only once.
> 	      
> [PATCH 2/3]
> i3c: add mastership handover support to i3c master subsystem
> This patch add mastership handover support as per MIPI I3C
> spec v1.0. Main master and secondary masters starts in pure
> bus mode to allow enumeration (DAA) to happen in same bus mode.
> Secondary masters are not required to have information about
> other devices connected on the bus through board info, this
> information is derived from DEFSLVS received from main
> master. While acquiring mastership, requesting master always
> make sure that it has active dynamic address, and received
> DEFSLVS at least once. Mastership request state machine
> make sure that any pending DEFSLVS is processed, so that
> when device become master it always have correct view
> of the bus.
> 
> [PATCH 3/3]
> i3c: master: add mastership handover support to cdns i3c master driver
> This patch adds mastership handover support to the Cadence
> I3C controller driver. Basically, this include necessary
> callbacks for mastership request.
> 
> Regards,
> Parshuram Thombare
> 
> Parshuram Thombare (3):
>   i3c: master: split bus_init callback into bus_init and master_set_info
>   i3c: add mastership handover support to i3c master subsystem
>   i3c: master: add mastership handover support to cdns i3c master driver
> 
>  drivers/i3c/master.c                 | 490 ++++++++++++++++++++++++---
>  drivers/i3c/master/dw-i3c-master.c   |  29 +-
>  drivers/i3c/master/i3c-master-cdns.c | 385 ++++++++++++++++++---
>  include/linux/i3c/master.h           |  47 ++-
>  4 files changed, 854 insertions(+), 97 deletions(-)
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
