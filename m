Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B5AFD3F2
	for <lists+linux-i3c@lfdr.de>; Fri, 15 Nov 2019 06:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHjPxS1xO4tnzMI7DXB7Fxqx+rkh3jQMzb1FdJHH+xI=; b=oHXm3tUOHe9XQW
	TiB/Te8OawrIwD05f4mzVg9D4sCh8jhZ7jXuoQeWuHbENLOogS6gu4J3trW4UVgRoWvv7sMDYzGHj
	W9DgV71raiGhLoXkxeNM3VyvrBjNGPuZ9vboTHP0zP0KfbXYhWFk4G14OaVx9XjyttSOvBJQk0yEq
	p3cH/Hhjp95ItfmLHXGT/uFg0vD8soe7Ulb4nQRxelO2ynuswP0pubhmp2+HEyaqbOVjzaLOdXwFL
	8ALB/hk8XfWWuUwdtDzXOw0lcIPgeD+rIRWj2uBkXAQ8C6Pp7w7+iUrBiZf2doVv6CCjtczIOrf1B
	++sw8mMtZ/SkHETrdftQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTrT-00037D-Bk
	for lists+linux-i3c@lfdr.de; Fri, 15 Nov 2019 05:09:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTrQ-00030m-Dc
 for linux-i3c@lists.infradead.org; Fri, 15 Nov 2019 05:09:33 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B8949291336;
 Fri, 15 Nov 2019 05:09:26 +0000 (GMT)
Date: Fri, 15 Nov 2019 06:09:23 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Przemyslaw Gaj <pgaj@cadence.com>
Subject: Re: [PATCH 3/3] MAINTAINERS: add myself as maintainer of Cadence
 I3C master controller driver
Message-ID: <20191115060855.296aad9b@collabora.com>
In-Reply-To: <20191114055155.20446-4-pgaj@cadence.com>
References: <20191114055155.20446-1-pgaj@cadence.com>
 <20191114055155.20446-4-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_210932_592720_57441288 
X-CRM114-Status: GOOD (  10.22  )
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
Cc: linux-i3c@lists.infradead.org, agolec@cadence.com,
 vitor.soares@synopsys.com, rafalc@cadence.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

T24gVGh1LCAxNCBOb3YgMjAxOSAwNjo1MTo1NSArMDEwMApQcnplbXlzbGF3IEdhaiA8cGdhakBj
YWRlbmNlLmNvbT4gd3JvdGU6Cgo+IEFzIGRpc2N1c3NlZCB3aXRoIEJvcmlzIEJyZXppbGxvbiAt
IEknbSBhZGRpbmcgbXlzZWxmIGFzIHRoZSBtYWludGFpbmVyLgoKUXVldWVkIHRvIGkzYy9uZXh0
LgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEdhaiA8cGdhakBjYWRlbmNlLmNvbT4K
PiAtLS0KPiAgTUFJTlRBSU5FUlMgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBp
bmRleCBjNGM1MzJjNzBiODYuLmFmZGNlMTZkMmJlNSAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVS
Uwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTc4MjEsNiArNzgyMSwxMiBAQCBTOglNYWludGFp
bmVkCj4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pM2Mvc25wcyxkdy1p
M2MtbWFzdGVyLnR4dAo+ICBGOglkcml2ZXJzL2kzYy9tYXN0ZXIvZHcqCj4gIAo+ICtJM0MgRFJJ
VkVSIEZPUiBDQURFTkNFIEkzQyBNQVNURVIgSVAKPiArTTogICAgICBQcnplbXlzxYJhdyBHYWog
PHBnYWpAY2FkZW5jZS5jb20+Cj4gK1M6ICAgICAgTWFpbnRhaW5lZAo+ICtGOiAgICAgIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pM2MvY2RucyxpM2MtbWFzdGVyLnR4dAo+ICtG
OiAgICAgIGRyaXZlcnMvaTNjL21hc3Rlci9pM2MtbWFzdGVyLWNkbnMuYwo+ICsKPiAgSUE2NCAo
SXRhbml1bSkgUExBVEZPUk0KPiAgTToJVG9ueSBMdWNrIDx0b255Lmx1Y2tAaW50ZWwuY29tPgo+
ICBNOglGZW5naHVhIFl1IDxmZW5naHVhLnl1QGludGVsLmNvbT4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1pM2MgbWFpbGluZyBsaXN0Cmxp
bnV4LWkzY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtaTNjCg==
