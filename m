Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4838E16798E
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 10:36:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOCYeLP8D/W8ynmM2VfygesmOzDe7ZamkcIOYKv8EIE=; b=N5CECUVSti8Ve6
	BEC/kPU8tJ4FTADKFBAQxFeqPMnF4GnoXn3zApJ+sNvWygfuaN5sZ7su3AxhcthcNe+/8dmoHoG+i
	ZT7WLX0T5zrZBZecT0K1pE96hII/tRRVjO360Sd85NJBsFTkVkj6WJu+ffDS8NPK83PuRAHQbyrkm
	ifOJbpZvFwM3yneZDd2FqP8rxq7iG9XQkHD79HGk6UT5rqYxBQx9l0YHTskXsvvZ75BOtSjrmQin/
	nZ1q5CdnglrWDyucd5XWYCPTAg2qCYeL030GREC8/3nYvGdYBFd7Umb+qZFlzg4yLABhGr+FbeqoX
	RSYQqq4fHLQkDLztcjrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54jm-0005De-0m
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 09:36:46 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54jj-0005Ch-3t
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 09:36:44 +0000
Received: by mail-oi1-f194.google.com with SMTP id b18so995268oie.2
 for <linux-i3c@lists.infradead.org>; Fri, 21 Feb 2020 01:36:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l+VSzBk136F0WnmD8vd1UXyUqbIVYbRCZbVzHfV0nCo=;
 b=uePI708YC3UmUdipaTD5NTRrOsqPwKGLi4xbkbHsn/ahy5IS/C4klEJpZZzDCXlQKG
 eGjLh3pfUzGJ+tTUuzRYQv+TsmrM0cfTh2bGRcugplPjU5xMB+f42gB4lLoNuNEwOKrP
 tgTopvhdkQLmmxh4qv3H1m08Wi3EdB54OVfg5wM3K2IoqrMi2PQg9Dr2Rf6os7qOv8I9
 /Kx3ZcSsQMsvKpH6OfXcRKv6UN/jCd/7WoknWmqTSHyDaJtWrqSHQ9TgTFVxiAgbGp2G
 L03F8Di7mTRhzAlUK1HLoQ7Z/YUrfOlUPN7JZTJPCZoAZ7xdkLARjCbGK54f1qLcOG7Z
 8AqQ==
X-Gm-Message-State: APjAAAW/BsBzWzX/ejKJmLbZnbYBWvOgIv1cEEh93IQe/qocg6Koq598
 45Z1GDNpO0ojOYwIrCGfVSsqtC7eicBbP+3Vt2E=
X-Google-Smtp-Source: APXvYqwTLkzdJ7Ea1pHuDDK58bfsunGZ+J2COTT5It/qUAHl0F0jdTOlEjeYhsTaMKlgabM9EKUDnBJ18UmF8kn5mDw=
X-Received: by 2002:aca:48cd:: with SMTP id v196mr1273580oia.102.1582277801696; 
 Fri, 21 Feb 2020 01:36:41 -0800 (PST)
MIME-Version: 1.0
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20200220172403.26062-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Feb 2020 10:36:30 +0100
Message-ID: <CAMuHMdU3WgdV0cqf0Gu=szyNch=QOEK8UbiQyxLjsf+WnS=-ZA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] i2c: add sanity check for parameter of
 i2c_verify_client()
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_013643_160806_D2D2191F 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
> We export this function, so we should check the paramter to make it

parameter

> NULL-compatible.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

And then the check in i2c_acpi_find_client_by_adev() can be removed.
BTW, can the i2c_verify_client() check in that function actually fail?
If yes, it should call put_device(dev) on failure, like
of_find_i2c_device_by_node() does.

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
