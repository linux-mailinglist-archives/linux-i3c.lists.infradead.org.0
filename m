Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5410F16182E
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 17:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzupYxcjNjX4WPmKmvL0o/MHHt5r0sZ9NAZ7L34eZfo=; b=FQ1h1jn0lwOOxx
	X1ea8QWlcKRZsYrpSpFDmk+4RU8kULjOVKLgSXJUrjAtT/g1ieKWZJvWMvXhTsMz8qsjwG8QbpuTw
	lDCixQSrLDSlZer7OV2MidvXwFE2Q7QMCFGkDuIaafCMrCvxAwd5iMNTy2mpFQCRg7OMJ07/MN+Xe
	xV4eqBVTQm+4A8Yyu4XHEaKfapfi4HcMqQgpfrXf+LmTjaLQhFAd7uuLcBjhS9Fy65cpqR4i22CJ7
	IJ338DY39MoA3jOKMJJ6Wf4BkPij7WgSrZ5PuPLjovb4fpgUyapSi/FlUUS7mhLwSjEZ9kx43kFWM
	aa73rsXBYrtizS/7dqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jWk-0005HV-1J
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 16:45:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jAw-0004Rk-Iv
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 16:23:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C06A12912DF;
 Mon, 17 Feb 2020 16:23:12 +0000 (GMT)
Date: Mon, 17 Feb 2020 17:23:09 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [RFC v2 0/4] Introduce i3c device userspace interface
Message-ID: <20200217172309.26697082@collabora.com>
In-Reply-To: <CH2PR12MB42166ED8E84503B53340F80DAE160@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <20200217155141.08e87b3f@collabora.com>
 <CAK8P3a0jAbevb6mjy7Q=C-TFGn7uHRvshHNEO8XrDPRvRoAiTA@mail.gmail.com>
 <20200217163622.6c78fa3f@collabora.com>
 <CH2PR12MB42166ED8E84503B53340F80DAE160@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_082314_755605_1458DE94 
X-CRM114-Status: GOOD (  30.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Arnd Bergmann <arnd@arndb.de>, Wolfram Sang <wsa@the-dreams.de>,
 gregkh <gregkh@linuxfoundation.org>, Boris Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 15:55:08 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi,
> 
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Mon, Feb 17, 2020 at 15:36:22
> 
> > On Mon, 17 Feb 2020 16:06:45 +0100
> > Arnd Bergmann <arnd@arndb.de> wrote:
> >   
> > > On Mon, Feb 17, 2020 at 3:51 PM Boris Brezillon
> > > <boris.brezillon@collabora.com> wrote:  
> > > > Sorry for taking so long to reply, and thanks for working on that topic.
> > > >
> > > > On Wed, 29 Jan 2020 13:17:31 +0100
> > > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > > >    
> > > > > For today there is no way to use i3c devices from user space and
> > > > > the introduction of such API will help developers during the i3c device
> > > > > or i3c host controllers development.
> > > > >
> > > > > The i3cdev module is highly based on i2c-dev and yet I tried to address
> > > > > the concerns raised in [1].
> > > > >
> > > > > NOTES:
> > > > > - The i3cdev dynamically request an unused major number.
> > > > >
> > > > > - The i3c devices are dynamically exposed/removed from dev/ folder based
> > > > >   on if they have a device driver bound to it.    
> > > >
> > > > May I ask why you need to automatically bind devices to the i3cdev
> > > > driver when they don't have a driver matching the device id
> > > > loaded/compiled-in? If we get the i3c subsystem to generate proper
> > > > uevents we should be able to load the i3cdev module and bind the device
> > > > to this driver using a udev rule.    
> > > 
> > > I think that would require manual configuration to ensure that the correct
> > > set of devices get bound to either the userspace driver or an in-kernel
> > > driver.  
> > 
> > Hm, isn't that what udev is supposed to do anyway? Remember that
> > I3C devices expose a manufacturer and part-id (which are similar to the
> > USB vendor and product ids), so deciding when an I3C device should be
> > bound to the i3cdev driver should be fairly easy, and that's a
> > per-device decision anyway.
> >   
> > > The method from the current patch series is more complicated,
> > > but it means that any device can be accessed by the user space driver
> > > as long as it's not already owned by a kernel driver.  
> > 
> > Well, I'm more worried about the extra churn this auto-binding logic
> > might create for the common 'on-demand driver loading' use case. At
> > first, there's no driver matching a specific device, but userspace
> > might load one based on the uevents it receives. With the current
> > approach, that means we'd first have to unbind the device before
> > loading the driver. AFAICT, no other subsystem does that.  

Okay, I have clearly not read the code carefully enough. I thought you
were declaring a new i3c_device_driver and were manually binding all
orphan devices to this driver. Looks like the solution is more subtle
than that, and i3cdevs are actually subdevices that are automatically
created/removed when the I3C device is unbound/bound. That means the
'on-demand driver loading' logic is not impacted by this new layer. I'm
still not convinced this is needed (I expect i3cdev to be used mostly
for experiment, and in that case, having a udev rule, or manually
binding the device to the i3cdev driver shouldn't be a problem). I'm
also not sure what happens if the device is still used when
i3cdev_detach() is called, can transfers still be done after the device
is attached to its in-kernel driver?

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
