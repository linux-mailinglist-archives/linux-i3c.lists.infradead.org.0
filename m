Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA4C16A4D1
	for <lists+linux-i3c@lfdr.de>; Mon, 24 Feb 2020 12:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YdtcsSfk9JERnl1BEXN9FXnK6k5mPmAE22FJX7S+9k=; b=WCs8SzjWJFWUHP
	Se/wdpMqcc9q9BoGwskXpJfKsDgsjam77LSnsg5jzzUpj2vpMfp7M57pDd+7pXyBjzEWnBq8oDeuC
	satw1IUZsyO2mprFH+1xPFTQWDQPqEoecDLK+VLIra+8RCD05IYDMbYmX00FTWWFqQszoF1TZ383I
	4491utL9ezw8VHQrkHHXPANvMDVHBxBBB9Nv1bPGvJQvpqcjuzJGLaMrbugZVORvta0Di+JaRkH9g
	11U53QkPIEy34gNgDZ2zt/bOOrU6Mve/0jKt2ovgJxJvIv+/qkzeguzlzFuKKmQbqS53IzgpobYA4
	5m0V21lS9jbJWN/BL7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BoX-0000lX-DE
	for lists+linux-i3c@lfdr.de; Mon, 24 Feb 2020 11:22:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BoU-0000in-Jd
 for linux-i3c@lists.infradead.org; Mon, 24 Feb 2020 11:22:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6730E29047B;
 Mon, 24 Feb 2020 11:22:09 +0000 (GMT)
Date: Mon, 24 Feb 2020 12:22:06 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v3 4/5] i3c: add i3cdev module to expose i3c dev in /dev
Message-ID: <20200224122206.10984b3f@collabora.com>
In-Reply-To: <CH2PR12MB42163351853CCC029D28164BAEEC0@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1582069402.git.vitor.soares@synopsys.com>
 <e093ae9da81e7702c188a20d1e8b9d7f8024bfeb.1582069402.git.vitor.soares@synopsys.com>
 <20200221233216.3b2038f8@collabora.com>
 <CH2PR12MB42163351853CCC029D28164BAEEC0@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_032214_782539_5B450213 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 11:04:50 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi Boris,
> 
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Fri, Feb 21, 2020 at 22:32:16
> 
> > On Wed, 19 Feb 2020 01:20:42 +0100
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > +static int i3cdev_detach(struct device *dev, void *dummy)
> > > +{
> > > +	struct i3cdev_data *i3cdev;
> > > +	struct i3c_device *i3c;
> > > +
> > > +	if (dev->type == &i3c_masterdev_type)
> > > +		return 0;
> > > +
> > > +	i3c = dev_to_i3cdev(dev);
> > > +
> > > +	i3cdev = i3cdev_get_drvdata(i3c);
> > > +	if (!i3cdev)
> > > +		return 0;
> > > +
> > > +	/* Prevent transfers while cdev removal */
> > > +	mutex_lock(&i3cdev->xfer_lock);
> > > +	cdev_del(&i3cdev->cdev);  
> > 
> > When cdev_del() returns there might be opened FDs pointing to your
> > i3cdev [1] ...  
> 
> Yes, I know. I protected the driver part but I missed the 
> file->private_data.

Not sure what you mean by protection, but if you meant locking, then
it's not enough: you need to refcnt the struct if you want to prevent
use-after-free situations.

BTW, I had a closer look at the usbdev implementation, and maybe you
should base yours on usb instead of i2c. They seem to register a cdev at
module init time, and add a dev_t per device at device registration
time. Not sure how they handle the userspace-driver vs kernel-driver
concurrency, but maybe returning EACCES (or EBUSY) instead of
detaching/attaching the i3cdev everytime a device is bound/unbound
would be simpler.

Also, I think Arnd was right, it'd be simpler if i3cdev support was
integrated to the core (still left as a option so it can be disabled,
but with a dedicated i3cdev field in i3c_device instead hijacking the
driver private field).


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
