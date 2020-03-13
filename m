Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1F41842F8
	for <lists+linux-i3c@lfdr.de>; Fri, 13 Mar 2020 09:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnuGGI8KCEnKFNvMxah5Wt1Yfxu1EUuc1Ddk1ZzgxRw=; b=J46JfrqDlQRzB1
	0iNxRFFg4z7dIWKmGghrlxIRk3U5OL6eYjc+uGra1bRfG2a2kAussLUm39+5HuTvpktUGebfkLuNd
	ihnxB4IWBxHDTaCBSfamyjUQCW4pFie6HUA/o97SL0ns2U7+uVL5cxjRnPDdwbpO7vybYenulKfWl
	bZJLe5FfLH9sraxA+zxDtUtLcy2FxkJi8CWgcQUmpKPaH85/ASMD7SpsxZJy1Lm0XMzv5jJsgXHX7
	rVbyBT+FchJdoXTmZvO/t1E1e8fpIh8TxxIUJb7jP4DA9m1VXCl0BKaMuOZ3QiFNu0PRkyYHYJaeH
	cxDUjNIri6b1uQbkJbRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCg5C-0003FC-GC
	for lists+linux-i3c@lfdr.de; Fri, 13 Mar 2020 08:54:18 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMGa-0005uB-E9
 for linux-i3c@lists.infradead.org; Thu, 12 Mar 2020 11:44:46 +0000
X-Originating-IP: 90.66.181.224
Received: from localhost (lfbn-lyo-1-2013-224.w90-66.abo.wanadoo.fr
 [90.66.181.224])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7A727240004;
 Thu, 12 Mar 2020 11:44:32 +0000 (UTC)
Date: Thu, 12 Mar 2020 12:44:32 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [RFC PATCH 3/7] i2c: allow DT nodes without 'compatible'
Message-ID: <20200312114432.GA3384@piout.net>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-4-wsa+renesas@sang-engineering.com>
 <CAMuHMdWaPfc050dZiRr+gAFzsdjSo9Vo70ztWgrMGPJxLUqupw@mail.gmail.com>
 <e43eaaf1-a294-902f-9a52-ebf8b29acab1@lucaceresoli.net>
 <20200312111950.GA1013@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312111950.GA1013@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_044444_611758_0D275180 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Mailman-Approved-At: Fri, 13 Mar 2020 01:54:17 -0700
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Kieran Bingham <kieran@ksquared.org.uk>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Luca Ceresoli <luca@lucaceresoli.net>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On 12/03/2020 12:19:51+0100, Wolfram Sang wrote:
> > Clearly this does not fit the case reported by Alexandre: a device
> > having a driver which is known to be badly buggy, so we don't want to
> > instantiate it. But again, this should not affect DT as it is not
> > describing the HW, but only an implementation detail. Probably disabling
> > or blacklisting the driver would be a better option there?
> 
> "Fixing the driver" is the first thing coming to my mind ;) But yeah,
> blacklisting would be another good solution. With only the information
> above, DT is not the right place to fix a broken driver.
> 

To be clear, the driver is working properly but the HW isn't. It is a
PMIC and we need to avoid linux talking to it so the PMIC doesn't end up
killing the bus.

We end up with a node properly described in the device tree but with
status = "disabled". The relevance to the discussion was that you know
what is there and you want to avoid using its address.

See the pmic node on i2c1 in arch/arm/boot/dts/at91-sama5d3_xplained.dts
for what I'm referring to.

> > My apologies to Wolfram, I appreciate a lot the effort you are doing,
> > but before reviewing this patch I have never realized what I tried to
> > explain above.
> 
> All good, Luca! Talking over code usually brings in viewpoints which
> have been missed so far. This is expected. Actually, I am very happy to
> have this discussion!
> 
> All the best,
> 
>    Wolfram
> 



-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
