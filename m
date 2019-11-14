Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C37AFC28C
	for <lists+linux-i3c@lfdr.de>; Thu, 14 Nov 2019 10:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoecP9vmH1ct9Xj21bVzhZF4ow7zs3iKJCji/O6oMS8=; b=qxRwVRbo2z//aW
	lRIFh6vWHDONReoGQtKPkaWKAgiXgEhe9z2Vuz4CFP+PnFsFIUYJpSe5QwrPRcRszctd4EGY5sMiG
	EmdFUm7hMUIiwVaUgm9j401F/KvCz92LJtt/7shrAQKGJjRKMGcf3Lxjd91JIHJcj6vM6x0unh63N
	avUac8ddiFzKlU5dt3EgmGtXbjODw7fj3gvtJpguSTGuUW8KOcBlWfHY6SPhjOu1gnzcCfV3HPBFg
	/MlOxJUy0rt+WGmWh5kMJ5uY0/uZ8bIEw1VMLg9IvVnofpiiVEewyNcUkAnmcsymMnYoU5PFLS7f/
	ktRt5mHfoVC6C2ruYOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBOM-0004Sh-DC
	for lists+linux-i3c@lfdr.de; Thu, 14 Nov 2019 09:26:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBOJ-0004Rs-Qq
 for linux-i3c@lists.infradead.org; Thu, 14 Nov 2019 09:26:17 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2AC442915B3;
 Thu, 14 Nov 2019 09:26:13 +0000 (GMT)
Date: Thu, 14 Nov 2019 10:26:01 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Przemyslaw Gaj <pgaj@cadence.com>
Subject: Re: [PATCH 2/3] dt-bindings: i3c: Document data hold delay feature
Message-ID: <20191114102601.745ce03f@collabora.com>
In-Reply-To: <20191114101549.0d6d08f3@collabora.com>
References: <20191114055155.20446-1-pgaj@cadence.com>
 <20191114055155.20446-3-pgaj@cadence.com>
 <20191114101549.0d6d08f3@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_012615_996784_69F64AF2 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-i3c@lists.infradead.org, vitor.soares@synopsys.com,
 rafalc@cadence.com, agolec@cadence.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 10:15:49 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Thu, 14 Nov 2019 06:51:54 +0100
> Przemyslaw Gaj <pgaj@cadence.com> wrote:
> 
> > Documenting THD_DEL (Data Hold Delay) feature of Cadence I3C
> > master controller.
> > 
> > Signed-off-by: Przemyslaw Gaj <pgaj@cadence.com>
> > ---
> >  Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> > index 1cf6182f888c..7d6349354390 100644
> > --- a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> > +++ b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> > @@ -21,6 +21,12 @@ Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> >  - i2c-scl-hz
> >  - i3c-scl-hz
> >  
> > +Optional properties, Cadence I3C master controller specific:
> > +
> > +- thd_del: Data Hold Delay. Sets data hold delay (i.e. SDA_OUT data
> > +	   line will change its value with extra delay that specified
> > +	   in this register).  
> 
> If it's a Cadence specific property, it should be prefixed with 'cdns,':
> 
>  - cdns,thd-delay

Oh, and you need to specify the unit. Given the code, I suspect it's in
clk-cycles, which is not great, since you probably want the delay to
always be the same no matter the frequency of the clk driving the I3C
master block.

> 
> Quick question about this delay, is it related to the IP integration in
> a SoC or is it board specific? In former case, I'd recommend attaching
> this piece of information to the compatible and have one compatible per
> SoC.
> 
> > +
> >  I3C device connected on the bus follow the generic description (see
> >  Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> >    
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
