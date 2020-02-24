Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC8D169FC5
	for <lists+linux-i3c@lfdr.de>; Mon, 24 Feb 2020 09:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uc8jAE4Jh1SS2xv5HP5GwGiXgYr3IXoWQeIK63JhPFc=; b=Af6Jv/UbbVxd7B
	5ST/q5Yik1JnUuc4X7fhOQbN5tujIdOgft4fSnJTRYZQ6yx6W/n6VgAiVaMJuL+d+9t3Dlf7ByExA
	NMlRpRHNpYX/ZU0UiVj2ojpwKKE3Yb5pys8msi0Dq7nI67iFDRW7TB/3lGiRxFNbtyJtkl5ZzAq4R
	H9Kzu9XC5wER+L+zNMfJO3LXFLlx2VZ/Y50gCAWjmnaO0vm2FBRwov5EhddbV7GaVCAFJ2oEi0yo7
	8Js/Z3AhGqydGf+PUwZ7751/yAbUtkuvOkixrhwsGBgVwHNG7We+qi69bmQ7YRTlDWhmt7i6TmXIm
	WFRTsiddtH8q56LWIW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68r5-0000j2-Ug
	for lists+linux-i3c@lfdr.de; Mon, 24 Feb 2020 08:12:43 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68r3-0000hE-7h
 for linux-i3c@lists.infradead.org; Mon, 24 Feb 2020 08:12:42 +0000
Received: from [109.168.11.45] (port=54830 helo=[192.168.101.73])
 by hostingweb31.netsons.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <luca@lucaceresoli.net>)
 id 1j68r0-000fay-0z; Mon, 24 Feb 2020 09:12:38 +0100
Subject: Re: [RFC PATCH 4/7] i2c: of: remove superfluous parameter from
 exported function
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-5-wsa+renesas@sang-engineering.com>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <264977e0-f45c-759d-3bc3-5bb23e97bf5a@lucaceresoli.net>
Date: Mon, 24 Feb 2020 09:12:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220172403.26062-5-wsa+renesas@sang-engineering.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca+lucaceresoli.net/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_001241_450660_BBEAC135 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Jacopo Mondi <jacopo@jmondi.org>,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-renesas-soc@vger.kernel.org, Kieran Bingham <kieran@bingham.xyz>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi,

On 20/02/20 18:24, Wolfram Sang wrote:
> 'dev' is only used for printing an error message. However, that
> information is not needed because '%pOF' fully describes the location of
> the error. Drop the 'dev' and remove the superfluous parameter.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>

-- 
Luca

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
