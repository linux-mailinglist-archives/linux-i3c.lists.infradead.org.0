Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093FA1CF1
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 16:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OimMU/6w3My/u1cTToV34YAIPInAxn7Q2UtNZUNw+NE=; b=GDkD3kZyb31ayW
	wbeLaT//+MwOJngATXMz6vvMdURsV2elieSk4xs6SNdNgVinbGa3gv9Kc3St5E4xu2MlY/K0Y3X17
	g5flT8ijMUQvU/F/902YnafDNcpwcp1Raac/f0al40A78HNKx20lh7gSj+5kidQINu/rSbXKW5ED6
	ieQG1o+zI4TF7X2H3uEuB2nKNzKHcSVp6Z5ChB6gqmu6lOX32q1k5r+7Y4zl4JbTz++imqnu6ruDH
	vGaOK0lpLHVlvRcNLRcKrdra3lr3zUBgmvM4N1IfxM+2gei4u3Y2aFOX67PnnfhyOejZPkqURv+GP
	rLRD0a6tszJ07f57bcBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LWK-0007pR-Ka
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 14:35:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LWH-0007p3-MR
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 14:35:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D6BC028D56B;
 Thu, 29 Aug 2019 15:35:22 +0100 (BST)
Date: Thu, 29 Aug 2019 16:35:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH 1/4] i3c: master: detach and free device if
 pre_assign_dyn_addr() fails
Message-ID: <20190829163520.126d42d6@collabora.com>
In-Reply-To: <SN6PR12MB26551F172804D039F3EAA991AEA20@SN6PR12MB2655.namprd12.prod.outlook.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
 <e26948eaaf765f683d8fe0618a31a98e2ecc0e65.1567071213.git.vitor.soares@synopsys.com>
 <20190829124115.482cd8ec@collabora.com>
 <SN6PR12MB26551F172804D039F3EAA991AEA20@SN6PR12MB2655.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073526_003163_CD4923AB 
X-CRM114-Status: GOOD (  31.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Przemyslaw Gaj <pgaj@cadence.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 13:53:24 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi Boris,
> 
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Thu, Aug 29, 2019 at 11:41:15
> 
> > +Przemek
> > 
> > Please try to Cc active I3C contributors so they get a chance to
> > comment on your patches.  
> 
> I can do that next time.
> 
> > 
> > On Thu, 29 Aug 2019 12:19:32 +0200
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > On pre_assing_dyn_addr() the devices that fail:
> > >   i3c_master_setdasa_locked()
> > >   i3c_master_reattach_i3c_dev()
> > >   i3c_master_retrieve_dev_info()
> > > 
> > > are kept in memory and master->bus.devs list. This makes the i3c devices
> > > without a dynamic address are sent on DEFSLVS CCC command. Fix this by
> > > detaching and freeing the devices that fail on pre_assign_dyn_addr().  
> > 
> > I don't think removing those entries is a good strategy, as one might
> > want to try to use a different dynamic address if the requested one
> > is not available.  
> 
> Do you mean same 'assigned-address' attribute in DT?

Yes, or say it's another device that got the address we want and this
device doesn't want to release the address (I'm assuming the !SA case).

> 
> If so, it is checked here:
> 
> static int i3c_master_bus_init(struct i3c_master_controller *master)
> ...
> 	list_for_each_entry(i3cboardinfo, &master->boardinfo.i3c, node) {
> 		struct i3c_device_info info = {
> 			.static_addr = i3cboardinfo->static_addr,
> 		};
> 
> 		if (i3cboardinfo->init_dyn_addr) {
> 			status = i3c_bus_get_addr_slot_status(&master->bus,
> 			^
> 						i3cboardinfo->init_dyn_addr);
> 			if (status != I3C_ADDR_SLOT_FREE) {
> 				ret = -EBUSY;
> 				goto err_detach_devs;
> 			}
> 		}
> 
> 		i3cdev = i3c_master_alloc_i3c_dev(master, &info);
> 		if (IS_ERR(i3cdev)) {
> 			ret = PTR_ERR(i3cdev);
> 			goto err_detach_devs;
> 		}
> 
> 		i3cdev->boardinfo = i3cboardinfo;
> 
> 		ret = i3c_master_attach_i3c_dev(master, i3cdev);
> 		if (ret) {
> 			i3c_master_free_i3c_dev(i3cdev);
> 			goto err_detach_devs;
> 		}
> 	}
> ...
> 
> and later if it fails i3c_master_pre_assign_dyn_addr(), the device can 
> participate in Enter Dynamic Address Assignment process.
> I may need to check the boardinfo->init_dyn_addr status on 
> i3c_master_add_i3c_dev_locked before i3c_master_setnewda_locked().

