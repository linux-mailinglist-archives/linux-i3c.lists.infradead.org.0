Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFEBFC26A
	for <lists+linux-i3c@lfdr.de>; Thu, 14 Nov 2019 10:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sJslKe9XuJZ0BvJFJKL4adxdf7fTr8SmbOEvMNV38k=; b=DEEDwmmrZaNi5v
	yGA6yGHZqIJ+6+YXAkadz5d7ja0Y9EiOXpbmsC/ntVM3oA3ReEJyrzhObBWVXfj+ogCR2g1F+mmkq
	dmoaSxM9Ld8YJgFIk0+JKjqmVTKpbanEFZcqhXU82VOajgOJm8SnGtuKjJqv23B2qHqG4ClRyhwth
	OqI8Phq7gUqWhx3+ChWDRCqUCBV/J82nrgEyhzLg+FzZILZb70j5bgZRdEmcytIPhoF93op2AXH40
	0+WM6ez44clLEliddazcalV40J7V5jHe0UCbrYYSHikeAPGxkZLrPougatGFxszgA1cp5eq/FBeMa
	r90N4umU7OXkyvBtw8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBES-0000kB-0U
	for lists+linux-i3c@lfdr.de; Thu, 14 Nov 2019 09:16:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBEK-0000Nn-8G
 for linux-i3c@lists.infradead.org; Thu, 14 Nov 2019 09:15:57 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C055628A6A8;
 Thu, 14 Nov 2019 09:15:52 +0000 (GMT)
Date: Thu, 14 Nov 2019 10:15:49 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Przemyslaw Gaj <pgaj@cadence.com>
Subject: Re: [PATCH 2/3] dt-bindings: i3c: Document data hold delay feature
Message-ID: <20191114101549.0d6d08f3@collabora.com>
In-Reply-To: <20191114055155.20446-3-pgaj@cadence.com>
References: <20191114055155.20446-1-pgaj@cadence.com>
 <20191114055155.20446-3-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_011556_421179_E340817A 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: linux-i3c@lists.infradead.org, vitor.soares@synopsys.com,
 rafalc@cadence.com, agolec@cadence.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 06:51:54 +0100
Przemyslaw Gaj <pgaj@cadence.com> wrote:

> Documenting THD_DEL (Data Hold Delay) feature of Cadence I3C
> master controller.
> 
> Signed-off-by: Przemyslaw Gaj <pgaj@cadence.com>
> ---
>  Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> index 1cf6182f888c..7d6349354390 100644
> --- a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> +++ b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.txt
> @@ -21,6 +21,12 @@ Documentation/devicetree/bindings/i3c/i3c.txt for more details):
>  - i2c-scl-hz
>  - i3c-scl-hz
>  
> +Optional properties, Cadence I3C master controller specific:
> +
> +- thd_del: Data Hold Delay. Sets data hold delay (i.e. SDA_OUT data
> +	   line will change its value with extra delay that specified
> +	   in this register).

If it's a Cadence specific property, it should be prefixed with 'cdns,':

 - cdns,thd-delay

Quick question about this delay, is it related to the IP integration in
a SoC or is it board specific? In former case, I'd recommend attaching
this piece of information to the compatible and have one compatible per
SoC.

> +
>  I3C device connected on the bus follow the generic description (see
>  Documentation/devicetree/bindings/i3c/i3c.txt for more details).
>  


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
