Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052071A95AE
	for <lists+linux-i3c@lfdr.de>; Wed, 15 Apr 2020 10:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e83/6I+es+/9KuVz9t1zed23n+ccMxur/g0xTagHo/4=; b=EZJu9DO1R65PT/
	sBeMAo/TRnUmn466DVV9ATGBD73YJoH7nkZR6xeZXfBCKApZef8+i1H2bAxudQbvmBuS66FXz4vkR
	Tdv55RAiji/I4b27jgTS0cDlnN+EwJPC3FgVgWuUt/NuzGDGwrL//gPqwtyHzZNGCw7IbiJbp7akt
	5dXKQJHxjuTlbyjRTt/X/xtZ0M6xxWoPUN0yZH0AkutkaGJ2X2xOExivYHVq/d2L6QlQwYzdv22ph
	0ExRnsMvbLyBnn5wGdWScDMWAyX144P2OaHpUHBml3XC+53zZ+AOB/i5IF6CYvpnCmK1qnmCsi1Aq
	3JEbnGUoeYgmRZvWNSug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd72-0005VL-Oa
	for lists+linux-i3c@lfdr.de; Wed, 15 Apr 2020 08:09:36 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd70-0005Ux-7o
 for linux-i3c@lists.infradead.org; Wed, 15 Apr 2020 08:09:35 +0000
Received: from [192.168.0.20]
 (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 687D42D1;
 Wed, 15 Apr 2020 10:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586938172;
 bh=0M0sxbl5iAtIUwwTWGS+6Es0MSqO8PrYDHJ+hWBnTkg=;
 h=Subject:To:Cc:References:Reply-To:From:Date:In-Reply-To:From;
 b=WZ/854G9YuTrymYtHbFXpQrUkdQ2q3ZiB+UAszByRERfHLpH489og3N1CNxbl+UuZ
 eA7KtivXXJ0zrqiTyV1XBAXCUOAQPXxa4T1qkkCfzuUwk45o4507K4aDwJ1Eio7Ax6
 OnD1tN3cmzFt8gyPQWMgCiq/EX3ZKahVyZBMbIuQ=
Subject: Re: [RFC PATCH v2 1/6] i2c: use DEFINE for the dummy driver name
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-2-wsa+renesas@sang-engineering.com>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Organization: Ideas on Board
Message-ID: <fb32a47b-50e0-aac2-7e25-fbaa3f578931@ideasonboard.com>
Date: Wed, 15 Apr 2020 09:09:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200318150059.21714-2-wsa+renesas@sang-engineering.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010934_439717_D4A7745F 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: kieran.bingham+renesas@ideasonboard.com
Cc: Jacopo Mondi <jacopo@jmondi.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Luca Ceresoli <luca@lucaceresoli.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Wolfram,

On 18/03/2020 15:00, Wolfram Sang wrote:
> We use it in multiple places, so make sure it is consistent whenever we
> need to change it.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
>  drivers/i2c/i2c-core-base.c | 8 ++++----
>  drivers/i2c/i2c-core.h      | 2 ++
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index cefad0881942..3d7b8a00a7d9 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -853,7 +853,7 @@ EXPORT_SYMBOL_GPL(i2c_unregister_device);
>  
>  
>  static const struct i2c_device_id dummy_id[] = {
> -	{ "dummy", 0 },
> +	{ I2C_DUMMY_DRV_NAME, 0 },
>  	{ },
>  };
>  
> @@ -869,7 +869,7 @@ static int dummy_remove(struct i2c_client *client)
>  }
>  
>  static struct i2c_driver dummy_driver = {
> -	.driver.name	= "dummy",
> +	.driver.name	= I2C_DUMMY_DRV_NAME,
>  	.probe		= dummy_probe,
>  	.remove		= dummy_remove,
>  	.id_table	= dummy_id,
> @@ -896,7 +896,7 @@ static struct i2c_driver dummy_driver = {
>  struct i2c_client *i2c_new_dummy_device(struct i2c_adapter *adapter, u16 address)
>  {
>  	struct i2c_board_info info = {
> -		I2C_BOARD_INFO("dummy", address),
> +		I2C_BOARD_INFO(I2C_DUMMY_DRV_NAME, address),
>  	};
>  
>  	return i2c_new_client_device(adapter, &info);
> @@ -1487,7 +1487,7 @@ static void i2c_do_del_adapter(struct i2c_driver *driver,
>  static int __unregister_client(struct device *dev, void *dummy)
>  {
>  	struct i2c_client *client = i2c_verify_client(dev);
> -	if (client && strcmp(client->name, "dummy"))
> +	if (client && strcmp(client->name, I2C_DUMMY_DRV_NAME))
>  		i2c_unregister_device(client);
>  	return 0;
>  }
> diff --git a/drivers/i2c/i2c-core.h b/drivers/i2c/i2c-core.h
> index 517d98be68d2..fb89fabf84d3 100644
> --- a/drivers/i2c/i2c-core.h
> +++ b/drivers/i2c/i2c-core.h
> @@ -22,6 +22,8 @@ int i2c_check_7bit_addr_validity_strict(unsigned short addr);
>  int i2c_dev_irq_from_resources(const struct resource *resources,
>  			       unsigned int num_resources);
>  
> +#define I2C_DUMMY_DRV_NAME "dummy"
> +
>  /*
>   * We only allow atomic transfers for very late communication, e.g. to send
>   * the powerdown command to a PMIC. Atomic transfers are a corner case and not
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
