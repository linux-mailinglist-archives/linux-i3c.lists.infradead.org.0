Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AD21679F9
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 10:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLRX7urTMR3xKzW356+KIPteHMYSf7kO3XL49rn1R3c=; b=mWbF1BGYGxsUvq
	VgbXubPuotYru0Xk2DQtT+VdMgKrNfnUnNYlUctlm3KVgh/MdAwuJA+jMfIkDFXxU/gdJujN1DLvT
	NgZmCbjQY/3dQLUCH8qGuXUX5iCUEbNQFpD7SRtcvo25WTsyQ9z56OCbVpe19E/ZwP/5ZSn0rEVC1
	Wl7Syl/nZbNHEyAWx8rLo4TYvYNvQypIcKwRk+7rK/HTU5LVs6Clx7ek95VsQZGFpLlnv0ClW7to5
	aMLovnY+tBFDKWfBEkc6DSzXqPM4I2hn8VskvlnkkSQ5i7mWay/qaYWjxtreKbpBeyd1IRf1Q3YGv
	7yeoiuC1PiKPQs+nFGRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j550y-0002mg-2T
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 09:54:32 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j550v-0002mI-Jb
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 09:54:30 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so1482721oty.6
 for <linux-i3c@lists.infradead.org>; Fri, 21 Feb 2020 01:54:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6KWuWbwpy5eV1ugbAOKbTPCDhSjq5tBX3gsYSurm6FU=;
 b=ZZU3zhFUCraUhz1o4tkpiWdoCIkJQ6yeMwhKjWGSnG8VLbMVo4PKSQadGHW8S07A9b
 Q+2Wz8E/4AzHcmV4VI7W3soRzi4SeCAc2KdPb5ZeJGeQSZ3RyegNtWIarwQzErsmHhKg
 kCE3Q3pHAMGY1sBaHtKljIsfbPi84YqqShC8TCQHIOp5LKDChgkgAoik/zkOyRCzO0JV
 4hVg9lIvSkLQGYvl20jN+aKhgyowFk5KUENY4EVApl7nWkUSmDTSoW2WCXuliMB0RQp1
 JwVRf9yaEZ4K/BewxUQTVNIhAOWhOumNIC9F+PRbestAn5qqeoLyuWeUCqgEiGErgM/G
 BCGg==
X-Gm-Message-State: APjAAAUivFI5+JqSdzDtG5sBF3Hfxw5YGiDkuAh5FpWVlncfE7jkhr5o
 ozBQBM16a5jShZk3ZcWvd5usYNVf1XSwDQQtmP0=
X-Google-Smtp-Source: APXvYqyhskulP9XNKEDIW8WGFVwSFpIZubz6Szsv+4aJV+5XVybq6Gl2c8lJKMieOTMpUoN9JopRyDO5qSQyZQelS5w=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr27510706ots.250.1582278869027; 
 Fri, 21 Feb 2020 01:54:29 -0800 (PST)
MIME-Version: 1.0
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-6-wsa+renesas@sang-engineering.com>
In-Reply-To: <20200220172403.26062-6-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Feb 2020 10:54:18 +0100
Message-ID: <CAMuHMdXy=B6ZjC=X12yeOjSfr5-Z6HNL4vp0vQciMsW31i-CPw@mail.gmail.com>
Subject: Re: [RFC PATCH 5/7] i2c: of: error message unification
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_015429_642692_91D3A950 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Thanks for your patch!

On Thu, Feb 20, 2020 at 6:26 PM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> - don't prefix the device if %pOF is provided. That information is
>   enough.

While that information is sufficient to identify the device, using a mix
of dev_*() and pr_*("... %pOF...") makes it harder to grep for relevant
information in the kernel log.  Hence I'm not convinced this is an
improvement.

> - move the prefix to pr_fmt
> - change prefix from "of_i2c" to "i2c_of" because the code was moved
>   out of the of-domain long ago
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Nevertheless:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
