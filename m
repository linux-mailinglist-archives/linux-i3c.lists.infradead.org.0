Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BDB167A60
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 11:15:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5/zvuf5WqVf9PQi5p6nebkpgANjlOkmL6wREA4bXFg=; b=XhdrMifDwXf7qH
	fNVwKML4pMOSpr3d1WDDH0iCsHycIwKwmJJPDXHFzPr6SZqfEAFiHf9oHAW8Pc1cPRDyGEHgR1I9z
	V862mJhV9svX3j1/liDAAPj/wCGccjGbpyspvlSpTrNtQxLC9RaKHErEdnm+ydPvhiG8aJRZwscRQ
	DUHxTKCVwR5KCGq1HC7gImZHC4ytn+gy9Pe7fTMC/MqSphGiIe35HdALyA+/Rx9aAnoJJQ9gwghW/
	i0+KP4EXWH2zgoAvs2DQdCCHbRxzMN90z7NuHT1d+4u1imITwCtUupNZxJjtuZwt2/laPkvvrHjoW
	kGpChtHyUOZzK9qaXD5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55L4-0004jb-OT
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 10:15:18 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55L2-0004j2-7U
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 10:15:17 +0000
Received: by mail-oi1-f196.google.com with SMTP id i1so1067893oie.8
 for <linux-i3c@lists.infradead.org>; Fri, 21 Feb 2020 02:15:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nm8XPNj2T3vUB6cqjEXZ7nGfKAwujbY0F04qFgjkmjQ=;
 b=lC+c1sm2W5HLR3iWjy3E+JMG4EaGFKwQrkcKb3JiXM8UEdmAaaUuCewvly4cEH63qS
 qD+FDSJ7+GSHM2sA/JB1g+AYRGBrrgjmnm5I51NRQSzdy/JhY99IIXRvPnZJjz5hjU7e
 HQ125Dr0j9Z4tki0GGWEuvzJHrr5KiTsn3ZXlPtI/La2tXO0yZV1CMW56BhxUl8wEYud
 56VqXeENLrevFimfXl34gqi57xGtn4YgGUzSi88lrOsZZsHQh5bUOpdpz73iEEXeFt0W
 +HBQdqMVzketkS3LWbOhaH755iFPOIHe4SUyUuDyf3VqNOYrYMqO2YMaZU4C87bSzVb8
 ZXSg==
X-Gm-Message-State: APjAAAXxMc3v9vMr7TLLKJNNHEaVTptmy8m8Y53LeALzShIUStP8D/8z
 XopoeW2LTOYccWbvqwXKH0QCYcixrRboXRG/XME=
X-Google-Smtp-Source: APXvYqz7WikUrMhKLOm0sNqPcWz6d/IUuDU0jmDC9Xjm9FDq7/MpI0yqLXOdcKkSOPan01jsEb1TTlk2L7zVqUGNO5k=
X-Received: by 2002:aca:c4d2:: with SMTP id u201mr1394043oif.54.1582280115669; 
 Fri, 21 Feb 2020 02:15:15 -0800 (PST)
MIME-Version: 1.0
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Feb 2020 11:15:04 +0100
Message-ID: <CAMuHMdX+SJPTvDqKDwD_3DaAxDT3KcEbcjLNjj4JsbcpRwd92w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/7] i2c: of: reserve unknown and ancillary addresses
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_021516_273580_37BE90B0 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Luca Ceresoli <luca@lucaceresoli.net>, Linux I2C <linux-i2c@vger.kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Wolfram,

On Thu, Feb 20, 2020 at 6:26 PM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> One outcome of my dynamic address assignment RFC series[1] was that we
> need a way to describe an I2C bus in DT fully. This includes unknown
> devices and devices requiring multiple addresses. This series implements
> that.
>
> Patches 1+2 do some preparational refactoring. After patch 3, we can
> have child nodes with an address, but no compatible. Those addresses
> will be marked busy now. They are handled by the dummy driver as well,
> but named "reserved" instead of dummy. Patches 4+5 are again some
> preparational refactoring. After patch 6, all addresses in a 'reg' array
> are now blocked by the I2C core, also using the dummy driver but named
> "reserved". So, we can have something like this:
>
>         dummy@13 {

Hence should that be "reserved@13"?

>                reg = <0x13>, <0x14>;
>         };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
