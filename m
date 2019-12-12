Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C80121736
	for <lists+linux-i3c@lfdr.de>; Mon, 16 Dec 2019 19:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VJoGA+jOUTqtmLX5jUDWb/IDetVKyxfWCamU9HRZ4M=; b=U33U9DPLqt7nfo
	kIP+5rZqZsF+QGXfbSu5YetDSRLt4ZMtKo6hHV5N4d/T5jeeyZ0buXStN1IACqz+hK9h1hEqH3bsR
	nVINYuYvXDpmt8RCheJBhWD0WuMoglJ24Jn17pLBmbSACwwn3gLldnWnUEufRci6VZgkHI/Jzv0q+
	kPbBKSW6zugjUTj2swRefRJAHu2kBnpZUpdH+KnAJ9O1FfVhL7sbN/x4+bRRBbWtJ9qdWg5h0U109
	BBwRevAwQJZsnR5uFF2qJ8KTlkQ/oq6wf96ptuUvd2d9m3m0Ga+nxDP19QQ+cNNaMc4drN+kY4LeK
	pxaXZWg37f2m3EtyN2Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvE1-0004hl-MA
	for lists+linux-i3c@lfdr.de; Mon, 16 Dec 2019 18:36:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQtU-000200-Hp
 for linux-i3c@lists.infradead.org; Thu, 12 Dec 2019 16:00:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42DC92073D;
 Thu, 12 Dec 2019 16:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576166447;
 bh=zOhoZ96LZPHtESEGfmQk605Uix32gjBq5vRqbFWGo50=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r57OQ5Q6oili066DWlG8wNJ7fCnYqAjMHu8NCCPkw5/HF22VkrDgo5MdRtXUeS6G+
 jFzQ9AV0kI7c+ArFu7TsHFJIR4R/SEf5Eh9lpAGndlSSlEr8MR9rHNfNPu2T5SvfBq
 1xCrraeRlQKZkHh1836t26NluQWN5Wy7Xcidf7i8=
Date: Thu, 12 Dec 2019 17:00:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [RFC 5/5] i3c: add i3cdev module to expose i3c dev in /dev
Message-ID: <20191212160045.GA1672362@kroah.com>
References: <cover.1575977795.git.vitor.soares@synopsys.com>
 <f9f20eaf900ed5629dd3d824bc1e90c7e6b4a371.1575977795.git.vitor.soares@synopsys.com>
 <20191212144459.GB1668196@kroah.com>
 <CH2PR12MB421658E00DF331400728DB6CAE550@CH2PR12MB4216.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR12MB421658E00DF331400728DB6CAE550@CH2PR12MB4216.namprd12.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_080048_606259_CBAED6A6 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Mailman-Approved-At: Mon, 16 Dec 2019 10:36:06 -0800
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 02:56:56PM +0000, Vitor Soares wrote:
> Hi Greg,
> 
> From: Greg KH <gregkh@linuxfoundation.org>
> Date: Thu, Dec 12, 2019 at 14:44:59
> 
> > On Tue, Dec 10, 2019 at 04:37:33PM +0100, Vitor Soares wrote:
> > > +static int __init i3cdev_init(void)
> > > +{
> > > +	int res;
> > > +
> > > +	pr_info("i3c /dev entries driver\n");
> > 
> > Please remove debugging information, kernel code should be quiet unless
> > something goes wrong.
> 
> I will remove it.
> 
> > 
> > > +	/* Dynamically request unused major number */
> > > +	res = alloc_chrdev_region(&i3cdev_number, 0, N_I3C_MINORS, "i3c");
> > 
> > Do you really need a whole major, or will a few minors work?
> > 
> > thanks,
> > 
> > greg k-h
> 
> I'm reserving one per device. What do you suggest?

How many devices do you have in a system?

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
