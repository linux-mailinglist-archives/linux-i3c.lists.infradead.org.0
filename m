Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFBC161824
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 17:45:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW2cY2XcpuSRz5HttZVOcSnUmTloFoUjE33ShosYMsw=; b=JSBaIAJ9/tko5R
	SgnKQ6UCM6xEnLwXt9KR07g/y9Sj+OyEALmQKz7Phx1uOR+fj9ilsSlUsk0M4DBe4Y2Xfga73jHfu
	CvJ/N0z2OAGcZws6L5QHG8uxpfAkAfTH7z4G+4UeZSpct9A1QNiQ8CknRWz+u1APV/4U9MsM3OxyH
	RQql3RFw9ZG3PC6xkMnaCdXG848kDHYrGjm72QRL9tieqx3D45M+vTyma8A+eak1buAZKTVTs1nEu
	CIxFNxa9QwbULOCl9J374AQupoWVrC48Yhhie8BCaWtCHZLTrjnbTz/XbxgQpZStiv4qQKZ4Lumqa
	GPolOHrFYFuftLpPiIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jWi-0005FY-73
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 16:45:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hrn-0005wP-D2
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 14:59:24 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 356FA27636B;
 Mon, 17 Feb 2020 14:59:21 +0000 (GMT)
Date: Mon, 17 Feb 2020 15:59:17 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [RFC v2 1/4] i3c: master: export i3c_masterdev_type
Message-ID: <20200217155917.592e8ded@collabora.com>
In-Reply-To: <20200217155623.13a94802@collabora.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <7c742fba6c488b29f6fb15a5b910e799d50c5051.1580299067.git.vitor.soares@synopsys.com>
 <20200217155623.13a94802@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_065923_580461_A9DD1A19 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Mailman-Approved-At: Mon, 17 Feb 2020 08:45:42 -0800
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, arnd@arndb.de,
 bbrezillon@kernel.org, gregkh@linuxfoundation.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 15:56:23 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Wed, 29 Jan 2020 13:17:32 +0100
> Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> 
> > Exporte i3c_masterdev_type so i3cdev module can verify if an i3c device
> > is a master.
> > 
> > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > ---
> >  drivers/i3c/internals.h | 1 +
> >  drivers/i3c/master.c    | 3 ++-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i3c/internals.h b/drivers/i3c/internals.h
> > index 86b7b44..bc062e8 100644
> > --- a/drivers/i3c/internals.h
> > +++ b/drivers/i3c/internals.h
> > @@ -11,6 +11,7 @@
> >  #include <linux/i3c/master.h>
> >  
> >  extern struct bus_type i3c_bus_type;
> > +extern const struct device_type i3c_masterdev_type;
> >  
> >  void i3c_bus_normaluse_lock(struct i3c_bus *bus);
> >  void i3c_bus_normaluse_unlock(struct i3c_bus *bus);
> > diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> > index 7f8f896..8a0ba34 100644
> > --- a/drivers/i3c/master.c
> > +++ b/drivers/i3c/master.c
> > @@ -523,9 +523,10 @@ static void i3c_masterdev_release(struct device *dev)
> >  	of_node_put(dev->of_node);
> >  }
> >  
> > -static const struct device_type i3c_masterdev_type = {
> > +const struct device_type i3c_masterdev_type = {
> >  	.groups	= i3c_masterdev_groups,
> >  };
> > +EXPORT_SYMBOL_GPL(i3c_masterdev_type);  
> 
> No need to export the symbol, removing the static and adding the
> definition to internal.h should work just fine (i3c.o contains
> both master.o and device.o).

Hm, my bad. Looks like i3cdev is a separate module/driver. If that's
the case, it should not have direct access to internals.h. I see 2
options here:

1/ make the i3cdev logic part of the core
2/ provide helpers to find devices by type

But maybe none of that is needed if you let userspace bind i3c devices
to the i3cdev driver.

> 
> >  
> >  static int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
> >  			    unsigned long max_i2c_scl_rate)  
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
