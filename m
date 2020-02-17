Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BA01614C4
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 15:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8U0IAP/dkd2U5hebF7hc/VCjE2B+GHpSvZQ+nXtJMA=; b=qpYztGaM/HueCl
	mRGnfxek2Fu/hW/KM3GBeyGS13FrW1oFkk2dILIyROl8BJ77+45/6TW8T8Tu6wGrLD2iu9E0nzM0M
	z2SVrMp9R1m/ZEwHyYLUPAXfMDgKlcrkRTALMrJY3LIf3oj9CyfLjhO4M+S79xZ2zjD3nuyIpudhF
	Lwlv5ROCnNJzjhZaecBh1R3GVw6YIISEHzU6VpqlptukjvNW5x5EFFZ/LIb7ZHQFgLdwic9Du0+m1
	gj5D5koYGZpXH/QSLs+sd+qvqxzIa356Mt1e7kkeQIgSrLVlEZCmuSWvWEoZStUDMlXTVVj5IQOp0
	KdqtCaHEvYq+mLXnHEVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hTu-0003Lj-Ct
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 14:34:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hTr-0003Kf-2h
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 14:34:40 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3346D2938D7;
 Mon, 17 Feb 2020 14:34:35 +0000 (GMT)
Date: Mon, 17 Feb 2020 15:34:31 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Conor Culhane <conor.culhane@silvaco.com>
Subject: Re: [PATCH] Add a driver for Silvaco I3C Dual-Role Master IP
Message-ID: <20200217153431.06d695d0@collabora.com>
In-Reply-To: <20200211154332.21764-1-conor.culhane@silvaco.com>
References: <20200211154332.21764-1-conor.culhane@silvaco.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_063439_248215_D2234F2A 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-i3c@lists.infradead.org, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hello Conor,

On Tue, 11 Feb 2020 10:43:32 -0500
Conor Culhane <conor.culhane@silvaco.com> wrote:

Can you add a commit message here?


> Signed-off-by: Conor Culhane <conor.culhane@silvaco.com>
> ---
>  drivers/i3c/master/Kconfig          |    8 +
>  drivers/i3c/master/Makefile         |    1 +
>  drivers/i3c/master/svc-i3c-master.c | 2863 +++++++++++++++++++++++++++

There are several coding-style issues (camel case, use of typedefs,
...). Can you please run 'scripts/checkpatch.pl --strict' on your patch
and post a new version with all those coding-style issues fixed?

Thanks,

Boris

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
