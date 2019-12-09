Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA402116A15
	for <lists+linux-i3c@lfdr.de>; Mon,  9 Dec 2019 10:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xs9lxTI05VLgkPGxwVfdMhiX7Ygxw3JyqcpafwY43Y=; b=YPOwU1+3n2my60
	+zR0qDN1zTOwlTUWmF/yD97PkfSlNLOYUZPXoMOGj2XyFAk2Tye3H5K6WO2A0ryCBDnaAZJNz3FKj
	pp+ixVRc46tXEcUuuAvU8WeCXCczdLlAgSuVly3aG48DuF8gyJKNp1U9FExfSanDj79RsbRCJRnV1
	Fooa6URvSFRcT6RL+lhQ8GfV/dwFqyMdtSZA9F/GHf7PvO+7Mvt8dRvn8wcs0q0iM12tPNzCWLAef
	1Dm1G/0dakd0OW0aicxzCbhOQ71CqeD34Jk1LAnnLJSYTlDp/66MY4yrpSDs6HDAeWYEGVcFF/3mJ
	2Cxj5EFgwnUsJZTn9F5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFeI-0001U1-CV
	for lists+linux-i3c@lfdr.de; Mon, 09 Dec 2019 09:48:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFdN-0000lW-JE
 for linux-i3c@lists.infradead.org; Mon, 09 Dec 2019 09:47:19 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E258228D701;
 Mon,  9 Dec 2019 09:47:14 +0000 (GMT)
Date: Mon, 9 Dec 2019 10:47:11 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: =?UTF-8?B?UHJ6ZW15c8WCYXc=?= Gaj <pgaj@cadence.com>
Subject: Re: [PATCH] i3c: make sure the PID is set before registering the
 device
Message-ID: <20191209104711.5a549d31@collabora.com>
In-Reply-To: <20191208141834.10310-1-pgaj@cadence.com>
References: <20191208141834.10310-1-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_014717_801399_A9949793 
X-CRM114-Status: GOOD (  12.90  )
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
Cc: linux-i3c@lists.infradead.org, vitor.soares@synopsys.com,
 rafalc@cadence.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

T24gU3VuLCA4IERlYyAyMDE5IDE1OjE4OjM0ICswMTAwClByemVteXPFgmF3IEdhaiA8cGdhakBj
YWRlbmNlLmNvbT4gd3JvdGU6Cgo+IEZyb206IFByemVteXNsYXcgR2FqIDxwZ2FqQGNhZGVuY2Uu
Y29tPgo+IAo+IFByb3Zpc2lvbmVkIElEIChQSUQpIGlzIHRoZSB2YWx1ZSB3aXRoIHdoaWNoIGRl
dmljZSBkcml2ZXJzIGFyZQo+IG1hdGNoZWQuIEkgY2hlY2sgdGhlIHZhbHVlIGJlZm9yZSByZWdp
c3RlcmluZyB0aGUgZGV2aWNlLgo+IAoKQ2FuIHRoaXMgc2l0dWF0aW9uIChoYXZpbmcgYSBkZXZp
Y2Ugd2l0aCBhIERBIGJ1dCB3aXRob3V0IGEgdmFsaWQgUElEKQpoYXBwZW4gcmlnaHQgbm93IG9y
IGlzIHRoaXMgc29tZXRoaW5nIHlvdSBuZWVkIHRvIHN1cHBvcnQgc2Vjb25kYXJ5Cm1hc3RlcnMg
d2hvIHJlY2VpdmUgZGV2aWNlIERBICh0aHJvdWdoIERFRlNWTFMpIHdpdGhvdXQgYmVpbmcgYWJs
ZSB0bwpxdWVyeSBleHRyYSBpbmZvcm1hdGlvbiB1bnRpbCB0aGV5IG93biB0aGUgYnVzPwoKPiBT
aWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEdhaiA8cGdhakBjYWRlbmNlLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9pM2MvbWFzdGVyLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTNjL21hc3Rl
ci5jIGIvZHJpdmVycy9pM2MvbWFzdGVyLmMKPiBpbmRleCAwNDM2OTE2NTYyNDUuLjA3ZWE4YjBi
NzczNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2kzYy9tYXN0ZXIuYwo+ICsrKyBiL2RyaXZlcnMv
aTNjL21hc3Rlci5jCj4gQEAgLTE0NDksNyArMTQ0OSw4IEBAIGkzY19tYXN0ZXJfcmVnaXN0ZXJf
bmV3X2kzY19kZXZzKHN0cnVjdCBpM2NfbWFzdGVyX2NvbnRyb2xsZXIgKm1hc3RlcikKPiAgCQly
ZXR1cm47Cj4gIAo+ICAJaTNjX2J1c19mb3JfZWFjaF9pM2NkZXYoJm1hc3Rlci0+YnVzLCBkZXNj
KSB7Cj4gLQkJaWYgKGRlc2MtPmRldiB8fCAhZGVzYy0+aW5mby5keW5fYWRkciB8fCBkZXNjID09
IG1hc3Rlci0+dGhpcykKPiArCQlpZiAoZGVzYy0+ZGV2IHx8ICFkZXNjLT5pbmZvLmR5bl9hZGRy
IHx8Cj4gKwkJICAgIGRlc2MgPT0gbWFzdGVyLT50aGlzIHx8ICFkZXNjLT5pbmZvLnBpZCkKPiAg
CQkJY29udGludWU7Cj4gIAo+ICAJCWRlc2MtPmRldiA9IGt6YWxsb2Moc2l6ZW9mKCpkZXNjLT5k
ZXYpLCBHRlBfS0VSTkVMKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1pM2MgbWFpbGluZyBsaXN0CmxpbnV4LWkzY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
aTNjCg==
