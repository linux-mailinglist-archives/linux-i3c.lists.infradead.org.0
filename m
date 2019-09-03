Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACACBAE3DE
	for <lists+linux-i3c@lfdr.de>; Tue, 10 Sep 2019 08:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oHM91nEas6KNnYU8mqPp9G3xKHL0Pjz8hUsOL2DC4c=; b=c5TyAaB2l97Npm
	CyP93hMTi7bHH/FqoZOXtH4oSndhQYyYRG+bqJ6uZnGFxbOxEdnjaYm3gKaijU7UjKjozknR/YT7H
	4nC1eJwWGhGZAwV1grNEsDU1gJ+IfeVKvrTI4w/c3LQk2CvisosZUPBUn2jWIqe27EteieyK+Y4YY
	ZXSdWSi4XY+CrOz8MekndYX+4QEnoUeos8fgtAGesVkFyuABhUf+ZY9kWntDYhcmLcKlS1KNu8Pmx
	sxEIH4f40VQFr7q9Tr80k6aBnr7wb4RfYvzFCpgqIS4DffEpgJDEDTHRaR/U7SLVe8rF7clOxhsUl
	HrzyCkP9AngzHCQEB37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Zof-0006tq-EN
	for lists+linux-i3c@lfdr.de; Tue, 10 Sep 2019 06:39:53 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Cnu-0005hN-8p
 for linux-i3c@lists.infradead.org; Tue, 03 Sep 2019 17:41:19 +0000
Received: by mail-wr1-f67.google.com with SMTP id s18so18454840wrn.1
 for <linux-i3c@lists.infradead.org>; Tue, 03 Sep 2019 10:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ieQ0SS1TbyTo2Ti96I4YLp+pK1fJ3Fs4s6IUdQyKN2Y=;
 b=sUdvLr9vttvInO4lptl+SBLHmh/azr9r66dPPcsgqcKbjGqJ5qxbQzka/GjTwd2+Al
 fimvbo46vx59T9GKZqz79sqcfeySS8go3B8vr6qXWo5aDC7ZUlVHc1TuZfEnEYwJcuFc
 sM8HBKi2DTpQEg13FTxcSe+v1kgWYWjYhaLcchJp9Y65babKZG6z/n7/8QMwUNddMNdf
 h/Ex6c/VREjqWnEP0st4FC0CO7ispQ0ktGCkS3Cs2nXN6KQQ5SDQFvpirIL1dFh7g/Zr
 JZPKbC7F+NHIRWLzmcaJ71lA3yR8qOwEuYW0NjfxWPpKboOeqY3fRiaSXGFe7/p4nX8O
 LR6w==
X-Gm-Message-State: APjAAAUvMqKaVMfRsMCOCja1ALa3vZAD88N9JjpeEIEaeLWr4ZDX7NSC
 XM9Ad8J4+oiV+X2fRIAUkA==
X-Google-Smtp-Source: APXvYqxnUok+psv1QFkj8jaGGJBG3k+UUbHqh55UDvJs1Lvg9ReVnSTkNKcfQo3GWrM2PteMUQAa+Q==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr28322655wrp.122.1567532476537; 
 Tue, 03 Sep 2019 10:41:16 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id b184sm294493wmg.47.2019.09.03.10.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:41:16 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:41:14 +0100
From: Rob Herring <robh@kernel.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: i3c: add a note for no guarantee of
 'assigned-address' use
Message-ID: <20190903174114.GA3710@bogus>
References: <cover.1567437955.git.vitor.soares@synopsys.com>
 <159ae86a8f87b8d518bf63a8946b03b14e6b5500.1567437955.git.vitor.soares@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159ae86a8f87b8d518bf63a8946b03b14e6b5500.1567437955.git.vitor.soares@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_104118_315927_8CBE73B2 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

On Tue,  3 Sep 2019 12:35:53 +0200, Vitor Soares wrote:
> By default, the framework will try to assign the 'assigned-address' to the
> device but if the address is already in use the device dynamic address
> will be different.
> 
> Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> ---
>  Documentation/devicetree/bindings/i3c/i3c.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
