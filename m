Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD68F16852F
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 18:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0e5UJuZhE4lt2qEb8vtEdssHnmH1fHde0KMuf24Br1s=; b=hZ5Ne+XARSH6+g
	2e7VAd/h4jGXwK9O4zqyaQh6iBzfIK0re31t/4r+an6EPlzPR/ap+mkaMiVYaH1a90rvSWTLW1kVt
	S2BhKCXy1gXhfOsO0eiL4PNo2hYHRMrIcVCwgwuT2Fejqn7Bi00RA+6OGfjVKMz4c2ZiOOhMKL5M1
	VyiXfMP9q+BQfgFu9GB+6W4AnBk2w7oWkalt40e6mF3B2chq0qkSdjZxL1u297ji6k57oBvkcyUSF
	AjgB3Ic3uSgyqH5U8zPZzVanO0bMuI1keIPwTSXqlCvF39Ycq9qSMNSK+FscGY121xRHcSUewjcR7
	S++f3FpPpHfREukFpKjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CIq-0005QC-JS
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 17:41:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CIn-0005Po-6F
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 17:41:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 54EED295AE9;
 Fri, 21 Feb 2020 17:41:23 +0000 (GMT)
Date: Fri, 21 Feb 2020 18:41:16 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v3 0/5] Introduce i3c device userspace interface
Message-ID: <20200221184116.1d8f0677@collabora.com>
In-Reply-To: <CH2PR12MB4216ECDC745C8255DF8106A3AE120@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1582069402.git.vitor.soares@synopsys.com>
 <CH2PR12MB421604E9272413A6C456AB16AE100@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20200219091658.7506e7bd@collabora.com>
 <CH2PR12MB4216ECDC745C8255DF8106A3AE120@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094125_493497_977BF5C8 
