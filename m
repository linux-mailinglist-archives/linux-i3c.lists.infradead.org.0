Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A951189D5
	for <lists+linux-i3c@lfdr.de>; Tue, 10 Dec 2019 14:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8HDeEuTtt2//+mvbVCIMERQuFKcPV7XsCxZ41LhVFA=; b=YqiKWVPwxL1+1h
	2QyciaXkIYhXZleawwHfsqCusJ9PMhxChm6WeQIkN5x4YPypML8r6E7UKUiWPwiBFRenVkLhBz4U3
	lywjjCgb25GSBzU6gCSHulqSrqX6POkBxIRwGSzFbD6U1QC+fCvHLsEJYFk4Jl/GnaY6vrp4MUu1j
	UWVKxosKxRaICSbOVLLWEM3xWRZKQ6GThotF6xmusx1HMbBC4tWiUqSZkhKFn/3OVMIKpeltNCqJ+
	ofJ/J8oupl2TEgEaYNsf056X5ANLXXBEjuVsUucPxyGZyyXUBUaE8Xzas5Lvaddk4rt2QWqqHw16G
	ta+sP8Ls1K5AW0FFkjRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefai-0001MQ-R6
	for lists+linux-i3c@lfdr.de; Tue, 10 Dec 2019 13:30:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefaP-0008QW-U2
 for linux-i3c@lists.infradead.org; Tue, 10 Dec 2019 13:29:59 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5ABF7263954;
 Tue, 10 Dec 2019 13:29:47 +0000 (GMT)
Date: Tue, 10 Dec 2019 14:29:43 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: =?UTF-8?B?UHJ6ZW15c8WCYXc=?= Gaj <pgaj@cadence.com>
Subject: Re: [PATCH v4 2/6] i3c: master: pre-reserve
 boardinfo->init_dyn_addr when available
Message-ID: <20191210142943.3804da04@collabora.com>
In-Reply-To: <20191210101502.8401-3-pgaj@cadence.com>
References: <20191210101502.8401-1-pgaj@cadence.com>
 <20191210101502.8401-3-pgaj@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052958_135425_C49F7C63 
X-CRM114-Status: GOOD (  16.20  )
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

