Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC4A16FA36
	for <lists+linux-i3c@lfdr.de>; Wed, 26 Feb 2020 10:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwi/CGAHsZEQ7Z/dmKDQCWst36qf2Z6U+54xv9Xusr8=; b=VFtmQR5rmie9+y
	SMReiULDDN9Kbk1pAOVjLJmpLowjAHYU5nIC3ddmuFjUFAhDXHUhSjP5EXeqx+KbP1vZEwV3E2qmt
	Q/GdLOLsowOxcwtXqVBroSVqkSl8bi505NqpgFw+YBWrsDTbAiGvXF25iFbEfTFScYo3vd/Y448XL
	sqJk3Yq/GMOaiNKbIRQHuXM7Q9lklhBTNhr9g910vfsrEsRZAGh87htLNC3hoePN0CdOFSpSJcFZf
	Yth0DT3B3JJ0qO6gOQWXtOlT04YXawycEk2xvFEU5G8Xbmfw0slgBxWORTMvkBqm/SlxjAmDGTATa
	Nn5qOEvbkYufYumCBTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sdu-000629-O9
	for lists+linux-i3c@lfdr.de; Wed, 26 Feb 2020 09:06:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sdr-00061D-1d
 for linux-i3c@lists.infradead.org; Wed, 26 Feb 2020 09:06:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 385BD294931;
 Wed, 26 Feb 2020 09:06:04 +0000 (GMT)
Date: Wed, 26 Feb 2020 10:06:01 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH] i3c: master: use 'dev' variable in dev_err
Message-ID: <20200226100601.2fc86032@collabora.com>
In-Reply-To: <20200224083439.3487-1-luca@lucaceresoli.net>
References: <20200224083439.3487-1-luca@lucaceresoli.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_010607_219737_040ECCDD 
X-CRM114-Status: GOOD (  13.90  )
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
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Lucas,

On Mon, 24 Feb 2020 09:34:39 +0100
Luca Ceresoli <luca@lucaceresoli.net> wrote:

> of_i3c_master_add_i2c_boardinfo() already has a handy 'dev' variable, use
> it and simplify code.

I already applied a similar patch from Wolfram, but thanks for your
contribution.

Regards,

Boris

> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/i3c/master.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 7f8f896fa0c3..b56207bbed2b 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -1953,7 +1953,7 @@ of_i3c_master_add_i2c_boardinfo(struct i3c_master_controller *master,
>  	 * DEFSLVS command.
>  	 */
>  	if (boardinfo->base.flags & I2C_CLIENT_TEN) {
> -		dev_err(&master->dev, "I2C device with 10 bit address not supported.");
> +		dev_err(dev, "I2C device with 10 bit address not supported.");
>  		return -ENOTSUPP;
>  	}
>  


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
