Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC99F1A4FA5
	for <lists+linux-i3c@lfdr.de>; Sat, 11 Apr 2020 14:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACEyRhhahJoFsSfP9CxYSbEyL8gUo/nIxV9ZAZxuynk=; b=rdE1rSMF2q5A1P
	yNRPOKQ0Fsj2onSlD3TkeDuAJHtqRs+DxIRIeh5JSol7ASUoBHQVjnN6jXTa+aJkY/Fq9noSwA9Z6
	98eA6brxDIWIjkUialz9HcP5axkInJcvjscgtFq8bEIvjNwt3QxONMP2OU7tjSLioZC1PiUT6pEGr
	2OhASUPdpKk6mr3dvU3SOCrAD1htAmGMum7H4d8h0ePLpHpnSs9Qi/1oxp0Wbuelx7AU0q96axXLO
	58uCKWBD+8kbqv2pG9bEQ9XXYzqya/rnvE14qT/gsDqkOJ/+qKMG4TLr6/8RZBrkHlggMWBdAcJz0
	fyzpao8vrlPM/v9jDQxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNExO-0001qF-I4
	for lists+linux-i3c@lfdr.de; Sat, 11 Apr 2020 12:09:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNExL-0001on-FT
 for linux-i3c@lists.infradead.org; Sat, 11 Apr 2020 12:09:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0B0C22A049C;
 Sat, 11 Apr 2020 13:09:49 +0100 (BST)
Date: Sat, 11 Apr 2020 14:09:47 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Conor Culhane <conor.culhane@silvaco.com>
Subject: Re: [PATCH] i3c: master: Add driver for Silvaco I3C Dual-Role
 Master IP
Message-ID: <20200411140947.58f674a9@collabora.com>
In-Reply-To: <20200411140353.16872a7f@collabora.com>
References: <20200325160047.11082-1-conor.culhane@silvaco.com>
 <20200411140353.16872a7f@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_050951_647693_ED4A216D 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Sat, 11 Apr 2020 14:03:53 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Hi Connor,
> 
> On Wed, 25 Mar 2020 12:00:47 -0400
> Conor Culhane <conor.culhane@silvaco.com> wrote:
> 
> > This driver currently supports I3C SDR transfers. I3C HDR-DDR
> > transfer support may be added in the future.
> > 
> > Signed-off-by: Conor Culhane <conor.culhane@silvaco.com>
> > ---
> >  drivers/i3c/master/Kconfig          |    8 +
> >  drivers/i3c/master/Makefile         |    3 +-
> >  drivers/i3c/master/svc-i3c-master.c | 3801 +++++++++++++++++++++++++++  
> 
> Wow, almost 4k LoC for a driver supporting only SDR tranfers. Let's see
> if we can shrink that a bit.

Just a precision, I'd expect something between 1k and 2k lines of code
(see the 2 other drivers we have). Might be more than 2k if the IP is
complex, but at first glance that doesn't seem to be the case here.


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
