Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFC37B21
	for <lists+linux-i3c@lfdr.de>; Thu,  6 Jun 2019 19:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixBG3s0V8XFU0fRuC2BJ33W3GuQ0yRH34m5RfRU0Fgw=; b=XupDmc1Vf38+y2
	riWmnZm7qf3Qb72r2oaY+rh5IiJtbgp+Qpmm+bsCjULfpNKhnBEGUoCkNCQw63yJ3E3ZWkKMowVyH
	LRulhf97DD0D6SM+aIqLNRi3jse2BnsmJPIiK4G1QdkqcUBe2kPuF0wp14jFQP08mcdT4CbKgC7y/
	B/eYs3HRCtGvomTuuUXil5MscnByREvVQTbYBviq2LO0o/+HFkfzi9mZKwI6mYJNcae5RSOt0rXYE
	X7UVt+19IpIDDQTEgxnldzNVrqW57gbuD5QsYPSzzYNuReGT3z5QjseGZO6IkeWSY5hZW/LZIGz/Z
	rDgQGAgsvOzSOlpTyeQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwIm-0005ol-9D
	for lists+linux-i3c@lfdr.de; Thu, 06 Jun 2019 17:35:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwIj-0005oQ-Sj
 for linux-i3c@lists.infradead.org; Thu, 06 Jun 2019 17:35:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E47C82605F9;
 Thu,  6 Jun 2019 18:35:43 +0100 (BST)
Date: Thu, 6 Jun 2019 19:35:40 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v2 1/3] i3c: fix i2c and i3c scl rate by bus mode
Message-ID: <20190606193540.680d391b@collabora.com>
In-Reply-To: <13D59CF9CEBAF94592A12E8AE55501350AABE7FC@DE02WEMBXB.internal.synopsys.com>
References: <cover.1559821227.git.vitor.soares@synopsys.com>
 <47de89f2335930df0ed6903be9afe6de4f46e503.1559821228.git.vitor.soares@synopsys.com>
 <20190606161844.4a6b759c@collabora.com>
 <13D59CF9CEBAF94592A12E8AE55501350AABE7FC@DE02WEMBXB.internal.synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_103546_190606_710D0972 
