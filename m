Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560371679AD
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 10:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Dj4MRHgTnJhQ1wq7dEhx9gG9ARzzRUmk/b6DbwgxIA=; b=HI00nsHuiIj3Vv
	tv9RtQQ0xF/BhWZX7S3UOOJqPJTrWDpKO9NfhZzzUrqxgUQ5BbLVMEpUK+4oF8hewnB261ZzWomtm
	7qoC8wWQZ8AbOIuwBlaAAQuPqfHB3mTHN9beobin+AhQc7PJU0gDbk80t+bk11rQMAnVX4LML3y+w
	lTxZJvHBPL72phZg8KLqPTHPiXHIpjS0SDYyAwcTHy/iY6Mm+xVxsiwurk9aiRfUF0LKEU+MAE2of
	kWAF/F3TeTub36tfoiLG3TtQkOou36DXYex0qORhsn00GelFP1wZ++2KJYvGtbw0FcHn9fNPy9BWK
	2P2tTx4/G+w7xTLStwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54sv-0008U2-2f
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 09:46:13 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54sr-0008Si-Qw
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 09:46:11 +0000
Received: by mail-ot1-f65.google.com with SMTP id w6so1496669otk.0
 for <linux-i3c@lists.infradead.org>; Fri, 21 Feb 2020 01:46:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q+uBU7L8RtfoD9SLjOzf0Rj4Gw7Zsw7mjIUjKd/bLlA=;
 b=iSS0H6qi/vrMQkeqMt440j8nKnq4Xvo+K62vNqIlSSYUSoe8Zjk9ArDfyiUP2Kgm9A
 ow421qr7Wa25YhbfF8T8Ompjfr6thFNQmA31xHEb4H8HNU+RfWQcxgPZ6hy4ebqR72Lf
 5JfrhOwdrPMpF+Og9saJdlJMmXKeOsvpFLyMwVSwXqMT4zBJLVTDh0UGlb55wYUhxw0V
 qeKVmIpOngPKYLKqN7Nx9z4CRyYi3r4tgdMoZ9WQbfQZ4bcjwLxP5xgC1jEd0DqCtR5y
 wHgnMWQwZNLZSoSCwVsHWb6oPfA5Ge1r33Rku6qi/Rd4MTQw4NCMbnbKhC29jkfQ1OFq
 KBdw==
X-Gm-Message-State: APjAAAVqPKh0csVGFgA0khNa4lNvsxWSfxn5MlyrDbnKPINd259wWtcP
 Hj6a417Iumywy3NfdAOa+IYIa35KyU0NCFpz2yI=
X-Google-Smtp-Source: APXvYqzHAA/ed2jeLWXuh4z7co4qvtSPYestcYmLDnJ4+FLkiCB9VRH2RECFnS6fJXo92EVQSWytPJR5zyzfcKJeHHo=
X-Received: by 2002:a9d:7602:: with SMTP id k2mr27652055otl.39.1582278368260; 
 Fri, 21 Feb 2020 01:46:08 -0800 (PST)
MIME-Version: 1.0
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-4-wsa+renesas@sang-engineering.com>
In-Reply-To: <20200220172403.26062-4-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Feb 2020 10:45:57 +0100
Message-ID: <CAMuHMdWaPfc050dZiRr+gAFzsdjSo9Vo70ztWgrMGPJxLUqupw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/7] i2c: allow DT nodes without 'compatible'
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_014609_872661_917BE27A 
X-CRM114-Status: GOOD (  14.60  )
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

On Thu, Feb 20, 2020 at 6:26 PM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Sometimes, we have unknown devices in a system and still want to block
> their address. For that, we allow DT nodes with only a 'reg' property.
> These devices will be bound to the "dummy" driver but with the name
> "reserved". That way, we can distinguish them and even hand them over to
> the "dummy" driver later when they are really requested using
> i2c_new_ancillary_device().
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
but one question below.

> --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> @@ -50,7 +50,6 @@ Examples:
>                 reg-io-width = <1>;     /* 8 bit read/write */
>
>                 dummy@60 {
> -                       compatible = "dummy";
>                         reg = <0x60>;
>                 };
>         };

There's a second instance to remove 18 lines below.

> --- a/drivers/i2c/i2c-core-of.c
> +++ b/drivers/i2c/i2c-core-of.c
> @@ -27,17 +27,15 @@ int of_i2c_get_board_info(struct device *dev, struct device_node *node,
>
>         memset(info, 0, sizeof(*info));
>
> -       if (of_modalias_node(node, info->type, sizeof(info->type)) < 0) {
> -               dev_err(dev, "of_i2c: modalias failure on %pOF\n", node);
> -               return -EINVAL;
> -       }
> -
>         ret = of_property_read_u32(node, "reg", &addr);
>         if (ret) {
>                 dev_err(dev, "of_i2c: invalid reg on %pOF\n", node);
>                 return ret;
>         }
>
> +       if (of_modalias_node(node, info->type, sizeof(info->type)) < 0)
> +               strlcpy(info->type, I2C_RESERVED_DRV_NAME, sizeof(I2C_RESERVED_DRV_NAME));

Could this cause a regression, e.g. if people already have such dummy
nodes in their DTS, and use sysfs new_device from userspace to
instantiate the device later?

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
