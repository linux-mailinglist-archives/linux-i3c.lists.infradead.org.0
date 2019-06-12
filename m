Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D081428A0
	for <lists+linux-i3c@lfdr.de>; Wed, 12 Jun 2019 16:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2Crr+ALkQ/6Np6Rp45cHQaytHGn67lzNycvNdewq/w=; b=RoCO/3+C8eKYHp
	J/9DoQ28gBCwt5zN4F6T7RpE83Jg9DnRnNIzg4n2LyitU5Ib516ilfU+0Ieh6C2A1VNantYx+9tmB
	U57Mr97foPTUC72bTIoIWMWM79y8j1QZtmHBQ1sLXG73mH/ys8CdyzvfyX2SUpiaD+DKijr1E29Dh
	zyYNb1m7pvPMAAhz6At3PQK3vUSOhkqOShUcTKGKmLU9PMUOmu63nMlkH6MqfzVQRzxHpGagus2Cw
	w4UZ48enNaN5vDEcBAS17gjNSqM3VvEjrgMdmXD6Gken6uotciH2Bg88mJ2suzRZcvwRloJNUJg5u
	uzI18Kp3T5VbyY4u1ewQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb46v-0002bN-8c
	for lists+linux-i3c@lfdr.de; Wed, 12 Jun 2019 14:20:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb46n-0002Zz-3i
 for linux-i3c@lists.infradead.org; Wed, 12 Jun 2019 14:20:18 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1ECA9281DEE;
 Wed, 12 Jun 2019 15:20:10 +0100 (BST)
Date: Wed, 12 Jun 2019 16:20:06 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v3 1/3] i3c: fix i2c and i3c scl rate by bus mode
Message-ID: <20190612162006.097db004@collabora.com>
In-Reply-To: <13D59CF9CEBAF94592A12E8AE55501350AABECD8@DE02WEMBXB.internal.synopsys.com>
References: <cover.1560261604.git.vitor.soares@synopsys.com>
 <b39923bda3625a5c6874755ae81cdfe85fb5abef.1560261604.git.vitor.soares@synopsys.com>
 <20190612081533.2cf9e12a@collabora.com>
 <13D59CF9CEBAF94592A12E8AE55501350AABEC91@DE02WEMBXB.internal.synopsys.com>
 <20190612133727.48f85060@collabora.com>
 <13D59CF9CEBAF94592A12E8AE55501350AABECD8@DE02WEMBXB.internal.synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072016_129923_51A4C9EB 
