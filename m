Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1098918B3A3
	for <lists+linux-i3c@lfdr.de>; Thu, 19 Mar 2020 13:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BCpKpD8KZIFNuZVJM7zD158PSmolQrvXis03tKdibA=; b=DZSMg4VP2ncapa
	PqEl5YIlWbWVX26Vf7B3iZH/q/cSdehU5uYCL5y7BoTec/QMrHKeSWN9fLRaNuvo7RRqP42bRtqpx
	PEB1hpTMfc4uFVhg3Wt+hdzPcgRASL0xYgQCHuCNnS7S2HeF+t3CW4fDoYGNVymCfpydckWR46azi
	Bm8s0ZWV4R6WSpG5wfyZZZADW9r90FWl9A/fSKS0R95nM3XkSjhMnx7XkolT9dIWWjUZpneZJqybx
	+MaiyWE5D0Pdg77/eYIK6KMre8aypIH9rxk6rXyTmZ3NOenzyX7B++lQcoJXe6ZJqJsdnCDyWVxhu
	KqE/o+7f7uVJWcNbRl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuUW-0003ND-QT
	for lists+linux-i3c@lfdr.de; Thu, 19 Mar 2020 12:41:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuUU-0003Fa-6E
 for linux-i3c@lists.infradead.org; Thu, 19 Mar 2020 12:41:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 56D60296D4F;
 Thu, 19 Mar 2020 12:41:34 +0000 (GMT)
Date: Thu, 19 Mar 2020 13:41:31 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [RFC PATCH v2 3/6] i2c: of: remove superfluous parameter from
 exported function
Message-ID: <20200319134131.72715b0f@collabora.com>
In-Reply-To: <20200318150059.21714-4-wsa+renesas@sang-engineering.com>
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-4-wsa+renesas@sang-engineering.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_054138_364093_18E5B156 
X-CRM114-Status: GOOD (  17.80  )
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
Cc: Jacopo Mondi <jacopo@jmondi.org>, Luca Ceresoli <luca@lucaceresoli.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran@bingham.xyz>, linux-i2c@vger.kernel.org,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Wed, 18 Mar 2020 16:00:56 +0100
Wolfram Sang <wsa+renesas@sang-engineering.com> wrote:

> 'dev' is only used for printing an error message. However, that
> information is not needed because '%pOF' fully describes the location of
> the error. Drop the 'dev' and remove the superfluous parameter.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/i2c/i2c-core-of.c | 7 +++----
>  drivers/i3c/master.c      | 2 +-
>  include/linux/i2c.h       | 6 ++----
>  3 files changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
> index d8d111ad6c85..710704cd583e 100644
> --- a/drivers/i2c/i2c-core-of.c
> +++ b/drivers/i2c/i2c-core-of.c
> @@ -19,8 +19,7 @@
>  
>  #include "i2c-core.h"
>  
> -int of_i2c_get_board_info(struct device *dev, struct device_node *node,
> -			  struct i2c_board_info *info)
> +int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
>  {
>  	u32 addr;
>  	int ret;
> @@ -29,7 +28,7 @@ int of_i2c_get_board_info(struct device *dev, struct device_node *node,
>  
>  	ret = of_property_read_u32(node, "reg", &addr);
>  	if (ret) {
> -		dev_err(dev, "of_i2c: invalid reg on %pOF\n", node);
> +		pr_err("of_i2c: invalid reg on %pOF\n", node);
>  		return ret;
>  	}
>  
> @@ -69,7 +68,7 @@ static struct i2c_client *of_i2c_register_device(struct i2c_adapter *adap,
>  
>  	dev_dbg(&adap->dev, "of_i2c: register %pOF\n", node);
>  
> -	ret = of_i2c_get_board_info(&adap->dev, node, &info);
> +	ret = of_i2c_get_board_info(node, &info);
>  	if (ret)
>  		return ERR_PTR(ret);
>  
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 7f8f896fa0c3..cc0549a9fc64 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -1943,7 +1943,7 @@ of_i3c_master_add_i2c_boardinfo(struct i3c_master_controller *master,
>  	if (!boardinfo)
>  		return -ENOMEM;
>  
> -	ret = of_i2c_get_board_info(dev, node, &boardinfo->base);
> +	ret = of_i2c_get_board_info(node, &boardinfo->base);
>  	if (ret)
>  		return ret;
>  
> diff --git a/include/linux/i2c.h b/include/linux/i2c.h
> index f834687989f7..d84aaf0d83d5 100644
> --- a/include/linux/i2c.h
> +++ b/include/linux/i2c.h
> @@ -942,8 +942,7 @@ const struct of_device_id
>  *i2c_of_match_device(const struct of_device_id *matches,
>  		     struct i2c_client *client);
>  
> -int of_i2c_get_board_info(struct device *dev, struct device_node *node,
> -			  struct i2c_board_info *info);
> +int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info);
>  
>  #else
>  
> @@ -969,8 +968,7 @@ static inline const struct of_device_id
>  	return NULL;
>  }
>  
> -static inline int of_i2c_get_board_info(struct device *dev,
> -					struct device_node *node,
> +static inline int of_i2c_get_board_info(struct device_node *node,
>  					struct i2c_board_info *info)
>  {
>  	return -ENOTSUPP;


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
