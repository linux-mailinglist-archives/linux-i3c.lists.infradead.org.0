Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0E6162239
	for <lists+linux-i3c@lfdr.de>; Tue, 18 Feb 2020 09:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UHTCwHLBENG2dnCK5QlBA3JiigqooCLA5M55+LHqNo=; b=ZWuvz/6dzHpPlz
	YW9PNv47HZ1kVCns7qRyQVMQbYaWZ6nDSyI/OJnwEvy/IgXCN1+pqIYup7gyGTsjIbinM/ynXHEEl
	icq1M+CinbXLxog3LwQxH/++qS90alo3YSfvjbbLD8awqMxhjYH5PtZEHUTkWACGI9jOA6BFLbBHo
	2l5I3rv3o/54fm6Q69xuahr+aPr2yGNdkWD7hUHKB3myeA2blRWPcfRbSV/WeJRqFi+ZOizQchHhC
	jQMMC82IWcEfrREFsa9HabtfJpTKsIbhCnEQTBmJ9LWcphCcf3/1gKoaPDinJLH0hGindhqoKZECJ
	e9To4vNbAEuRdY1pEU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yDS-0000DL-42
	for lists+linux-i3c@lfdr.de; Tue, 18 Feb 2020 08:26:50 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3quH-0008Bo-J6
 for linux-i3c@lists.infradead.org; Tue, 18 Feb 2020 00:38:35 +0000
Received: from [192.168.0.20]
 (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 19F741220;
 Tue, 18 Feb 2020 01:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1581986303;
 bh=t96zGplTNE1Od5PyAQYJfaxLCz9A1duSgDyDNJWWebc=;
 h=Subject:To:Cc:References:Reply-To:From:Date:In-Reply-To:From;
 b=lgUrIlK7CXLBIDD8jeHqVqMLVVhpPFWPVPN5lC+oF5xXEbcuMFly3HiCvV1WuJSA9
 +Z7lf00+1+SmCjvcvpIrL57P3fGB47CdaeHOcP754+1XcArU+2zNf1tidLzlEFcM/C
 aspwgjhkcsw0rtRaLqBfXN/YOI0WF4ehMRkwJFfo=
Subject: Re: [PATCH] i3c: master: no need to iterate master device twice
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-i3c@lists.infradead.org
References: <20200214145853.24762-1-wsa+renesas@sang-engineering.com>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Organization: Ideas on Board
Message-ID: <1258dbb3-f9f3-0d3e-77e0-094e6f1bc633@ideasonboard.com>
Date: Tue, 18 Feb 2020 00:38:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200214145853.24762-1-wsa+renesas@sang-engineering.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_163833_835519_2D702A24 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Mailman-Approved-At: Tue, 18 Feb 2020 00:26:41 -0800
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
Cc: linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Wolfram,

On 14/02/2020 14:58, Wolfram Sang wrote:
> We already have the master device in a variable, reuse it.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
> 
> Found while refactoring of_i2c_get_board_info() and checking its users.
> 
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
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
