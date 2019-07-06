Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E01560F55
	for <lists+linux-i3c@lfdr.de>; Sat,  6 Jul 2019 09:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UznLA2AndgTtGKURwq3llhzfRaGrO1fxX/9ciulGAf4=; b=Z4rhUK/IeaIH+b
	Sizd95WQ1zSu4Wb81+NQ7qPYS7iQZS7+lB9GpVMUnRRegMKtUCDExgXpvguvDDlZKo09k5BGCT4zi
	HEDS7gtmVhlTriYUYx4WKnwR5Dt3AkA6fc4iKmTFj4EA8rXmlbcph9SzCRRTqCemwERYBF/mDyd3L
	rcR+xfmFOHz9h7WiHCFhJaEhQGgX+rHYuIVL05VoZZqt5cKR68VV1iCUe9ozPsR2/PjVLTRRnPYXU
	BudBUyahAyxd9EhLZ+zPBo7ToP0u8/SQsJI6CcH4gNx+fjtSIPeOaFQemJ9Wmkyz+2TZ2qe3SBan1
	Dlxrrlh1VMol3kB/qiwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjfI6-0001Ps-QE
	for lists+linux-i3c@lfdr.de; Sat, 06 Jul 2019 07:39:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjfI3-0001PN-Rr
 for linux-i3c@lists.infradead.org; Sat, 06 Jul 2019 07:39:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6DD1328C010;
 Sat,  6 Jul 2019 08:39:22 +0100 (BST)
Date: Sat, 6 Jul 2019 09:39:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Przemyslaw Gaj <pgaj@cadence.com>
Subject: Re: [PATCH v5 3/7] i3c: export i3c_bus_set_mode function
Message-ID: <20190706093919.02c5fac1@collabora.com>
In-Reply-To: <1561236905-8901-4-git-send-email-pgaj@cadence.com>
References: <1561236905-8901-1-git-send-email-pgaj@cadence.com>
 <1561236905-8901-4-git-send-email-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_003924_032676_929ED722 
X-CRM114-Status: GOOD (  15.20  )
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

On Sat, 22 Jun 2019 21:55:01 +0100
Przemyslaw Gaj <pgaj@cadence.com> wrote:

> I need to export this function to let secondary master update the bus mode.
> Some newly added I2C devices may operate in slower mode.
> 
> Signed-off-by: Przemyslaw Gaj <pgaj@cadence.com>
> ---
>  drivers/i3c/master.c       | 10 ++++++++++
>  include/linux/i3c/master.h |  1 +
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 759078f..cbace14 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -566,6 +566,15 @@ static const struct device_type i3c_masterdev_type = {
>  	.groups	= i3c_masterdev_groups,
>  };
>  
> +/**
> + * i3c_bus_set_mode() - set a bus mode
> + * @i3cbus: I3C bus object
> + * @mode: new bus mode
> + *
> + * This is called at initialization time and should be called when
> + * bus mode has changed, for example when secondary master registered
> + * devices after successful masership takeover.
> + */
>  int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode)
>  {
>  	i3cbus->mode = mode;
> @@ -590,6 +599,7 @@ int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(i3c_bus_set_mode);

I'd rather not export this function and instead let the core decide
when the bus mode needs to be changed (based on the type of devices
added by the master).

>  
>  static struct i3c_master_controller *
>  i2c_adapter_to_i3c_master(struct i2c_adapter *adap)
> diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
> index df3d769..e089771 100644
> --- a/include/linux/i3c/master.h
> +++ b/include/linux/i3c/master.h
> @@ -538,6 +538,7 @@ void i3c_master_cleanup(struct i3c_master_controller *master);
>  int i3c_master_register(struct i3c_master_controller *master,
>  			struct i3c_device_info *info);
>  int i3c_master_unregister(struct i3c_master_controller *master);
> +int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode);
>  
>  /**
>   * i3c_dev_get_master_data() - get master private data attached to an I3C


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