X-CRM114-Status: GOOD (  38.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Joao Pinto <Joao.Pinto@synopsys.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 17:08:17 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi Boris,
> 
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Wed, Feb 19, 2020 at 08:16:58
> 
> > On Wed, 19 Feb 2020 00:39:31 +0000
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > Hi Boris,
> > > 
> > > From: Vitor Soares <vitor.soares@synopsys.com>
> > > Date: Wed, Feb 19, 2020 at 00:20:38
> > >   
> > > > For today there is no way to use i3c devices from user space and
> > > > the introduction of such API will help developers during the i3c device
> > > > or i3c host controllers development.
> > > > 
> > > > The i3cdev module is highly based on i2c-dev and yet I tried to address
> > > > the concerns raised in [1].
> > > > 
> > > > NOTES:
> > > > - The i3cdev dynamically request an unused major number.
> > > > 
> > > > - The i3c devices are dynamically exposed/removed from dev/ folder based
> > > >   on if they have a device driver bound to it.
> > > > 
> > > > - For now, the module exposes i3c devices without device driver on
> > > >   dev/bus/i3c/<bus>-<pid>
> > > > 
> > > > - As in the i2c subsystem, here it is exposed the i3c_priv_xfer to
> > > >   userspace. I tried to use a dedicated structure as in spidev but I don't
> > > >   see any obvious advantage.
> > > > 
> > > > - Since the i3c API only exposes i3c_priv_xfer to devices, for now, the
> > > >   module just makes use of one ioctl(). This can change in the future with
> > > >   the introduction hdr commands or by the need of exposing some CCC
> > > >   commands to the device API (private contract between master-slave).
> > > >   Regarding the i3c device info, some information is already available
> > > >   through sysfs. We can add more device attributes to expose more
> > > >   information or add a dedicated ioctl() request for that purpose or both.
> > > > 
> > > > - Similar to i2c, I have also created a tool that you can find in [2]
> > > >   for testing purposes. If you have some time available I would appreciate
> > > >   your feedback about it as well.
> > > > 
> > > > [1] https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.org_lkml_2018_11_15_853&d=DwICAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=qVuU64u9x77Y0Kd0PhDK_lpxFgg6PK9PateHwjb_DY0&m=1N2OHEqhXNvZn7HIjf_EmPX5N9wwBWLsUakJ9a1zno0&s=RJ3Lr0SIvJYiKxLCFaV0_pNArfUJj7TxsJecNgYbTQA&e= 
> > > > [2] https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_vitor-2Dsoares-2Dsnps_i3c-2Dtools.git&d=DwICAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=qVuU64u9x77Y0Kd0PhDK_lpxFgg6PK9PateHwjb_DY0&m=1N2OHEqhXNvZn7HIjf_EmPX5N9wwBWLsUakJ9a1zno0&s=q4Oi7UD-dZ1YMlTN9prqycS1G1QvEUuBFnsABMGRuBk&e= 
> > > > 
> > > > Changes in v3:
> > > >   Use the xfer_lock to prevent device detach during ioctl call
> > > >   Expose i3cdev under /dev/bus/i3c/ folder like usb does
> > > >   Change NOTIFY_BOUND to NOTIFY_BIND, this allows the device detach occur
> > > >   before driver->probe call
> > > >   Avoid use of IS_ERR_OR_NULL
> > > >   Use u64_to_user_ptr instead of (void __user *)(uintptr_t) cast
> > > >   Allocate k_xfer and data_ptrs at once and eliminate double allocation
> > > >   check
> > > >   Pass i3cdev to dev->driver_data
> > > >   Make all minors available
> > > >   Add API documentation
> > > > 
> > > > Changes in v2:
> > > >   Use IDR api for minor numbering
> > > >   Modify ioctl struct
> > > >   Fix SPDX license
> > > > 
> > > > Vitor Soares (5):
> > > >   i3c: master: export i3c_masterdev_type
> > > >   i3c: master: export i3c_bus_type symbol
> > > >   i3c: master: add i3c_for_each_dev helper
> > > >   i3c: add i3cdev module to expose i3c dev in /dev
> > > >   userspace-api: add i3cdev documentation
> > > > 
> > > >  Documentation/userspace-api/i3c/i3cdev.rst | 116 ++++++++
> > > >  drivers/i3c/Kconfig                        |  15 +
> > > >  drivers/i3c/Makefile                       |   1 +
> > > >  drivers/i3c/i3cdev.c                       | 429 +++++++++++++++++++++++++++++
> > > >  drivers/i3c/internals.h                    |   2 +
> > > >  drivers/i3c/master.c                       |  16 +-
> > > >  include/uapi/linux/i3c/i3cdev.h            |  38 +++
> > > >  7 files changed, 616 insertions(+), 1 deletion(-)
> > > >  create mode 100644 Documentation/userspace-api/i3c/i3cdev.rst
> > > >  create mode 100644 drivers/i3c/i3cdev.c
> > > >  create mode 100644 include/uapi/linux/i3c/i3cdev.h
> > > > 
> > > > -- 
> > > > 2.7.4    
> > > 
> > > I want to make you know that none of your previous comments was ignored 
> > > and  I would like to start the discussion from this point.  
> > 
> > Sure, np. I'll probably wait for a v4 exploring the option I proposed
> > then.  
> 
> I would like to check with you:
>   - How can we prioritize the device driver over the i3cdev driver if the 
> driver is loaded after i3cdev? Currently, this is done automatically 
> without any command, and for me, this is a requirement.

No devs would be bound to the i3cdev driver by default, it would have
to be done explicitly through a sysfs knob. Which makes me realize
we can't use the generic bind knob since it doesn't let the subsystem
know that it's a manual bind. I thought there was a way to distinguish
between manual and auto-bind.

>   - For the ioctl command structure, there is no rule about the way I did 
> or what you proposed, both are currently used in the kernel. For me it is 
> one more structure to deal with, can you point the advantages of your 
> purpose?

I don't have a strong opinion on that one, though I find it a bit
easier to follow when the number of xfers is encoded in a separate
struct rather than extracted from the data size passed through the cmd
argument.

>   - Regarding the ioctl codes, I tried to use those after I2C.

Why start from 0x30? It doesn't make sense to me. Just because you base
your code on something that already exists doesn't mean you have to
copy all of it.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
