Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031CE1618E8
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 18:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+icfntCZ7E8Uj3Z6z+VmtAl4M6ffhzgkA/4sF6wKUUc=; b=ZlDAwamoXSRq2M
	Voy3qyKIP+tqFGgrZk/otvtS3qTDGPvO36qxov3Ply2VVAINAybzOGBPf3wh4TCXLto2Pzq07Y5qc
	llrhlISLzZxofLZ2ql+v8U3FPt+qonXbhHIpANjAKmdlIMMNdDJpTMqd1OKPNzsqE+eFyzpMOmqy/
	zTxC38iwJ9awtVlKJw5oxk/g3JiMpXBnQtQwVgflFgq1UDGEiPQ1UFSBE6PniI/WLuT/A9+j/k1pV
	gcERjQveQ49dZ8B3LcUVfdkZlRHK/m9LIABTQZ1YMN+HfUMewukjLjFMQERdRiDSrNyXJI7qvNiFr
	U8po8rRk1+wDXQzf32Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kLC-0000eC-Oi
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 17:37:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kL9-0000dd-W3
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 17:37:53 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 326982934B4;
 Mon, 17 Feb 2020 17:37:50 +0000 (GMT)
Date: Mon, 17 Feb 2020 18:37:47 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [RFC v2 0/4] Introduce i3c device userspace interface
Message-ID: <20200217183747.6a18d6c4@collabora.com>
In-Reply-To: <20200217155141.08e87b3f@collabora.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <20200217155141.08e87b3f@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_093752_165371_DF7658F3 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, arnd@arndb.de,
 bbrezillon@kernel.org, gregkh@linuxfoundation.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 15:51:41 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Hello Vitor,
> 
> Sorry for taking so long to reply, and thanks for working on that topic.
> 
> On Wed, 29 Jan 2020 13:17:31 +0100
> Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> 
> > For today there is no way to use i3c devices from user space and
> > the introduction of such API will help developers during the i3c device
> > or i3c host controllers development.
> > 
> > The i3cdev module is highly based on i2c-dev and yet I tried to address
> > the concerns raised in [1].
> > 
> > NOTES:
> > - The i3cdev dynamically request an unused major number.
> > 
> > - The i3c devices are dynamically exposed/removed from dev/ folder based
> >   on if they have a device driver bound to it.  
> 
> May I ask why you need to automatically bind devices to the i3cdev
> driver when they don't have a driver matching the device id
> loaded/compiled-in? If we get the i3c subsystem to generate proper
> uevents we should be able to load the i3cdev module and bind the device
> to this driver using a udev rule.

Hm, looks like we already send a proper MODALIAS [1], so we can actually
implement this auto-bind to i3cdev in udev (fall back on i3cdev
load+bind if no matching module is found).

[1]https://elixir.bootlin.com/linux/latest/source/drivers/i3c/master.c#L269

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
