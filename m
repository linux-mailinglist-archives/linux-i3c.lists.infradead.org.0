Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC13A170467
	for <lists+linux-i3c@lfdr.de>; Wed, 26 Feb 2020 17:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oe935erSxlemV9S23fdsAbvQGtT41yCM0kvlKtsYvFw=; b=FO7Kn3Yk+OFyKP
	+6gmZ2Sp78EZ9cn/zz6+2hyTX7oxqx6POc1KXrbXQWQIaYpqz/Yktdy/kjoxu3Z8SczpHhQIGh3xh
	pCnpO5txZM+bOV/704AtEp7rMI5pHnIErQBELZB6kl1YL22QeJr96gq3F9X233vPIvc8XraJu+LJC
	UpoPXZ1KVD0k4IY1gjyeuBgntwrN7wteVfOYFuwe4sE0QtAunO2kxa5Q7n94cBZrBP/G8Ky+GZwyo
	7smvJVLgIlYdLwLPsObrm2mL6lLJJ2UopC2PFOHyf56FvHtS1Ke+97MQN6c7nPTIWZBtHED02rjtd
	v8UxGAbZ6MxC+XBp1m5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zaP-0001B7-HQ
	for lists+linux-i3c@lfdr.de; Wed, 26 Feb 2020 16:31:01 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zaM-0001AH-Qu
 for linux-i3c@lists.infradead.org; Wed, 26 Feb 2020 16:31:00 +0000
Received: by mail-oi1-f196.google.com with SMTP id j132so64090oih.9
 for <linux-i3c@lists.infradead.org>; Wed, 26 Feb 2020 08:30:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ACI9a0q/BgBWalLw0K2YIrmMcsUsmnK2gwfSs/vtPsM=;
 b=dkywiIGHquill5jO+JNQWnFVzddSuHUz0z50WgIL6AXVprXkFhv6xwp2jILdZAL1WX
 INV+MWyxpd2PfWFN+dpIB9PghVQYiH1C4pP+x950W/XbNBIsG7TZEs1ZOq/UEtHjUDeF
 5QSDSqfhngmOgVB8x2LHQaLqdDRnUEKXK5jN6S+Tbo4riEiui5lewbT106qbw5LN4Sda
 NnW2B1FjPJSDHAfrgpXUIsY1u1URBDYEIQZY+DeNOMNZNXFh9Qzbu0xDLiF97iEBq1uh
 XwUYYMJRk25fGLoyxswOkezEr0zdVxIAVTlVFM4lkP4YjmOOUSoCIVpoIX+7zK/W9xTT
 0h+g==
X-Gm-Message-State: APjAAAW1BBA/fqhHDggzYLkWZFo6gGNP39p/lVNa3YgcaantDUDkC3Y0
 SjEDDX1AcC4GB6N3Qpn/4g==
X-Google-Smtp-Source: APXvYqwK0Rc7BM7k+hjejM3j3aYFkebquxvpYKt0YbE8+SJreIg9fwmtnodQ6siCckcxVnFX0VTn2g==
X-Received: by 2002:aca:4d06:: with SMTP id a6mr3839205oib.27.1582734655656;
 Wed, 26 Feb 2020 08:30:55 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n19sm951525oig.57.2020.02.26.08.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:30:55 -0800 (PST)
Received: (nullmailer pid 26591 invoked by uid 1000);
 Wed, 26 Feb 2020 16:30:54 -0000
Date: Wed, 26 Feb 2020 10:30:54 -0600
From: Rob Herring <robh@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [RFC PATCH 3/7] i2c: allow DT nodes without 'compatible'
Message-ID: <20200226163054.GA26533@bogus>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-4-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220172403.26062-4-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_083058_873266_6324ADFB 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Kieran Bingham <kieran@ksquared.org.uk>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-kernel@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, Vladimir Zapolskiy <vz@mleia.com>,
 linux-renesas-soc@vger.kernel.org, Luca Ceresoli <luca@lucaceresoli.net>,
 linux-i2c@vger.kernel.org,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 18:23:59 +0100, Wolfram Sang wrote:
> Sometimes, we have unknown devices in a system and still want to block
> their address. For that, we allow DT nodes with only a 'reg' property.
> These devices will be bound to the "dummy" driver but with the name
> "reserved". That way, we can distinguish them and even hand them over to
> the "dummy" driver later when they are really requested using
> i2c_new_ancillary_device().
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 1 -
>  Documentation/devicetree/bindings/i2c/i2c.txt        | 4 +++-
>  drivers/i2c/i2c-core-base.c                          | 1 +
>  drivers/i2c/i2c-core-of.c                            | 8 +++-----
>  drivers/i2c/i2c-core.h                               | 1 +
>  5 files changed, 8 insertions(+), 7 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
