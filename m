Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345B51A99E6
	for <lists+linux-i3c@lfdr.de>; Wed, 15 Apr 2020 12:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJaeI9iRtBwH4XPJODXMwZfp3DiTcowzFhbDTg6/VR4=; b=pkkTpQ73+M/rR7
	RfOg9PzNZQRaxxvrugczmQ7BE516l+/pwtnyeIvRCFC3haZB/3yaoKUBUpBeMOt3qGOsqRZaFCJeB
	YrRk0bJSkI9eYUOThYPYgtpM0aFOzDELKgwuw/xE1pTU7F23p41nBKllqi3qASvFbZsC2O1+KPhjD
	S3kjqOdEHjHFgfVS5dKsHOngSt0X5br6R+amgOJpmDgeIdWkEzrtM1TUZ5OinCnj3FCFrbKw9Qaza
	Ty9+M3UYopE9htZ6N1OPfdcEc1Vpmexowdu/vTNrugKwNRjQlkJkFdKm9qn9y5HN1c6Vr4bcLYSjQ
	tL4AL5ZYsJKN+eU1SBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOex9-0005zl-UY
	for lists+linux-i3c@lfdr.de; Wed, 15 Apr 2020 10:07:31 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOex7-0005yJ-Js
 for linux-i3c@lists.infradead.org; Wed, 15 Apr 2020 10:07:31 +0000
Received: from [88.147.20.223] (port=52218 helo=[192.168.77.62])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jOex2-009Eu1-UU; Wed, 15 Apr 2020 12:07:24 +0200
Subject: Re: [RFC PATCH v2 6/6] i2c: core: hand over reserved devices when
 requesting ancillary addresses
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-7-wsa+renesas@sang-engineering.com>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <610bbd01-e245-3320-c315-7a5c945a700d@lucaceresoli.net>
Date: Wed, 15 Apr 2020 12:07:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200318150059.21714-7-wsa+renesas@sang-engineering.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_030729_818430_95D20BBD 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.40.174.40 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jacopo Mondi <jacopo@jmondi.org>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran@bingham.xyz>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi,

On 18/03/20 16:00, Wolfram Sang wrote:
> With i2c_new_ancillary_address, we can check if the intended driver is
> requesting a reserved address. Update the function to do these checks.
> If the check passes, the "reserved" device will become a regular "dummy"
> device.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/i2c/i2c-core-base.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index 84464e439df5..81fb320de28d 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -974,7 +974,9 @@ struct i2c_client *i2c_new_ancillary_device(struct i2c_client *client,
>  						const char *name,
>  						u16 default_addr)
>  {
> -	struct device_node *np = client->dev.of_node;
> +	struct device_node *reserved_np, *np = client->dev.of_node;
> +	struct device *reserved_dev, *adapter_dev = &client->adapter->dev;
> +	struct i2c_client *reserved_client = NULL;
>  	u32 addr = default_addr;
>  	int i;
>  
> @@ -984,7 +986,25 @@ struct i2c_client *i2c_new_ancillary_device(struct i2c_client *client,
>  			of_property_read_u32_index(np, "reg", i, &addr);
>  	}
>  
> -	dev_dbg(&client->adapter->dev, "Address for %s : 0x%x\n", name, addr);
> +	dev_info(adapter_dev, "Address for %s : 0x%x\n", name, addr);

Here if we have two identical chips on the same bus, they probably will
both add an ancillary device with the same name. Then a message like:

  i2c i2c-0: ds90ub954-q1: Address for rxport0: 0x40

won't tell which ds90ub954-q1 device is using that address. I'd rather
disambiguate using something like:

  dev_info(adapter_dev, "%s: Address for %s: 0x%x\n",
           dev_name(&client->dev), name, addr);

Sure, this issue did exist before this patch, but since the line is
being promoted from dbg to info (which is OK), it's probably a good idea
to improve the content, perhaps in a separate patch.

Except for that, I tested the patch and it's working fine.

-- 
Luca

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
