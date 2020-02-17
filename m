Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2812A161875
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 18:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67ygl+ZFq+abf6KQA+4FdgFB1I6Z7RlD3PlBx/qiGMw=; b=P16oHXCQh6zgXE
	SwkkrTBsWWCM8nsPMjyzAp2j2sjFN3BJALNZeJeQyI2axNpO7OLS7MIa2GgFC4GDGmaAz/g27u34m
	ZnEwruyyAbOCJTR2XMgzjw5bRZuAMeImtazeePxXUf97w7eUy049o8QreN6cOCQsrrH0elXFP53I6
	EsKP3HxUsRVLcWAXLisMMzYNZiTp+xhquYPlAl98NDte0vcwELPF22ZbzBY6OVwfjcaR2Vz1YFVtG
	FImQIui5TvoQCOO4bHIgEzAhwr8Qkg+rzTZ+I/3NxEbeUTDtgcPXDQ4Th1VcnHVd2tF8efJ5DocFy
	kJ+R4NYp4B8GgXjj5Qgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jqk-0005SI-So
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 17:06:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jqh-0005Rm-JT
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 17:06:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6751B293BEA;
 Mon, 17 Feb 2020 17:06:21 +0000 (GMT)
Date: Mon, 17 Feb 2020 18:06:17 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC v2 0/4] Introduce i3c device userspace interface
Message-ID: <20200217180617.79bc5b1d@collabora.com>
In-Reply-To: <CAK8P3a2O23=Jjmj0xTQC7pePnwHBrcJ1YeRAKp-1hVf1GNmA5w@mail.gmail.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <20200217155141.08e87b3f@collabora.com>
 <CAK8P3a0jAbevb6mjy7Q=C-TFGn7uHRvshHNEO8XrDPRvRoAiTA@mail.gmail.com>
 <20200217163622.6c78fa3f@collabora.com>
 <CH2PR12MB42166ED8E84503B53340F80DAE160@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20200217172309.26697082@collabora.com>
 <CAK8P3a2O23=Jjmj0xTQC7pePnwHBrcJ1YeRAKp-1hVf1GNmA5w@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_090623_775373_1130C368 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Boris Brezillon <bbrezillon@kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitor Soares <Vitor.Soares@synopsys.com>, Mark Brown <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 17:31:08 +0100
Arnd Bergmann <arnd@arndb.de> wrote:

> On Mon, Feb 17, 2020 at 5:23 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> > On Mon, 17 Feb 2020 15:55:08 +0000 Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >
> > Okay, I have clearly not read the code carefully enough. I thought you
> > were declaring a new i3c_device_driver and were manually binding all
> > orphan devices to this driver. Looks like the solution is more subtle
> > than that, and i3cdevs are actually subdevices that are automatically
> > created/removed when the I3C device is unbound/bound. That means the
> > 'on-demand driver loading' logic is not impacted by this new layer. I'm
> > still not convinced this is needed (I expect i3cdev to be used mostly
> > for experiment, and in that case, having a udev rule, or manually
> > binding the device to the i3cdev driver shouldn't be a problem).  
> 
> I'm fairly sure it's not needed, other approaches could be used to
> provide user space access, but it's not clear if any other way is
> better either. It also took me a while to figure out what is going on
> when I read the code.
> 
> One thought that I had was that this could be better integrated into
> the core, with user space being there implicitly through sysfs rather
> than a /dev file.

Hm, doing I3C transfers through sysfs sounds a bit odd. sysfs entries
are most of the time exposing human readable/writable stuff (plain text
data, that is).

> 
> > I'm also not sure what happens if the device is still used when
> > i3cdev_detach() is called, can transfers still be done after the device
> > is attached to its in-kernel driver?  
> 
> I think this is still an open issue that I also pointed out. The driver
> binding/unbinding and user space access definitely needs to
> be properly serialized, whichever method is used to implement the
> user access.

Well, going for the spidev approach would solve that and make the
whole implementation more straightforward and less invasive (no
notifier, no need to expose internal device types to this i3cdev
driver, no concurrency issues, ...). We can always revisit this solution
if it proves to be to limited and we feel the need for a
kernel-driven i3cdev auto-binding logic, but I doubt we'll ever be
in that position since udev can handle that for us, and if we start
having actual userspace drivers (which is not the case yet), I expect
distros to add the relevant udev rules to take care of this auto-bind.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
