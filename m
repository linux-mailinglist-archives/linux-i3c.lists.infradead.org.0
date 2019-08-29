Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC29A1F36
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 17:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcjV3u1rsryetCPWwI/XjQoH19480zYQ6TV8wI9mwic=; b=D5pHU8V/TIueYK
	2QSRNygiQ6cOdUMrlEeBnhHk/bNYwfkzejWou2bBHiQZHeTWOOV/5YYZVXosnrDqsNTZzOKh6joDW
	ZV5FFSmhzzSm0uYZejH9E+iV1+ekdsQzjHv33rdKDLiOQZ/vbwu1FM96XvbBUchfrVvTdOOORHlN/
	GkHiiuUsRtMsdwO68TzWc70dq9h1Sn5JgK0I06g/5WErNToNKz0HOb2zTlLFNCnAF+Ea5MembxZ4i
	YMVuaPZNTJoTXfC0OAiznYgdpKtNihHLKuqjrDiyod149stc2u1eduvdMounbpzs1vUjtzJ/5vVyF
	/q194O6Xrzbm+2rCIRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MOT-00033X-KU
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 15:31:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MI5-0007tn-Q6
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 15:24:53 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7925F28D609;
 Thu, 29 Aug 2019 16:24:46 +0100 (BST)
Date: Thu, 29 Aug 2019 17:24:41 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH 2/4] i3c: master: Check if devices have
 i3c_dev_boardinfo on i3c_master_add_i3c_dev_locked()
Message-ID: <20190829172441.3a76385e@collabora.com>
In-Reply-To: <SN6PR12MB2655B08176E14BE9DF2BACA2AEA20@SN6PR12MB2655.namprd12.prod.outlook.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
 <3e21481ddf53ea58f5899df6ec542b79b8cbcd68.1567071213.git.vitor.soares@synopsys.com>
 <20190829124457.3a750932@collabora.com>
 <SN6PR12MB265551F73B9B516CACB5B807AEA20@SN6PR12MB2655.namprd12.prod.outlook.com>
 <20190829163918.571fd0d8@collabora.com>
 <20190829163941.45380b19@collabora.com>
 <SN6PR12MB2655B08176E14BE9DF2BACA2AEA20@SN6PR12MB2655.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_082450_610708_58E60B72 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 15:07:08 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Thu, Aug 29, 2019 at 15:39:41
> 
> > On Thu, 29 Aug 2019 16:39:18 +0200
> > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> >   
> > > On Thu, 29 Aug 2019 14:00:44 +0000
> > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > >   
> > > > Hi Boris,
> > > > 
> > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > Date: Thu, Aug 29, 2019 at 11:44:57
> > > >     
> > > > > On Thu, 29 Aug 2019 12:19:33 +0200
> > > > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > > > >       
> > > > > > The I3C devices described in DT might not be attached to the master which
> > > > > > doesn't allow to assign a specific dynamic address.      
> > > > > 
> > > > > I remember testing this when developing the framework, so, unless
> > > > > another patch regressed it, it should already work. I suspect patch 1
> > > > > is actually the regressing this use case.      
> > > > 
> > > > For today it doesn't address the case where the device is described with 
> > > > static address = 0, which isn't attached to the controller.    
> > > 
> > > Hm, I'm pretty sure I had designed the code to support that case (see
> > > [1]). It might be buggy, but nothing we can't fix I guess.
> > >   
> > 
> > [1]https://urldefense.proofpoint.com/v2/url?u=https-3A__elixir.bootlin.com_linux_v5.3-2Drc6_source_drivers_i3c_master.c-23L1898&d=DwICAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=qVuU64u9x77Y0Kd0PhDK_lpxFgg6PK9PateHwjb_DY0&m=IXS1ygIgEo5vwajk0iwd5aBDVBzRnVTjO3cg4iBmGNc&s=HC-AcYm-AZPrUBoALioej_BDnqOtJHltr39Z2yPkuU4&e=   
> 
> That is only valid if you have olddev which will only exist if static 
> address != 0.

Hm, if you revert patch 1 (and assuming the device is properly defined
in the DT), you should have olddev != NULL when reaching that point. If
that's not the case there's a bug somewhere that should be fixed.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
