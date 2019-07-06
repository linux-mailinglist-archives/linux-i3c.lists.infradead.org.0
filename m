Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD77C60F89
	for <lists+linux-i3c@lfdr.de>; Sat,  6 Jul 2019 10:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AITuiEV0JiMZmgrDSr/4iGT3eua6QAWnqpzME5UGijI=; b=b0XfIyH2sm1wfF
	lw7vhgOUofGCsNE7sPKrR4d+FVCjqzUftpjtSKHxvx5giHpdGCjW0n8iQmBaU9FBPCLh26tbo2HiF
	DGRwIRcOhUolu6F4v+r8MPWYp0UjV6OVmJ9OKCmq9deDENlsJZ1WumEyRpaI1WSD8q0kfbsMYwRTP
	QP/GE1o1bGhS4zETMXV8WV93bs0K1YD2xTwP6JDxYCcGrJr+3+E3C/RfU02XUfLMdCKUn+fxOgjvu
	etdk+0EkNXxR94lwagvqtD3f+vr5jyf3q8Rwl/NeT7VNzkA+Fks8nZK1GU5gMFxqsXkE/nNIxCUap
	Jc5xM3LkgMwZ2iJ8rv4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjgNR-0007A5-HE
	for lists+linux-i3c@lfdr.de; Sat, 06 Jul 2019 08:49:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjgNO-00079k-9m
 for linux-i3c@lists.infradead.org; Sat, 06 Jul 2019 08:49:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3FC6128A170;
 Sat,  6 Jul 2019 09:48:56 +0100 (BST)
Date: Sat, 6 Jul 2019 10:48:53 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Przemyslaw Gaj <pgaj@cadence.com>
Subject: Re: [PATCH v5 2/7] i3c: split i3c_master_register into init -
 register pair
Message-ID: <20190706104853.412c648f@collabora.com>
In-Reply-To: <1561236905-8901-3-git-send-email-pgaj@cadence.com>
References: <1561236905-8901-1-git-send-email-pgaj@cadence.com>
 <1561236905-8901-3-git-send-email-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_014858_602322_4BAB30EF 
X-CRM114-Status: GOOD (  19.76  )
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

On Sat, 22 Jun 2019 21:55:00 +0100
Przemyslaw Gaj <pgaj@cadence.com> wrote:

> This patch is base for mastership takeover where secondary master is
> initialized at probe time but register may be postponed till dynamic address is
> assigned to our device.
> 
> Signed-off-by: Przemyslaw Gaj <pgaj@cadence.com>
> ---
>  drivers/i3c/master.c                 | 86 ++++++++++++++++++++----------------
>  drivers/i3c/master/dw-i3c-master.c   | 34 +++++++-------
>  drivers/i3c/master/i3c-master-cdns.c | 45 ++++++++++---------
>  include/linux/i3c/master.h           | 12 ++---
>  4 files changed, 94 insertions(+), 83 deletions(-)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 0f7c31e..759078f 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -1528,32 +1528,9 @@ int i3c_master_do_daa(struct i3c_master_controller *master)
>  }
>  EXPORT_SYMBOL_GPL(i3c_master_do_daa);
>  
> -/**
> - * i3c_master_set_info() - set master device information
> - * @master: master used to send frames on the bus
> - * @info: I3C device information
> - *
> - * Set master device info. This should be called from
> - * &i3c_master_controller_ops->bus_init().
> - *
> - * Not all &i3c_device_info fields are meaningful for a master device.
> - * Here is a list of fields that should be properly filled:
> - *
> - * - &i3c_device_info->dyn_addr
> - * - &i3c_device_info->bcr
> - * - &i3c_device_info->dcr
> - * - &i3c_device_info->pid
> - * - &i3c_device_info->hdr_cap if %I3C_BCR_HDR_CAP bit is set in
> - *   &i3c_device_info->bcr
> - *
> - * This function must be called with the bus lock held in maintenance mode.
> - *
> - * Return: 0 if @info contains valid information (not every piece of
> - * information can be checked, but we can at least make sure @info->dyn_addr
> - * and @info->bcr are correct), -EINVAL otherwise.
> - */
> -int i3c_master_set_info(struct i3c_master_controller *master,
> -			const struct i3c_device_info *info)
> +static int i3c_master_set_info(struct i3c_master_controller *master,
> +			       const struct i3c_device_info *info,
> +			       bool secondary)

secondary is not used here, and this can be extracted from
master->secondary anyway. I think you can drop this argument.

>  {
>  	struct i3c_dev_desc *i3cdev;
>  	int ret;
> @@ -1586,7 +1563,6 @@ int i3c_master_set_info(struct i3c_master_controller *master,
>  
>  	return ret;
>  }
> -EXPORT_SYMBOL_GPL(i3c_master_set_info);
>  
>  static void i3c_master_detach_free_devs(struct i3c_master_controller *master)
>  {
> @@ -2403,7 +2379,7 @@ static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
>  }
>  
>  /**
> - * i3c_master_register() - register an I3C master
> + * i3c_master_init() - initializes all the structures required by I3C master
>   * @master: master used to send frames on the bus
>   * @parent: the parent device (the one that provides this I3C master
>   *	    controller)
> @@ -2417,16 +2393,14 @@ static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
>   * - creates and initializes the I3C bus
>   * - populates the bus with static I2C devs if @parent->of_node is not
>   *   NULL
> - * - registers all I3C devices added by the controller during bus
> - *   initialization
> - * - registers the I2C adapter and all I2C devices
> + * - set bus mode when registering I2C devices.
>   *
>   * Return: 0 in case of success, a negative error code otherwise.
>   */
> -int i3c_master_register(struct i3c_master_controller *master,
> -			struct device *parent,
> -			const struct i3c_master_controller_ops *ops,
> -			bool secondary)
> +int i3c_master_init(struct i3c_master_controller *master,
> +		    struct device *parent,
> +		    const struct i3c_master_controller_ops *ops,
> +		    bool secondary)

Can we have i3c_primary_master_init() and i3c_secondary_master_init()
instead of this secondary arg? You can provide them as wrappers around a
generic i3c_master_init() if that make sense.

>  {
>  	struct i3c_bus *i3cbus = i3c_master_get_bus(master);
>  	enum i3c_bus_mode mode = I3C_BUS_MODE_PURE;
> @@ -2488,10 +2462,47 @@ int i3c_master_register(struct i3c_master_controller *master,
>  		ret = -ENOMEM;
>  		goto err_put_dev;
>  	}
> +	return 0;
> +
> +err_put_dev:
> +	put_device(&master->dev);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(i3c_master_init);

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
