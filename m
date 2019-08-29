Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C581A20DE
	for <lists+linux-i3c@lfdr.de>; Thu, 29 Aug 2019 18:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOl1E+Abiaec6LWeJdIMw32GJYRNhcpF3OfjC413lcA=; b=lp58ekETJLEUtW
	shTTNifcA0KXsAT3rrEwHVmjksYzLp7NaSnHydOxCmbvVEzSIZXdh7tr42mIzVR/i5D+0MQRWaSq2
	O4193lD5N/scW/7x0EdQliwOZl6ZlXIakPkIJUs9Omtudl5AQ1IOU3hkNtjhmFOwugPdnZW6ipGra
	CcAfA8QP3omEqRjb6cyaCXQsTYsm8eUBKrflAXYwg1mng+48KDtTV68fG0ezfsuPLdcNXb5Hq94Sd
	6KB0jEjQW/DdalNlQoHBAt1m04TIpgNOLZ1ICxnoCk4pJT4pHJEhr08pPvFMBdirvZreEChIJPHeb
	cRoHeY+qnh4J7pnfsGOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NHE-0002JB-1t
	for lists+linux-i3c@lfdr.de; Thu, 29 Aug 2019 16:28:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NHA-0002IY-Mt
 for linux-i3c@lists.infradead.org; Thu, 29 Aug 2019 16:27:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9815428D5E4;
 Thu, 29 Aug 2019 17:27:53 +0100 (BST)
Date: Thu, 29 Aug 2019 18:27:47 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH 2/4] i3c: master: Check if devices have
 i3c_dev_boardinfo on i3c_master_add_i3c_dev_locked()
Message-ID: <20190829182747.3a163b8c@collabora.com>
In-Reply-To: <3e21481ddf53ea58f5899df6ec542b79b8cbcd68.1567071213.git.vitor.soares@synopsys.com>
References: <cover.1567071213.git.vitor.soares@synopsys.com>
 <3e21481ddf53ea58f5899df6ec542b79b8cbcd68.1567071213.git.vitor.soares@synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_092757_010532_300B1797 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Joao.Pinto@synopsys.com,
 bbrezillon@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 12:19:33 +0200
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> The I3C devices described in DT might not be attached to the master which
> doesn't allow to assign a specific dynamic address.

Dynamic address assignment is not the only problem here (see my
comment about missing ->of_node info). I would simply say that
newdev->boardinfo assignment was missing in
i3c_master_add_i3c_dev_locked() which is already a bug by itself.

I would also change the subject to

"i3c: master: Make sure ->boardinfo is initialized in add_i3c_dev_locked()"

> 
> This patch check if a device has i3c_dev_boardinfo and add it to
> i3c_dev_desc structure. In this conditions, the framework will try to
> assign the i3c_dev_boardinfo->init_dyn_addr even if stactic address = 0.

I would get rid of this explanation and add Fixes/Cc-stable tags.

> 
> Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> ---
>  drivers/i3c/master.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 4d29e1f..85fbda6 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -1795,6 +1795,23 @@ i3c_master_search_i3c_dev_duplicate(struct i3c_dev_desc *refdev)
>  	return NULL;
>  }
>  
> +static struct i3c_dev_boardinfo *
> +i3c_master_search_i3c_boardinfo(struct i3c_dev_desc *dev)
> +{
> +	struct i3c_master_controller *master = i3c_dev_get_master(dev);
> +	struct i3c_dev_boardinfo *boardinfo;
> +
> +	if (dev->boardinfo)
> +		return NULL;
> +
> +	list_for_each_entry(boardinfo, &master->boardinfo.i3c, node) {
> +		if (dev->info.pid == boardinfo->pid)
> +			return boardinfo;
> +	}
> +
> +	return NULL;
> +}

Can we instead have:

static void i3c_master_init_i3c_dev_boardinfo(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = i3c_dev_get_master(dev);

	list_for_each_entry(boardinfo, &master->boardinfo.i3c, node) {
		if (dev->info.pid == boardinfo->pid)
			dev->boardinfo = boardinfo;
	}
}

> +
>  /**
>   * i3c_master_add_i3c_dev_locked() - add an I3C slave to the bus
>   * @master: master used to send frames on the bus
> @@ -1816,6 +1833,7 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
>  {
>  	struct i3c_device_info info = { .dyn_addr = addr };
>  	struct i3c_dev_desc *newdev, *olddev;
> +	struct i3c_dev_boardinfo *boardinfo;
>  	u8 old_dyn_addr = addr, expected_dyn_addr;
>  	struct i3c_ibi_setup ibireq = { };
>  	bool enable_ibi = false;
> @@ -1875,6 +1893,10 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
>  	if (ret)
>  		goto err_detach_dev;
>  
> +	boardinfo = i3c_master_search_i3c_boardinfo(newdev);
> +	if (boardinfo)
> +		newdev->boardinfo = boardinfo;
> +

And here:

	i3c_master_init_i3c_dev_boardinfo(newdev);

>  	/*
>  	 * Depending on our previous state, the expected dynamic address might
>  	 * differ:


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