X-CRM114-Status: GOOD (  40.94  )
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
Cc: "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 13:37:53 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Wed, Jun 12, 2019 at 12:37:27
> 
> > On Wed, 12 Jun 2019 11:16:34 +0000
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > Date: Wed, Jun 12, 2019 at 07:15:33
> > >   
> > > > On Tue, 11 Jun 2019 16:06:43 +0200
> > > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > > >     
> > > > > Currently the I3C framework limits SCL frequency to FM speed when
> > > > > dealing with a mixed slow bus, even if all I2C devices are FM+ capable.
> > > > > 
> > > > > The core was also not accounting for I3C speed limitations when
> > > > > operating in mixed slow mode and was erroneously using FM+ speed as the
> > > > > max I2C speed when operating in mixed fast mode.
> > > > > 
> > > > > Fixes: 3a379bbcea0a ("i3c: Add core I3C infrastructure")
> > > > > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > > > > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > > > > Cc: <stable@vger.kernel.org>
> > > > > Cc: <linux-kernel@vger.kernel.org>
> > > > > ---
> > > > > Changes in v3:
> > > > >   Change dev_warn() to dev_dbg()
> > > > > 
> > > > > Changes in v2:
> > > > >   Enhance commit message
> > > > >   Add dev_warn() in case user-defined i2c rate doesn't match LVR constraint
> > > > >   Add dev_warn() in case user-defined i3c rate lower than i2c rate
> > > > > 
> > > > >  drivers/i3c/master.c | 61 +++++++++++++++++++++++++++++++++++++++++-----------
> > > > >  1 file changed, 48 insertions(+), 13 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> > > > > index 5f4bd52..f8e580e 100644
> > > > > --- a/drivers/i3c/master.c
> > > > > +++ b/drivers/i3c/master.c
> > > > > @@ -91,6 +91,12 @@ void i3c_bus_normaluse_unlock(struct i3c_bus *bus)
> > > > >  	up_read(&bus->lock);
> > > > >  }
> > > > >  
> > > > > +static struct i3c_master_controller *
> > > > > +i3c_bus_to_i3c_master(struct i3c_bus *i3cbus)
> > > > > +{
> > > > > +	return container_of(i3cbus, struct i3c_master_controller, bus);
> > > > > +}
> > > > > +
> > > > >  static struct i3c_master_controller *dev_to_i3cmaster(struct device *dev)
> > > > >  {
> > > > >  	return container_of(dev, struct i3c_master_controller, dev);
> > > > > @@ -565,20 +571,48 @@ static const struct device_type i3c_masterdev_type = {
> > > > >  	.groups	= i3c_masterdev_groups,
> > > > >  };
> > > > >  
> > > > > -int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode)
> > > > > +int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
> > > > > +		     unsigned long max_i2c_scl_rate)
> > > > >  {
> > > > > -	i3cbus->mode = mode;
> > > > >  
> > > > > -	if (!i3cbus->scl_rate.i3c)
> > > > > -		i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > > > +	struct i3c_master_controller *master = i3c_bus_to_i3c_master(i3cbus);
> > > > >  
> > > > > -	if (!i3cbus->scl_rate.i2c) {
> > > > > -		if (i3cbus->mode == I3C_BUS_MODE_MIXED_SLOW)
> > > > > -			i3cbus->scl_rate.i2c = I3C_BUS_I2C_FM_SCL_RATE;
> > > > > -		else
> > > > > -			i3cbus->scl_rate.i2c = I3C_BUS_I2C_FM_PLUS_SCL_RATE;
> > > > > +	i3cbus->mode = mode;
> > > > > +
> > > > > +	switch (i3cbus->mode) {
> > > > > +	case I3C_BUS_MODE_PURE:
> > > > > +		if (!i3cbus->scl_rate.i3c)
> > > > > +			i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > > > +		break;
> > > > > +	case I3C_BUS_MODE_MIXED_FAST:
> > > > > +		if (!i3cbus->scl_rate.i3c)
> > > > > +			i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > > > +		if (!i3cbus->scl_rate.i2c)
> > > > > +			i3cbus->scl_rate.i2c = max_i2c_scl_rate;
> > > > > +		break;
> > > > > +	case I3C_BUS_MODE_MIXED_SLOW:
> > > > > +		if (!i3cbus->scl_rate.i2c)
> > > > > +			i3cbus->scl_rate.i2c = max_i2c_scl_rate;
> > > > > +		if (!i3cbus->scl_rate.i3c ||
> > > > > +		    i3cbus->scl_rate.i3c > i3cbus->scl_rate.i2c)
> > > > > +			i3cbus->scl_rate.i3c = i3cbus->scl_rate.i2c;
> > > > > +		break;
> > > > > +	default:
> > > > > +		return -EINVAL;
> > > > >  	}
> > > > >  
> > > > > +	if (i3cbus->scl_rate.i3c < i3cbus->scl_rate.i2c)
> > > > > +		dev_dbg(&master->dev,
> > > > > +			"i3c-scl-hz=%ld lower than i2c-scl-hz=%ld\n",
> > > > > +			i3cbus->scl_rate.i3c, i3cbus->scl_rate.i2c);
> > > > > +
> > > > > +	if (i3cbus->scl_rate.i2c != I3C_BUS_I2C_FM_SCL_RATE &&
> > > > > +	    i3cbus->scl_rate.i2c != I3C_BUS_I2C_FM_PLUS_SCL_RATE &&
> > > > > +	    i3cbus->mode != I3C_BUS_MODE_PURE)
> > > > > +		dev_dbg(&master->dev,
> > > > > +			"i2c-scl-hz=%ld not defined according MIPI I3C spec\n",
> > > > > +			i3cbus->scl_rate.i2c);
> > > > > +    
> > > > 
> > > > Again, that's not what I suggested, so I'll write it down:
> > > > 
> > > > 	dev_dbg(&master->dev, "i2c-scl = %ld Hz i3c-scl = %ld Hz\n",
> > > > 		i3cbus->scl_rate.i2c, i3cbus->scl_rate.i3c);
> > > >     
> > > 
> > > I'm not ok with that change. The reasons are:
> > >   i3cbus->scl_rate.i3c < i3cbus->scl_rate.i2c is an abnormal use case. As 
> > > discuss early it can be cause by a wrong DT definition or just for 
> > > testing purposes.  
> > 
> > Is it buggy, and if it is, what are the symptoms? And I'm not talking
> > about slow transfers here. Also, note that forcing the I2C/I3C rate
> > through the DT already means you want to tweak the bus speed (either
> > for debugging purposes or because slowing things down is needed to fix
> > a HW bug).  
> 
> Does it need to be buggy to inform the user of such inconsistence?

It's something forced by the user through a DT property, why do you
think he should be warned about something he decided to explicitly set
to a lower value than what's supposed to be supported. Doesn't sound
like an inconsistency to me.

> 
> >   
> > > 
> > >   i3cbus->scl_rate.i2c != I3C_BUS_I2C_FM_SCL_RATE && i3cbus->scl_rate.i2c 
> > > != I3C_BUS_I2C_FM_PLUS_SCL_RATE, the MIPI I3C Spec v1.0 clearly says that 
> > > all I2C devices on the bus shall have a LVR register and thus support FM 
> > > or FM+ modes.  
> > 
> > Yet, you might want to apply a lower I2C freq, and this sounds like a
> > valid case that doesn't deserve a dev_warn().  
> 
> I already said that I'm ok to change the dev_warn(), you just have to 
> tell me what is the best message level to use.

It's simple: warn about things that can lead to undefined/weird
behavior (rate higher than what the spec allows), do nothing otherwise.
You can add a dev_dbg() message that prints both I3C and I2C rates
unconditionally so that users can still see it in the kernel logs if
they really want (that requires enabling dynamic-printk or compiling
the core with -DDEBUG).

> 
> >   
> > > By  definition a FM bus works at 400kHz and a FM+ bus 1MHz.
> > > And for slaves, a FM device works up to 400kHz and a FM+ device works up 
> > > to 1MHz respectively.  
> > 
> > *up to*, that's the important thing to keep in mind. There's no problem
> > driving the SCL signal at a lower freq.  
> 
> We already know that a FM or FM+ supports lower frequencies due backyard 
> capabilities.

So, you agree that running at a lower freq is a valid use case.

> 
> >   
> > > 
> > > Apart of that, if the I2C device support you can use a custom higher or 
> > > lower rate, yet not defined according MIPI I3C spec.  
> > 
> > I'm not going to have this discussion again, sorry. I think I gave
> > enough arguments to explain why having an I2C SLC rate that's slower
> > than what I2C devices support is fine.  
> 
> It is clear to me that the I2C devices on I3C bus shall support FM or 
> FM+.
> If not they don't follow the MIPI I3C spec and for that reason I prefer 
> to inform the user.

I'll try to explain it again. It's not about what devices support but
what the user decides to force. You can have super fast devs on a
crappy bus that can't run at full speed because of X/Y reasons (can be
some problems at the board level preventing it from running at full
speed in a reliable way). In that case, the user forces a rate for
I3C/I2C and there's nothing to complain about *unless* this new rate is
above the max limit (or below the min limit, but I don't think there's
a min in our case).

If things are well designed and/or you're not trying to artificially
lower the bus speed (to probe it?), you shouldn't have the
i3c/i2c-scl-hz props defined in the first place and all the things
we're talking about are irrelevant.

> 
> >   
> > >   
> > > > dev_dbg() is not printed by default, so it's just fine to have a trace
> > > > that prints the I3C and I2C rate unconditionally.    
> > > 
> > > I'm ok to change the way that user is notified and I think that is here 
> > > the problem.
> > > Maybe the best is to change the first dev_dbg() to dev_warn() and the 
> > > second dev_info().  
> > 
> > Same here. I'm fine having a dev_warn() when the rate is higher than
> > what's supported by devices present on the bus (because that case is
> > buggy), but not when it's lower and still in the valid range.  
> 
> Please take some time to analyze it again, my concern is only to inform 
> the user about inconsistencies (forced or not) with the I3C specification 
> and I already agreed to change the message levels.

If you only want to inform the user about the selected rates, you
should just print them unconditionally, and given that messages in the
probe path are normally reserved for errors (see [1]), you should use
dev_dbg() for that.

[1]https://lkml.org/lkml/2019/6/4/1053

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