X-CRM114-Status: GOOD (  27.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 17:16:55 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Thu, Jun 06, 2019 at 15:18:44
> 
> > On Thu,  6 Jun 2019 16:00:01 +0200
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > Currently the I3C framework limits SCL frequency to FM speed when
> > > dealing with a mixed slow bus, even if all I2C devices are FM+ capable.
> > > 
> > > The core was also not accounting for I3C speed limitations when
> > > operating in mixed slow mode and was erroneously using FM+ speed as the
> > > max I2C speed when operating in mixed fast mode.
> > > 
> > > Fixes: 3a379bbcea0a ("i3c: Add core I3C infrastructure")
> > > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > > Cc: <stable@vger.kernel.org>
> > > Cc: <linux-kernel@vger.kernel.org>
> > > ---
> > > Changes in v2:
> > >   Enhance commit message
> > >   Add dev_warn() in case user-defined i2c rate doesn't match LVR constraint
> > >   Add dev_warn() in case user-defined i3c rate lower than i2c rate.
> > > 
> > >  drivers/i3c/master.c | 61 +++++++++++++++++++++++++++++++++++++++++-----------
> > >  1 file changed, 48 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> > > index 5f4bd52..8cd5824 100644
> > > --- a/drivers/i3c/master.c
> > > +++ b/drivers/i3c/master.c
> > > @@ -91,6 +91,12 @@ void i3c_bus_normaluse_unlock(struct i3c_bus *bus)
> > >  	up_read(&bus->lock);
> > >  }
> > >  
> > > +static struct i3c_master_controller *
> > > +i3c_bus_to_i3c_master(struct i3c_bus *i3cbus)
> > > +{
> > > +	return container_of(i3cbus, struct i3c_master_controller, bus);
> > > +}
> > > +
> > >  static struct i3c_master_controller *dev_to_i3cmaster(struct device *dev)
> > >  {
> > >  	return container_of(dev, struct i3c_master_controller, dev);
> > > @@ -565,20 +571,48 @@ static const struct device_type i3c_masterdev_type = {
> > >  	.groups	= i3c_masterdev_groups,
> > >  };
> > >  
> > > -int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode)
> > > +int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
> > > +		     unsigned long max_i2c_scl_rate)
> > >  {
> > > -	i3cbus->mode = mode;
> > >  
> > > -	if (!i3cbus->scl_rate.i3c)
> > > -		i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > +	struct i3c_master_controller *master = i3c_bus_to_i3c_master(i3cbus);
> > >  
> > > -	if (!i3cbus->scl_rate.i2c) {
> > > -		if (i3cbus->mode == I3C_BUS_MODE_MIXED_SLOW)
> > > -			i3cbus->scl_rate.i2c = I3C_BUS_I2C_FM_SCL_RATE;
> > > -		else
> > > -			i3cbus->scl_rate.i2c = I3C_BUS_I2C_FM_PLUS_SCL_RATE;
> > > +	i3cbus->mode = mode;
> > > +
> > > +	switch (i3cbus->mode) {
> > > +	case I3C_BUS_MODE_PURE:
> > > +		if (!i3cbus->scl_rate.i3c)
> > > +			i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > +		break;
> > > +	case I3C_BUS_MODE_MIXED_FAST:
> > > +		if (!i3cbus->scl_rate.i3c)
> > > +			i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
> > > +		if (!i3cbus->scl_rate.i2c)
> > > +			i3cbus->scl_rate.i2c = max_i2c_scl_rate;
> > > +		break;
> > > +	case I3C_BUS_MODE_MIXED_SLOW:
> > > +		if (!i3cbus->scl_rate.i2c)
> > > +			i3cbus->scl_rate.i2c = max_i2c_scl_rate;
> > > +		if (!i3cbus->scl_rate.i3c ||
> > > +		    i3cbus->scl_rate.i3c > i3cbus->scl_rate.i2c)
> > > +			i3cbus->scl_rate.i3c = i3cbus->scl_rate.i2c;
> > > +		break;
> > > +	default:
> > > +		return -EINVAL;
> > >  	}
> > >  
> > > +	if (i3cbus->scl_rate.i3c < i3cbus->scl_rate.i2c)
> > > +		dev_warn(&master->dev,
> > > +			 "i3c-scl-hz=%ld lower than i2c-scl-hz=%ld\n",
> > > +			 i3cbus->scl_rate.i3c, i3cbus->scl_rate.i2c);
> > > +
> > > +	if (i3cbus->scl_rate.i2c != I3C_BUS_I2C_FM_SCL_RATE &&
> > > +	    i3cbus->scl_rate.i2c != I3C_BUS_I2C_FM_PLUS_SCL_RATE &&
> > > +	    i3cbus->mode != I3C_BUS_MODE_PURE)  
> > 
> > If you are so strict, there's clearly no point exposing an i2c-scl-hz
> > property. I'm still not convinced having an i2c rate that's slower than
> > what the I2C/I3C spec defines as the *typical* rate is a bad thing,   
> 
> I'm not been strictive, I just inform the user about that case.

Then use dev_debug() and don't make the trace conditional on
i2c_rate != typical_rate. The only case where we should warn users
is i2c_rate > typical_rate, because that might lead to malfunctions.

> 
> > just
> > like I'm not convinced having an I3C rate that's slower than the I2C
> > one is a problem (it's definitely a weird situation, but there's nothing
> > preventing that in the spec).  
> 
> You agree that there is no point for case where i3c rate < i2c rate yet 
> you are not convinced.

I didn't say that, there might be use cases where one wants to slow
down the I3C bus to be able to probe it or use a slower rate when
things do not work properly. It's rather unlikely to happen, but I
don't think it deserves a warning message when that's the case.

> Do you thing that will be users for this case?
> 
> Anyway, this isn't a high requirement for me. The all point of this patch 
> is to introduce the limited bus configuration.

And yet, you keep insisting (and ignoring my feedback) on that point :P.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