T24gVHVlLCAxMCBEZWMgMjAxOSAxMToxNDo1OCArMDEwMApQcnplbXlzxYJhdyBHYWogPHBnYWpA
Y2FkZW5jZS5jb20+IHdyb3RlOgoKPiBJdCBtYXkgYmUgdGhlIGNhc2UgdGhhdCBTRVREQVNBIGZh
aWxzIGZvciBzb21lIHJlYXNvbi4gUmVzZXJ2ZQo+IC0+aW5pdF9keW5fYWRkciB3aGVuIGl0J3Mg
ZGVmaW5lZCB0byBwcmV2ZW50IGFzc2lnbmluZyB0aGlzIGFkZHJlc3MgIAo+IHRvIGFub3RoZXIg
c2xhdmUgZGV2aWNlLiBUaGlzIHdheSB3aGVuIGRldmljZSBzaG93cyB1cCB3ZSBkb24ndAo+IGhh
dmUgdG8gcmUtYXNzaWduIGFkZHJlc3Nlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzxYJh
dyBHYWogPHBnYWpAY2FkZW5jZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaTNjL21hc3Rlci5jIHwg
OCArKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTNjL21hc3Rlci5jIGIvZHJpdmVycy9pM2Mv
bWFzdGVyLmMKPiBpbmRleCA1YzA2YzQxZTY2NjAuLmZhYjZlMDYwOWZjYSAxMDA3NTUKPiAtLS0g
YS9kcml2ZXJzL2kzYy9tYXN0ZXIuYwo+ICsrKyBiL2RyaXZlcnMvaTNjL21hc3Rlci5jCj4gQEAg
LTEyNjMsNyArMTI2Myw4IEBAIHN0YXRpYyB2b2lkIGkzY19tYXN0ZXJfcHV0X2kzY19hZGRycyhz
dHJ1Y3QgaTNjX2Rldl9kZXNjICpkZXYpCj4gIAkJCQkJICAgICBJM0NfQUREUl9TTE9UX0ZSRUUp
Owo+ICAKPiAgCWlmIChkZXYtPmJvYXJkaW5mbyAmJiBkZXYtPmJvYXJkaW5mby0+aW5pdF9keW5f
YWRkcikKPiAtCQlpM2NfYnVzX3NldF9hZGRyX3Nsb3Rfc3RhdHVzKCZtYXN0ZXItPmJ1cywgZGV2
LT5pbmZvLmR5bl9hZGRyLAo+ICsJCWkzY19idXNfc2V0X2FkZHJfc2xvdF9zdGF0dXMoJm1hc3Rl
ci0+YnVzLAo+ICsJCQkJCSAgICAgZGV2LT5ib2FyZGluZm8tPmluaXRfZHluX2FkZHIsCj4gIAkJ
CQkJICAgICBJM0NfQUREUl9TTE9UX0ZSRUUpOwoKU2hvdWxkIGJlIGZpeGVkIGluIGEgc2VwYXJh
dGUgcGF0Y2gsIG9yIGF0IGxlYXN0IG1lbnRpb25lZCBpbiB0aGUKY29tbWl0IG1lc3NhZ2UuCgo+
ICB9Cj4gIAo+IEBAIC0xNjc1LDYgKzE2NzYsMTEgQEAgc3RhdGljIGludCBpM2NfbWFzdGVyX2J1
c19pbml0KHN0cnVjdCBpM2NfbWFzdGVyX2NvbnRyb2xsZXIgKm1hc3RlcikKPiAgCQkJCXJldCA9
IC1FQlVTWTsKPiAgCQkJCWdvdG8gZXJyX2RldGFjaF9kZXZzOwo+ICAJCQl9Cj4gKwo+ICsJCQkv
KiBSZXNlcnZlIHRoZSBzbG90LiAqLwo+ICsJCQlpM2NfYnVzX3NldF9hZGRyX3Nsb3Rfc3RhdHVz
KCZtYXN0ZXItPmJ1cywKPiArCQkJCQkJICAgICBpM2Nib2FyZGluZm8tPmluaXRfZHluX2FkZHIs
Cj4gKwkJCQkJCSAgICAgSTNDX0FERFJfU0xPVF9JM0NfREVWKTsKCkxvb2tzIGxpa2UgdGhlICJy
ZXNlcnZlL3JlbGVhc2UgaW5pdF9keW5fYWRkciBzbG90IiBsb2dpYyBpcwphc3ltbWV0cmljLiBJ
IHdvbmRlciBpZiB0aGF0J3Mgbm90IGEgcHJvYmxlbS4gQ2FuJ3Qgd2UgZW5kIHVwIGluIGEKc2l0
dWF0aW9uIHdoZXJlIHRoZSAtPmluaXRfZHluX2FkZHIgaXMgcmVsZWFzZWQgKHdoZW4gU0VUREFT
QSgpIGZhaWxzKQphbmQgdGhlbiByZS11c2VkIHdpdGhvdXQgYmVpbmcgcmVzZXJ2ZWQgKHdoZW4g
dGhlIGRldmljZSBpcyBsYXRlcgpkaXNjb3ZlcmVkIHRocm91Z2ggYSByZWd1bGFyIERBQSk/CgpT
byBtYXliZSBJIHdhcyB3cm9uZyBhbmQgd2Ugc2hvdWxkIGluZGVlZCByZXNlcnZlIHRoZSBhZGRy
ZXNzIGluIHRoZQppM2NfbWFzdGVyX2dldF9pM2NfYWRkcnMoKSBwYXRoLgoKPiAgCQl9Cj4gIAo+
ICAJCWkzY2RldiA9IGkzY19tYXN0ZXJfYWxsb2NfaTNjX2RldihtYXN0ZXIsICZpbmZvKTsKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1pM2Mg
bWFpbGluZyBsaXN0CmxpbnV4LWkzY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtaTNjCg==