I need to double check but I thought we were already handling that case
properly.

> 
> > Why not simply skipping entries that have ->dyn_addr
> > set to 0 when preparing a DEFSLVS frame  
> 
> I considered that solution too but if the device isn't enumerated why 
> should it be attached and kept in memory?

Might be a device that supports HJ, and in that case we might want the
controller to reserve a slot in its device table for that device.
Anyway, it doesn't hurt to have it around as long as we don't pass the
device through DEFSLVS if it doesn't have a dynamic address. I really
prefer to keep the logic unchanged and fix it if it needs to be fixed.

> Anyway we have i3c_boardinfo 
> with DT information.
> 
> >   
> > > 
> > > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > > ---
> > >  drivers/i3c/master.c | 11 ++++++++---
> > >  1 file changed, 8 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> > > index 5f4bd52..4d29e1f 100644
> > > --- a/drivers/i3c/master.c
> > > +++ b/drivers/i3c/master.c
> > > @@ -1438,7 +1438,7 @@ static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
> > >  	ret = i3c_master_setdasa_locked(master, dev->info.static_addr,
> > >  					dev->boardinfo->init_dyn_addr);
> > >  	if (ret)
> > > -		return;
> > > +		goto err_detach_dev;
> > >  
> > >  	dev->info.dyn_addr = dev->boardinfo->init_dyn_addr;
> > >  	ret = i3c_master_reattach_i3c_dev(dev, 0);
> > > @@ -1453,6 +1453,10 @@ static void i3c_master_pre_assign_dyn_addr(struct i3c_dev_desc *dev)
> > >  
> > >  err_rstdaa:
> > >  	i3c_master_rstdaa_locked(master, dev->boardinfo->init_dyn_addr);
> > > +
> > > +err_detach_dev:
> > > +	i3c_master_detach_i3c_dev(dev);
> > > +	i3c_master_free_i3c_dev(dev);  
> > 
> > We certainly shouldn't detach/free the i3c_dev_desc from here. If it
> > has to be done somewhere (which I'd like to avoid), it should be done
> > in i3c_master_bus_init() (i3c_master_pre_assign_dyn_addr() should be
> > converted to return an int in that case).  
> 
> I can change it to return an error. 
> 
> >   
> > >  }
> > >  
> > >  static void
> > > @@ -1647,7 +1651,7 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
> > >  	enum i3c_addr_slot_status status;
> > >  	struct i2c_dev_boardinfo *i2cboardinfo;
> > >  	struct i3c_dev_boardinfo *i3cboardinfo;
> > > -	struct i3c_dev_desc *i3cdev;
> > > +	struct i3c_dev_desc *i3cdev, *i3ctmp;
> > >  	struct i2c_dev_desc *i2cdev;
> > >  	int ret;
> > >  
> > > @@ -1746,7 +1750,8 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
> > >  	 * Pre-assign dynamic address and retrieve device information if
> > >  	 * needed.
> > >  	 */
> > > -	i3c_bus_for_each_i3cdev(&master->bus, i3cdev)
> > > +	list_for_each_entry_safe(i3cdev, i3ctmp, &master->bus.devs.i3c,
> > > +				 common.node)
> > >  		i3c_master_pre_assign_dyn_addr(i3cdev);
> > >  
> > >  	ret = i3c_master_do_daa(master);  
> 
> Thank for your feedback.
> 
> Best regards,
> Vitor Soares


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
