Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CA36E5E3
	for <lists+linux-i3c@lfdr.de>; Fri, 19 Jul 2019 14:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pfsDC0S1enUswvUKbsR6ki/naaZk3/SjotMbFfubg8=; b=EKakWRgu32P59l
	UEHXeqtwQKyI9Iv+cLkAg/N+vzA5Zz1Q5pXQAnDoK4uoFVPg5L+pBRcX0mqK4RQO0SsPccOUKKMmr
	q+8M6VL4hMu9clEXENFGGEjK957RzrHn8jSiQaaFDLBpk65isc3dS2eKAJfQUlkzxN8l6ZjwwIIZ6
	eOJLnD9nzzoagNXnQuQc7X8wmNzOGUH+u6kzScudWzi7r4zo1KxY2wA/wIJW/4/w9K4cSTiKaVClz
	23EEUapGcmZr0BQRTzroIrZRAluBPkYDU1+PH8NVFr4xcGihaCMsdwIQMfr6W/5dHmKp5l+Wxrmpz
	fSVhEWiQw1yUzhJHfi1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoSKh-0005xj-4Z
	for lists+linux-i3c@lfdr.de; Fri, 19 Jul 2019 12:49:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoSKe-0005w7-4q
 for linux-i3c@lists.infradead.org; Fri, 19 Jul 2019 12:49:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbrezillon) with ESMTPSA id 9979628C684
Date: Fri, 19 Jul 2019 14:49:45 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v5 1/2] i3c: move i3c_device_match_id to device.c and
 export it
Message-ID: <20190719144945.0a43b37f@pc-375.home>
In-Reply-To: <40addcc18ac82a3156cd86e153e2b4fc1de2fe54.1563533343.git.vitor.soares@synopsys.com>
References: <cover.1563533342.git.vitor.soares@synopsys.com>
 <40addcc18ac82a3156cd86e153e2b4fc1de2fe54.1563533343.git.vitor.soares@synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_054952_447789_5088A3FA 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Joao.Pinto@synopsys.com, rafael@kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, bbrezillon@kernel.org,
 linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
 lorenzo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Fri, 19 Jul 2019 13:19:04 +0200
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Some I3C device drivers need to know which entry matches the
> i3c_device object passed to the probe function
> 
> Let's move i3c_device_match_id() to device.c and export it so it can be
> used by drivers.
> 
> Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> ---
> Changes in v5:
>   Add kerneldoc
>   Improve commit message
> 
> Changes in v4:
>   None
> 
> Changes in v3:
>   Remove i3c_get_device_id
>   Move i3c_device_match_id from drivers/i3c/master.c to drivers/i3c/device.c
>   Export i3c_device_match_id
> 
> Changes in v2:
>   move this function to drivers/i3c/device.c
> 
>  drivers/i3c/device.c       | 53 ++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/i3c/master.c       | 45 ---------------------------------------
>  include/linux/i3c/device.h |  4 ++++
>  3 files changed, 57 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/i3c/device.c b/drivers/i3c/device.c
> index 69cc040..5349059 100644
> --- a/drivers/i3c/device.c
> +++ b/drivers/i3c/device.c
> @@ -201,6 +201,59 @@ struct i3c_device *dev_to_i3cdev(struct device *dev)
>  EXPORT_SYMBOL_GPL(dev_to_i3cdev);
>  
>  /**
> + * i3c_device_match_id() - Returns the I3C device match id in @i3cdev

			      Returns the i3c_device_id entry matching
			      @i3cdev

> + * @i3cdev: I3C device
> + * @id_table: I3C device match table
> + *
> + * Return: a pointer to I3C device id object
			   an i3c_device_id object or NULL if there's
no match.

> + */
> +const struct i3c_device_id *
> +i3c_device_match_id(struct i3c_device *i3cdev,
> +		    const struct i3c_device_id *id_table)
> +{
> +	struct i3c_device_info devinfo;
> +	const struct i3c_device_id *id;
> +
> +	i3c_device_get_info(i3cdev, &devinfo);
> +
> +	/*
> +	 * The lower 32bits of the provisional ID is just filled with a random
> +	 * value, try to match using DCR info.
> +	 */
> +	if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
> +		u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
> +		u16 part = I3C_PID_PART_ID(devinfo.pid);
> +		u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
> +
> +		/* First try to match by manufacturer/part ID. */
> +		for (id = id_table; id->match_flags != 0; id++) {
> +			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
> +			    I3C_MATCH_MANUF_AND_PART)
> +				continue;
> +
> +			if (manuf != id->manuf_id || part != id->part_id)
> +				continue;
> +
> +			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
> +			    ext_info != id->extra_info)
> +				continue;
> +
> +			return id;
> +		}
> +	}
> +
> +	/* Fallback to DCR match. */
> +	for (id = id_table; id->match_flags != 0; id++) {
> +		if ((id->match_flags & I3C_MATCH_DCR) &&
> +		    id->dcr == devinfo.dcr)
> +			return id;
> +	}
> +
> +	return NULL;
> +}
> +EXPORT_SYMBOL_GPL(i3c_device_match_id);
> +
> +/**
>   * i3c_driver_register_with_owner() - register an I3C device driver
>   *
>   * @drv: driver to register
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 5f4bd52..7667f84 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -270,51 +270,6 @@ static const struct device_type i3c_device_type = {
>  	.uevent = i3c_device_uevent,
>  };
>  
> -static const struct i3c_device_id *
> -i3c_device_match_id(struct i3c_device *i3cdev,
> -		    const struct i3c_device_id *id_table)
> -{
> -	struct i3c_device_info devinfo;
> -	const struct i3c_device_id *id;
> -
> -	i3c_device_get_info(i3cdev, &devinfo);
> -
> -	/*
> -	 * The lower 32bits of the provisional ID is just filled with a random
> -	 * value, try to match using DCR info.
> -	 */
> -	if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
> -		u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
> -		u16 part = I3C_PID_PART_ID(devinfo.pid);
> -		u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
> -
> -		/* First try to match by manufacturer/part ID. */
> -		for (id = id_table; id->match_flags != 0; id++) {
> -			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
> -			    I3C_MATCH_MANUF_AND_PART)
> -				continue;
> -
> -			if (manuf != id->manuf_id || part != id->part_id)
> -				continue;
> -
> -			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
> -			    ext_info != id->extra_info)
> -				continue;
> -
> -			return id;
> -		}
> -	}
> -
> -	/* Fallback to DCR match. */
> -	for (id = id_table; id->match_flags != 0; id++) {
> -		if ((id->match_flags & I3C_MATCH_DCR) &&
> -		    id->dcr == devinfo.dcr)
> -			return id;
> -	}
> -
> -	return NULL;
> -}
> -
>  static int i3c_device_match(struct device *dev, struct device_driver *drv)
>  {
>  	struct i3c_device *i3cdev;
> diff --git a/include/linux/i3c/device.h b/include/linux/i3c/device.h
> index 5ecb055..de102e4 100644
> --- a/include/linux/i3c/device.h
> +++ b/include/linux/i3c/device.h
> @@ -188,6 +188,10 @@ static inline struct i3c_driver *drv_to_i3cdrv(struct device_driver *drv)
>  struct device *i3cdev_to_dev(struct i3c_device *i3cdev);
>  struct i3c_device *dev_to_i3cdev(struct device *dev);
>  
> +const struct i3c_device_id *
> +i3c_device_match_id(struct i3c_device *i3cdev,
> +		    const struct i3c_device_id *id_table);
> +
>  static inline void i3cdev_set_drvdata(struct i3c_device *i3cdev,
>  				      void *data)
>  {


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
