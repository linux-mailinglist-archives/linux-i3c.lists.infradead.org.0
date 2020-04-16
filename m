Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B881AC747
	for <lists+linux-i3c@lfdr.de>; Thu, 16 Apr 2020 16:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCCKFlWnZPAFEPqUtGZL0mt8Qr0NDQzQHCKg2oABvFM=; b=EBZROPrQpN4xJu
	GbCODDJK7T4iG+XOYHK2k4hPsfn0QFLchG8GBScbV20GmwyDTB48apnig44jisvGpiwApC8Hglubu
	8TwOv9prdnyvjKV/EaTHrH6uWSDJ2vAP3CSvcylRFoQVILErzPZg8rBjM2Om+8xJ4FHhL4uBZPTDY
	c2c/5d8+0o47ejT0QSvB6tAOlR6d5mo3FFHwELejLmblnSKwQyUbANhVXB5R5TbWUqg+pOpSK5Vcu
	l32cEmY+1A0oKV+748DQ5haakJmHQ3kaPoLvcSD/Wyd/a6ZyOYXr9L5GdgyuxDxCYEUb3MLo5TYjR
	h52/Mk7ZNO1FoIW3Ajfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5tM-0005Ht-32
	for lists+linux-i3c@lfdr.de; Thu, 16 Apr 2020 14:53:24 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5tI-0005EA-Ia
 for linux-i3c@lists.infradead.org; Thu, 16 Apr 2020 14:53:22 +0000
Received: from [88.147.80.45] (port=36640 helo=[192.168.77.62])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jP5t7-00283A-Tv; Thu, 16 Apr 2020 16:53:10 +0200
Subject: Re: [RFC PATCH v2 2/6] i2c: allow DT nodes without 'compatible'
To: Wolfram Sang <wsa@the-dreams.de>
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-3-wsa+renesas@sang-engineering.com>
 <11ca7487-ac07-f714-8573-20d1a0040212@lucaceresoli.net>
 <20200415075911.GA1141@ninjato>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <e1791500-d7ca-f6d0-44ff-8d830de4bf58@lucaceresoli.net>
Date: Thu, 16 Apr 2020 16:53:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200415075911.GA1141@ninjato>
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
X-CRM114-CacheID: sfid-20200416_075320_782429_D8D6389A 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
Cc: Rob Herring <robh@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kieran Bingham <kieran@bingham.xyz>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi,

On 15/04/20 09:59, Wolfram Sang wrote:
> 
>> As I said in the reply to v1, I think we should reserve addresses also
>> when there is a compatible string but no matching driver, but this is
>> another story and can be handled separately.
> 
> Unless I misunderstand you, I think they do already. Note that
> only 'i2cdetect' shows a device as busy *IFF* there is a driver bound to
> it. The internal 'i2c_check_addr_busy' does not care about a driver
> being bound. You can check this by trying to use
> i2c_new_ancillary_device() with an address which is already described in
> DT but which driver is disabled.
> 

Ah, yes! I was assuming the opposite but I double checked and you're
right of course.

Sorry for the noise.

-- 
Luca

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
