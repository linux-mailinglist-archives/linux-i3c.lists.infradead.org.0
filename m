Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CD51A9770
	for <lists+linux-i3c@lfdr.de>; Wed, 15 Apr 2020 10:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:References:To:From:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pcwb2IeUNO2tqIJuiCBzMTMNiax/u1VML4UddDY+k0=; b=qFGidH2FBWUB5p
	3UJSiMRFZaQLSmH1Udr2HVN1lkxF6cjPBfI/ShV4qhHCGG7cfXu24OMVAAGoNJEw/0lw6piZ4qsRN
	t13slX5K5DTEoz+gBcDkKG7Kt/z8qxxHlBfhfM4KW+o/s3QM4LpO07zxonJSiJ0vip26+c0TqoAHk
	7OI5mrb/G82AfVTN+GR4LpYonXI8YEvqeOWedSpDGzXX2EM7IznJwKdjJhAkvMIkvSC9MhAwDpUur
	aJz7iopclbKfVHryUk5T7YuTNeW4LDeqZKoaDrvsB8EFhqgG5emk8TlP0E/EfweUHcmQRSIZr3H50
	Ws5LD8NN42qfOARw+YzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdkT-0007KI-1f
	for lists+linux-i3c@lfdr.de; Wed, 15 Apr 2020 08:50:21 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdkP-0007Jn-Nz
 for linux-i3c@lists.infradead.org; Wed, 15 Apr 2020 08:50:19 +0000
Received: from [192.168.0.20]
 (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79A4E2D1;
 Wed, 15 Apr 2020 10:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586940616;
 bh=gou09fnjFJvhR1x9fvB0QuYMTNpfnFWwyMLgGzqgFXc=;
 h=Subject:From:To:Cc:References:Reply-To:Date:In-Reply-To:From;
 b=mciyrlifwnsfZbPwmMECsp60Sa5GaH5OEbXqLC3v7CwL3kuwpWl5iLGhLhSPZPkGu
 8LTMN31DTnFJSHR3aPAjRJRoRap9fhmjaYqBr7gszmO+WsJTZoeax/RW3rwll5hgPe
 33v+ipaQY6FkcyNH4WXrrqE9fW3o5Iu2Mstd/LyM=
Subject: Re: [RFC PATCH v2 4/6] i2c: of: error message unification
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-5-wsa+renesas@sang-engineering.com>
 <7014c94a-bb89-b282-52ee-49b42ab5aac1@bingham.xyz>
Organization: Ideas on Board
Message-ID: <4a63e7f5-8a0c-a9f1-640b-2f33c0076160@ideasonboard.com>
Date: Wed, 15 Apr 2020 09:50:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7014c94a-bb89-b282-52ee-49b42ab5aac1@bingham.xyz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_015017_937821_B5B64B09 
X-CRM114-Status: GOOD (  16.37  )
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

On 15/04/2020 09:17, Kieran Bingham wrote:
> Hi Wolfram,
> 
> On 18/03/2020 15:00, Wolfram Sang wrote:
>> - don't prefix the device if %pOF is provided. That information is
>>   enough.
>> - move the prefix to pr_fmt
>> - change prefix from "of_i2c" to "i2c_of" because the code was moved
>>   out of the of-domain long ago
>> - drop error string for callers of of_i2c_register_device because it
>>   already reports enough (thanks to Tang Bin for the report!)
>>
>> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> 
>> ---
>>  drivers/i2c/i2c-core-of.c | 18 +++++++-----------
>>  1 file changed, 7 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
>> index 710704cd583e..f2d09ea0d336 100644
>> --- a/drivers/i2c/i2c-core-of.c
>> +++ b/drivers/i2c/i2c-core-of.c
>> @@ -8,6 +8,8 @@
>>   * Copyright (C) 2013, 2018 Wolfram Sang <wsa@the-dreams.de>
>>   */
>>  
>> +#define pr_fmt(fmt) "i2c_of: " fmt
>> +
>>  #include <dt-bindings/i2c/i2c.h>
>>  #include <linux/device.h>
>>  #include <linux/err.h>
>> @@ -28,7 +30,7 @@ int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)


Perhaps not directly needed by this patch but,

at some point will you rename of_i2c_* to i2c_of_* ?


>>  
>>  	ret = of_property_read_u32(node, "reg", &addr);
>>  	if (ret) {
>> -		pr_err("of_i2c: invalid reg on %pOF\n", node);
>> +		pr_err("invalid reg on %pOF\n", node);
>>  		return ret;
>>  	}
>>  
>> @@ -66,7 +68,7 @@ static struct i2c_client *of_i2c_register_device(struct i2c_adapter *adap,
>>  	struct i2c_board_info info;
>>  	int ret;
>>  
>> -	dev_dbg(&adap->dev, "of_i2c: register %pOF\n", node);
>> +	pr_debug("register %pOF\n", node);
>>  
>>  	ret = of_i2c_get_board_info(node, &info);
>>  	if (ret)
>> @@ -74,7 +76,7 @@ static struct i2c_client *of_i2c_register_device(struct i2c_adapter *adap,
>>  
>>  	client = i2c_new_client_device(adap, &info);
>>  	if (IS_ERR(client))
>> -		dev_err(&adap->dev, "of_i2c: Failure registering %pOF\n", node);
>> +		pr_err("failure registering %pOF (%ld)\n", node, PTR_ERR(client));
>>  
>>  	return client;
>>  }
>> @@ -88,7 +90,7 @@ void of_i2c_register_devices(struct i2c_adapter *adap)
>>  	if (!adap->dev.of_node)
>>  		return;
>>  
>> -	dev_dbg(&adap->dev, "of_i2c: walking child nodes\n");
>> +	dev_dbg(&adap->dev, "walking child nodes\n");
>>  
>>  	bus = of_get_child_by_name(adap->dev.of_node, "i2c-bus");
>>  	if (!bus)
>> @@ -99,12 +101,8 @@ void of_i2c_register_devices(struct i2c_adapter *adap)
>>  			continue;
>>  
>>  		client = of_i2c_register_device(adap, node);
>> -		if (IS_ERR(client)) {
>> -			dev_err(&adap->dev,
>> -				 "Failed to create I2C device for %pOF\n",
>> -				 node);
>> +		if (IS_ERR(client))
>>  			of_node_clear_flag(node, OF_POPULATED);
>> -		}
>>  	}
>>  
>>  	of_node_put(bus);
>> @@ -243,8 +241,6 @@ static int of_i2c_notify(struct notifier_block *nb, unsigned long action,
>>  
>>  		client = of_i2c_register_device(adap, rd->dn);
>>  		if (IS_ERR(client)) {
>> -			dev_err(&adap->dev, "failed to create client for '%pOF'\n",
>> -				 rd->dn);
>>  			put_device(&adap->dev);
>>  			of_node_clear_flag(rd->dn, OF_POPULATED);
>>  			return notifier_from_errno(PTR_ERR(client));
>>
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
