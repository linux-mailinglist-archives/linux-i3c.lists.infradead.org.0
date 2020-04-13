Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098681A64D7
	for <lists+linux-i3c@lfdr.de>; Mon, 13 Apr 2020 11:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=It7f4jTdteJYcTzHV+g6wv6qazd4Lqqb+Wlajl7jXhk=; b=IAzK1g973sQzTD
	KG2gUMRA34PJhxO7KHU1/YLjg/+C6EfBjGZgbsVL7MpEn2uukZK0/WhK9ILP6/TEFU5wy66c6DOGm
	Shk3R0OZcpbNmuFUW+nBtvPRftyKmzym678CVywomwOIigjNTG70t4kdrHzjdQ6aJ8xcd+LAdZivK
	DkzQ3w6r8W49XPjjgpuF+UJjYet2ugOxdb5jGtXv1+7pW3rhY3RDaGt1iKcomq5UYmR4Geyw51x+2
	QHen0A04ihKZRXqwC5uZUL+V+SKOfi15j5088yhtVM7y80Vii21vjStjnj76sugisu7dmwUW4W5vh
	86bqhj1YnWgnvrOzQxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvoK-0005yY-MK
	for lists+linux-i3c@lfdr.de; Mon, 13 Apr 2020 09:55:24 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvoG-0005ny-Vg
 for linux-i3c@lists.infradead.org; Mon, 13 Apr 2020 09:55:22 +0000
Received: from [5.157.111.77] (port=45414 helo=[192.168.77.66])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jNvo9-00A9CE-It; Mon, 13 Apr 2020 11:55:13 +0200
Subject: Re: [RFC PATCH v2 5/6] i2c: of: mark a whole array of regs as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-6-wsa+renesas@sang-engineering.com>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <c4e41b0a-4b9a-0db9-94dc-bbbc2f013133@lucaceresoli.net>
Date: Mon, 13 Apr 2020 11:55:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200318150059.21714-6-wsa+renesas@sang-engineering.com>
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
X-CRM114-CacheID: sfid-20200413_025521_194864_8B06FBEB 
X-CRM114-Status: GOOD (  13.35  )
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
> Back then, 'reg' properties in I2C DT bindings only contained one
> address and this address was assigned a device and, thus, blocked.
> Meanwhile, chips using multiple addresses are common and the 'reg'
> property can be an array described by 'reg-names'. This code enhances
> I2C DT parsing, so it will reserve all addresses described in an array.
> They will be bound to the 'dummy' driver as 'reserved' iff the first
> address can be assigned successfully. If that is not the case, the array
> is not further considered. If one later address of the array can not be
> assigned, it will be reported but we don't bail out. The driver has to
> decide if that address is critical or not.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/i2c/i2c-core-of.c | 70 +++++++++++++++++++++++++--------------
>  1 file changed, 46 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/i2c/i2c-core-of.c b/drivers/i2c/i2c-core-of.c
> index f2d09ea0d336..67eb2cd305cf 100644
> --- a/drivers/i2c/i2c-core-of.c
> +++ b/drivers/i2c/i2c-core-of.c
> @@ -16,25 +16,18 @@
>  #include <linux/i2c.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/of_device.h>
>  #include <linux/sysfs.h>
>  
>  #include "i2c-core.h"
>  
> -int of_i2c_get_board_info(struct device_node *node, struct i2c_board_info *info)
> +static void of_i2c_decode_board_info(struct device_node *node, u32 addr,
> +				     bool first_addr, struct i2c_board_info *info)

While I confirm the patch looks generally OK, let me add the name of
this function is not quite self-explaining. The difference between "get"
and "decode" has nothing to do with the different actions these
functions do, i.e. the new function gets (or: decodes) info about  a
single address that is passed, the old "get" function gets the info for
the first address.

I'd suggest the new function be named of_i2c_get_board_info_one_addr or
similar. Not super nice, a bit long, but self-explanatory.

-- 
Luca

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
