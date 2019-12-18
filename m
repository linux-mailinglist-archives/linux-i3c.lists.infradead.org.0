Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6D91241A0
	for <lists+linux-i3c@lfdr.de>; Wed, 18 Dec 2019 09:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBJ3zkAg8yxMFoYSkIQzq641aExbbNNsU8/mRQG0+II=; b=PC2gGWnQmAaIcN
	KsgiYcfqvggnM+7lQxv+xFNQDMKXTHnD75vLrfmyI1Wvhs0ltW30/YQP52U7j5eN7r05tm6HGSL6K
	9n2rPEnsQnhuha/Ac7HdB13QiTPbLvUiKKSKeIYzEaKqti6X0CG/NKm/uPo3OBgUfNBubayk/RlmJ
	1f4PX9X4VEndsPs2rfvVvcS6hTFTPUQjNDZDPbmHR23ZN+7rmfnlqQxyWKpaKu+T8/AQsxIsCw15l
	rh5MHPjrdNwNn5tS09lEa/LozNjYgSbYD1JhdRWwW77abHmRC6+ylvRC2nXZNjvVOfSlQspGvjV6p
	EFfLnyKYzg2euFMdP+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUgW-0006zU-0o
	for lists+linux-i3c@lfdr.de; Wed, 18 Dec 2019 08:27:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUgT-0006yV-1k
 for linux-i3c@lists.infradead.org; Wed, 18 Dec 2019 08:27:54 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B9B71291FC9;
 Wed, 18 Dec 2019 08:27:49 +0000 (GMT)
Date: Wed, 18 Dec 2019 09:27:46 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] i3c: make 'i3c_bus_set_mode' static
Message-ID: <20191218092746.28ebf54c@collabora.com>
In-Reply-To: <20191217120150.2134326-1-ben.dooks@codethink.co.uk>
References: <20191217120150.2134326-1-ben.dooks@codethink.co.uk>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_002753_247889_ADF31FA2 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Ben,

On Tue, 17 Dec 2019 12:01:50 +0000
"Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk> wrote:

> The function i3c_bus_set_mode() is not declared or
> exported, so make it static to avoid the following
> warning:
> 
> drivers/i3c/master.c:530:5: warning: symbol 'i3c_bus_set_mode' was not declared. Should it be static?
> 
> If it is needed in the future, then it should be declared
> and suitably exported.
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Thanks for this patch, but I already a similar fix [1].

Regards,

Boris

[1]https://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git/commit/?h=i3c/next&id=026d8450d499904f4712676e2149cdb758d0a601

> ---
> Cc: Boris Brezillon <bbrezillon@kernel.org>
> Cc: linux-i3c@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/i3c/master.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 043691656245..7f8f896fa0c3 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -527,8 +527,8 @@ static const struct device_type i3c_masterdev_type = {
>  	.groups	= i3c_masterdev_groups,
>  };
>  
> -int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
> -		     unsigned long max_i2c_scl_rate)
> +static int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
> +			    unsigned long max_i2c_scl_rate)
>  {
>  	struct i3c_master_controller *master = i3c_bus_to_i3c_master(i3cbus);
>  


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
