Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59EB31A85
	for <lists+linux-i3c@lfdr.de>; Sat,  1 Jun 2019 10:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsN2y6G3Q/t7DO9CIuPot1XlKQ/p3JlotZYVYPMJcfY=; b=MUdOYzxRDKAh2A
	Sw0jYW3yxf5T/cLxzAwyIxa0Xk8VXnk0mJhusEyN7YwW9p7vQkVN1Sd7yDcf9uf3VAuNCOUHWVasR
	maq+vXilof6x7Nt/sKp2EobXfl/eOO0AOrsbzIhbQcKqhthvgQDu3/zYL6+0d59P12nVDqOI+uJkT
	w/eLaWFaoKvZ6eRKp0fJ4AF9kOOByhHuI2NcaxRLSduCtZemMh0ScVXLH0KIK+64fQvDUyRCbmAEP
	HUWQJ98mBFjjO+Xi+YCT311bnUiARhLqLuD7fJ4G12TC+2cCbHvN8I0q4NDa0biAHVT+ZWNIEv310
	vWG7g0SkbTXJICQ2l/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzEV-0007Tb-Ga
	for lists+linux-i3c@lfdr.de; Sat, 01 Jun 2019 08:19:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWzES-0007TG-Vz
 for linux-i3c@lists.infradead.org; Sat, 01 Jun 2019 08:19:18 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BA44E28A1F8;
 Sat,  1 Jun 2019 09:19:15 +0100 (BST)
Date: Sat, 1 Jun 2019 10:19:12 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] i3c: master: Use struct_size() helper
Message-ID: <20190601101912.2a609581@collabora.com>
In-Reply-To: <20190531173532.GA7141@embeddedor>
References: <20190531173532.GA7141@embeddedor>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_011917_163619_C3BE33EB 
X-CRM114-Status: GOOD (  16.54  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Fri, 31 May 2019 12:35:32 -0500
"Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote:

> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes, in particular in the
> context in which this code is being used.
> 
> So, replace the following form:
> 
> sizeof(*defslvs) + ((ndevs - 1) * sizeof(struct i3c_ccc_dev_desc))
> 
> with:
> 
> struct_size(defslvs, slaves, ndevs - 1)
> 
> This code was detected with the help of Coccinelle.
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/i3c/master.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index b9d2b88928e1..923b04052038 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -924,9 +924,8 @@ int i3c_master_defslvs_locked(struct i3c_master_controller *master)
>  		ndevs++;
>  
>  	defslvs = i3c_ccc_cmd_dest_init(&dest, I3C_BROADCAST_ADDR,
> -					sizeof(*defslvs) +
> -					((ndevs - 1) *
> -					 sizeof(struct i3c_ccc_dev_desc)));
> +					struct_size(defslvs, slaves,
> +					ndevs - 1));

ndev - 1 should be aligned on the struct_size open parens, or even
better, be put on one line since it seems to fit the 80-chars limit:

defslvs = i3c_ccc_cmd_dest_init(&dest, I3C_BROADCAST_ADDR,
				struct_size(defslvs, slaves, ndevs - 1));


>  	if (!defslvs)
>  		return -ENOMEM;
>  


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
