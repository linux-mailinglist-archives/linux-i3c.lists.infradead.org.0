Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A6314460
	for <lists+linux-i3c@lfdr.de>; Mon,  6 May 2019 08:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te7aadBd0O5yV8vevlMbvUNvRKmaSUjk/M971+X3WaQ=; b=PgdYIgvFKQYDqY
	71xHd28r7WkWQh4xzpwkN2dXhjkrM6y/7qEqSICQpw3Jo6tL/wK8OWBLH20r/hDTt7ctfar0ZU/zy
	AhE7dERQKevFQai1Fb/GGdI7L86dmRLSPIIw0rx4dkMfP+g4fFCbD46W142ttLJyJYpiWxNozPUgX
	qDypq0bCMhEmcmbUa9iQVtPQctR0Notlw7ENDOlLz6Xhk+pYDC88eQI/c8ublTZ0diXRQrJvIh91b
	O/3Wuyztulo2J+KO1QWIluPGRp0PeZqOaZZuVTrTno11s5WxDcTt3R+/gL6SVBYCh22Yz09orWCHE
	jBiSy+KE+iItBMTumXIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNWsX-0000SA-Q2
	for lists+linux-i3c@lfdr.de; Mon, 06 May 2019 06:13:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIx7o-000783-F4
 for linux-i3c@lists.infradead.org; Tue, 23 Apr 2019 15:14:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 43009260D5F;
 Tue, 23 Apr 2019 16:14:19 +0100 (BST)
Date: Tue, 23 Apr 2019 17:14:16 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH 1/3] remap: Add I3C bus support
Message-ID: <20190423171416.47b2c9c4@collabora.com>
In-Reply-To: <13D59CF9CEBAF94592A12E8AE55501350A61C9A2@DE02WEMBXB.internal.synopsys.com>
References: <cover.1555354268.git.vitor.soares@synopsys.com>
 <c38e3cb9e8524af58c995a9cf1f79ddba69b47b4.1555354268.git.vitor.soares@synopsys.com>
 <20190416153948.GF4834@sirena.org.uk>
 <13D59CF9CEBAF94592A12E8AE55501350A61C9A2@DE02WEMBXB.internal.synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190423_081424_638947_5D841133 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Mailman-Approved-At: Sun, 05 May 2019 23:13:27 -0700
X-BeenThere: linux-i3c@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "joao.pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 14:58:06 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi Mark,
> 
> From: Mark Brown <broonie@kernel.org>
> Date: Tue, Apr 16, 2019 at 16:39:48
> 
> > On Mon, Apr 15, 2019 at 09:19:39PM +0200, Vitor Soares wrote:
> >   
> > > +++ b/drivers/base/regmap/regmap-i3c.c
> > > @@ -0,0 +1,62 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.  
> > 
> > Please make the entire header C++ style so it looks more consistent.
> > Otherwise this looks good modulo   
> 
> I will change it next drop.
> 
> > Boris' comment; I'm fine with leaving
> > extra modes for later so long as they can be introduced without
> > disrupting existing users so the only question there would be if we
> > should name the init function in some way that's specific to the I/O
> > mode being used here.  
> 
> My concern is that booth modes (SDR/HDR) might be needed on the device.
> e.g. use SDR to configure the device and use HDR to send/receive large 
> data.

I'd say that we shouldn't use the regmap abstraction in this case or
have a driver-specific backend implementation for it. I guess the
common case is "regs are accessed in SDR mode", so let's keep the name
as it is now and we'll define devm_regmap_init_i3c_hdr() if we ever
need it. Please make it explicit in the kernel-doc that we're using SDR
transfers here.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
