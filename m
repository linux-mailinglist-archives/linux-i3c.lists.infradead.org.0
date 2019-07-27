Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81DC7A218
	for <lists+linux-i3c@lfdr.de>; Tue, 30 Jul 2019 09:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nkb4GF4qE5ifdARzVcmmtNiRzrr0cAo8SS3wBI6jQM=; b=H0tuW9w+bLg5Cf
	SJTXC+r0QRZ1cIT8fEUq8bo2tu+8V58079ECgAIixvEezQ0tEhxUnrp4H1jFzxwcds4BznIZKkqdc
	jZEAzSKUa5LRcbsH65F/XMftfAzDJeexhMr0z0pw39rwvM7zshDc+wgh39U2QmBqwlHyU3UHtvaWE
	PZ3fe9bk/gV3/IAPGC0U9TeghNAhqKvntmjd9NqkpalElX+NObClRFsXQkokRCX9cvtVJPkm5ySxY
	9vD1FAd7VDcj54r4K1Z5AKyWZofZprU7k6PcMVa+ioUYkILJUcVtwhM2sbNXt1/kwGZdXNUsrbott
	HEXcQW7BpU10tZnNr2sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMRX-0003Lt-Fs
	for lists+linux-i3c@lfdr.de; Tue, 30 Jul 2019 07:21:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrTiL-0002i3-9q
 for linux-i3c@lists.infradead.org; Sat, 27 Jul 2019 20:54:50 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90903208E4;
 Sat, 27 Jul 2019 20:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564260887;
 bh=8KYB1Mna/qqU8VFRs889zst+w4SYhrS+6Rwy2vlNHcQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L8f7yy48UvPCIcykDvMWdN2p3ukUh17Bi/GGBqyNYC1kCgkKlMBE8vwVrhuM3RLEG
 Lxt3s1Q7xlyIFuzGtf9VHgMOxlV3G2YaZWrHtPYCGajtFvbwR7rRjIhWbdkAEjBjcQ
 QdsS2cHEy4wieL/A4fPEOTj6ZqTbm2RhSRtBverw=
Date: Sat, 27 Jul 2019 21:54:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 2/2] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Message-ID: <20190727215440.1e657e5b@archlinux>
In-Reply-To: <20190727124212.3da89d41@collabora.com>
References: <cover.1563542515.git.vitor.soares@synopsys.com>
 <77c709aca8607f31f141ee7c4dc28bf89266bd23.1563542515.git.vitor.soares@synopsys.com>
 <20190721181656.236faa63@archlinux>
 <20190727124212.3da89d41@collabora.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_135449_359182_1BF3B42F 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Mailman-Approved-At: Tue, 30 Jul 2019 00:21:06 -0700
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
Cc: Joao.Pinto@synopsys.com, rafael@kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, bbrezillon@kernel.org,
 linux-kernel@vger.kernel.org, Vitor Soares <Vitor.Soares@synopsys.com>,
 linux-i3c@lists.infradead.org, lorenzo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Sat, 27 Jul 2019 12:42:12 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Sun, 21 Jul 2019 18:16:56 +0100
> Jonathan Cameron <jic23@kernel.org> wrote:
> 
> > On Fri, 19 Jul 2019 15:30:55 +0200
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > For today the st_lsm6dsx driver support LSM6DSO and LSM6DSR sensor only in
> > > spi and i2c mode.
> > > 
> > > The LSM6DSO and LSM6DSR are also i3c capable so let's give i3c support to
> > > them.
> > > 
> > > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > > Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>    
> > Great. I'll pick this up once Boris has that immutable branch
> > available. Give me a poke if I seem to have lost it!  
> 
> Here it is:
> 
Great. Merged that into the togreg branch of iio and applied this patch.

Pushed out as testing to let the autobuilders have a poke at it all.

Thanks,

Jonathan

> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> 
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git tags/i3c/export-i3c_device_match_id
> 
> for you to fetch changes up to 934d24a5e1508e73c0001afb54a3916e4270428f:
> 
>   i3c: move i3c_device_match_id to device.c and export it (2019-07-27 11:22:19 +0200)
> 
> ----------------------------------------------------------------
> Needed for the st_lsm6dsx_i3c.c driver
> 
> ----------------------------------------------------------------
> Vitor Soares (1):
>       i3c: move i3c_device_match_id to device.c and export it
> 
>  drivers/i3c/device.c       | 53 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/i3c/master.c       | 45 ---------------------------------------------
>  include/linux/i3c/device.h |  4 ++++
>  3 files changed, 57 insertions(+), 45 deletions(-)
> 
> 


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
