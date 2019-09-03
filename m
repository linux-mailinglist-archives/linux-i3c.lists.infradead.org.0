Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E0AE3DD
	for <lists+linux-i3c@lfdr.de>; Tue, 10 Sep 2019 08:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hh4BgP2MwboeJA7UxJg/bg0RS195rx0ZycrTAkmwN3k=; b=sAQLHoRnPbUxd6
	WZ4Fyyccga8Bye9phHggED3UOKmE44T+T/ngYzBOWH8W0+NjKxQz3ZWshjUb0enyztoUNK285NPCW
	aMn8nrwvJM0O8jaWZ4O+NhnEmw+bH1JwQeC9hU9ZXKiEe9TBpfCTJ2XOCadnsW/7m0gSSP9QvJGip
	wRGcRY3/SZlz9Pq9/pRkhsLQyOIUPgizQ+Wzws1NMODDDm1oxAGjUMYKZAcJSjKhRU2Z2+KvaBZMP
	B3GIuBmUHn6KzkVbHDXdaEAukfZtM/CuY6WUYD3U1f0Uvox9WzN3tv9Hc8OpK3ckNjkWBeI875wS+
	/wtr1XLVIn2P9TnZQahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Zof-0006tg-BO
	for lists+linux-i3c@lfdr.de; Tue, 10 Sep 2019 06:39:53 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5CnF-0005ek-5o
 for linux-i3c@lists.infradead.org; Tue, 03 Sep 2019 17:40:38 +0000
Received: by mail-wr1-f66.google.com with SMTP id l16so88935wrv.12
 for <linux-i3c@lists.infradead.org>; Tue, 03 Sep 2019 10:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZIXNCxOIrCyXT5hESp+rCLjjuePFlAI37CT+jEDV5Q4=;
 b=Jm4qO1eogYeCgRdeSJd3bc7wHtRMin+OTf3aGizv5CpVTuGT9pyJqLTjr907ewqlWL
 WJVdTuTntY6gSXCaSwPs5wp0s9SaRyp0F+Yg2tnjf7Q+mNNoWR1GbD/Lqm+e8LScMDYV
 NjikvQaOC0K+TVCGMx7UBi2ZGYRv0HZ2QoOh56AO/z1cdI/VdRV1KjK5//S8btZGKeGf
 a5dC6QuUJdT4PUNYkqbu35uJyfj35F2A4n8T9E4+OSx476ZNMr7vqRV7JA2T7khYGnwS
 n4xno9GyKZOCIvb9rdgag85uhzAGVJeDHwonPfqMzl1+PcqW6gDjzfnCMMju7wv+YVg1
 xa/g==
X-Gm-Message-State: APjAAAUZ91W47r3CH6mC4NGs5kPyRq38cQGLPpbD7CGkOEqC859PQ4eI
 /RhTWaiU0bvqd/xTj4giWQ==
X-Google-Smtp-Source: APXvYqyO5yb0kzqqfbrHDmZsNBwidTPMmrsGe7bYyTxXuBCFzT6DUgmP1xCcjTCyTgekuMtpl8lSOw==
X-Received: by 2002:adf:f507:: with SMTP id q7mr44817756wro.210.1567532435032; 
 Tue, 03 Sep 2019 10:40:35 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id e15sm10079955wru.93.2019.09.03.10.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:40:34 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:40:24 +0100
From: Rob Herring <robh@kernel.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: i3c: Make 'assigned-address' valid
 if static address == 0
Message-ID: <20190903174024.GA1480@bogus>
References: <cover.1567437955.git.vitor.soares@synopsys.com>
 <c0505ef73add4512ce1ee2a71b1c8bc8f771151b.1567437955.git.vitor.soares@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0505ef73add4512ce1ee2a71b1c8bc8f771151b.1567437955.git.vitor.soares@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_104037_220397_8EF46DF7 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Approved-At: Mon, 09 Sep 2019 23:39:51 -0700
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
 bbrezillon@kernel.org, linux-kernel@vger.kernel.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, pgaj@cadence.com, robh+dt@kernel.org,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Tue,  3 Sep 2019 12:35:52 +0200, Vitor Soares wrote:
> The I3C devices without a static address can require a specific dynamic
> address for priority reasons.
> 
> Let's update the binding document to make the 'assigned-address' property
> valid if static address == 0 and add an example with this use case.
> 
> Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> ---
>  Documentation/devicetree/bindings/i3c/i3c.txt | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
