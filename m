Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A5737CEE
	for <lists+linux-i3c@lfdr.de>; Thu,  6 Jun 2019 21:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1d8xFjT+Xn4Y/n0SnMIrRc44BJAgCp2R50HpY21fDM=; b=CZth5pcm9FWQe8
	VK/7SAUMT1QgYC0fFxV9pQa+CiAZzkjQc4eK0XbaxjoGnyxYps1IM/NkatvOumePqZgvytlD3MXw4
	jNghC9KEPeQf5QguVf8wjy1nbSFutQX95eqslzPVd34V+mV71ytT3tyQElHYFcBtfDUGlflGh+dey
	UlMgPcMI3wjn7ZQ3rb98VrzrWRCc0vxb1OmQ8ucp2GtA6sICpzAyjbSuLOP5pNRvTCAnmaIScUYFo
	fsulQ65dMA+15+kNI6IoZvsmd6R3XcvFwXCVrkX2T3RqexW19AF3sGIDrUImKfX9YXCUn3irzpiL4
	gAAI5oFS/ZgUdzbIGt3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxgf-0003W5-CV
	for lists+linux-i3c@lfdr.de; Thu, 06 Jun 2019 19:04:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxgb-0003V7-RU
 for linux-i3c@lists.infradead.org; Thu, 06 Jun 2019 19:04:31 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2622F283ED2;
 Thu,  6 Jun 2019 20:04:28 +0100 (BST)
Date: Thu, 6 Jun 2019 21:04:24 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v2 1/3] i3c: fix i2c and i3c scl rate by bus mode
Message-ID: <20190606210424.0486903a@collabora.com>
In-Reply-To: <13D59CF9CEBAF94592A12E8AE55501350AABE85C@DE02WEMBXB.internal.synopsys.com>
References: <cover.1559821227.git.vitor.soares@synopsys.com>
 <47de89f2335930df0ed6903be9afe6de4f46e503.1559821228.git.vitor.soares@synopsys.com>
 <20190606161844.4a6b759c@collabora.com>
 <13D59CF9CEBAF94592A12E8AE55501350AABE7FC@DE02WEMBXB.internal.synopsys.com>
 <20190606193540.680d391b@collabora.com>
 <13D59CF9CEBAF94592A12E8AE55501350AABE85C@DE02WEMBXB.internal.synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_120430_152561_33154096 
X-CRM114-Status: GOOD (  33.25  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

T24gVGh1LCA2IEp1biAyMDE5IDE4OjA4OjExICswMDAwClZpdG9yIFNvYXJlcyA8Vml0b3IuU29h
cmVzQHN5bm9wc3lzLmNvbT4gd3JvdGU6Cgo+IEZyb206IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMu
YnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gRGF0ZTogVGh1LCBKdW4gMDYsIDIwMTkgYXQgMTg6
MzU6NDAKPiAKPiA+IE9uIFRodSwgNiBKdW4gMjAxOSAxNzoxNjo1NSArMDAwMAo+ID4gVml0b3Ig
U29hcmVzIDxWaXRvci5Tb2FyZXNAc3lub3BzeXMuY29tPiB3cm90ZToKPiA+ICAgCj4gPiA+IEZy
b206IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiA+
IERhdGU6IFRodSwgSnVuIDA2LCAyMDE5IGF0IDE1OjE4OjQ0Cj4gPiA+ICAgCj4gPiA+ID4gT24g
VGh1LCAgNiBKdW4gMjAxOSAxNjowMDowMSArMDIwMAo+ID4gPiA+IFZpdG9yIFNvYXJlcyA8Vml0
b3IuU29hcmVzQHN5bm9wc3lzLmNvbT4gd3JvdGU6Cj4gPiA+ID4gICAgIAo+ID4gPiA+ID4gQ3Vy
cmVudGx5IHRoZSBJM0MgZnJhbWV3b3JrIGxpbWl0cyBTQ0wgZnJlcXVlbmN5IHRvIEZNIHNwZWVk
IHdoZW4KPiA+ID4gPiA+IGRlYWxpbmcgd2l0aCBhIG1peGVkIHNsb3cgYnVzLCBldmVuIGlmIGFs
bCBJMkMgZGV2aWNlcyBhcmUgRk0rIGNhcGFibGUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZSBj
b3JlIHdhcyBhbHNvIG5vdCBhY2NvdW50aW5nIGZvciBJM0Mgc3BlZWQgbGltaXRhdGlvbnMgd2hl
bgo+ID4gPiA+ID4gb3BlcmF0aW5nIGluIG1peGVkIHNsb3cgbW9kZSBhbmQgd2FzIGVycm9uZW91
c2x5IHVzaW5nIEZNKyBzcGVlZCBhcyB0aGUKPiA+ID4gPiA+IG1heCBJMkMgc3BlZWQgd2hlbiBv
cGVyYXRpbmcgaW4gbWl4ZWQgZmFzdCBtb2RlLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBGaXhlczog
M2EzNzliYmNlYTBhICgiaTNjOiBBZGQgY29yZSBJM0MgaW5mcmFzdHJ1Y3R1cmUiKQo+ID4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogVml0b3IgU29hcmVzIDx2aXRvci5zb2FyZXNAc3lub3BzeXMuY29t
Pgo+ID4gPiA+ID4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8YmJyZXppbGxvbkBrZXJuZWwub3JnPgo+
ID4gPiA+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgo+ID4gPiA+ID4gQ2M6IDxsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiBDaGFuZ2Vz
IGluIHYyOgo+ID4gPiA+ID4gICBFbmhhbmNlIGNvbW1pdCBtZXNzYWdlCj4gPiA+ID4gPiAgIEFk
ZCBkZXZfd2FybigpIGluIGNhc2UgdXNlci1kZWZpbmVkIGkyYyByYXRlIGRvZXNuJ3QgbWF0Y2gg
TFZSIGNvbnN0cmFpbnQKPiA+ID4gPiA+ICAgQWRkIGRldl93YXJuKCkgaW4gY2FzZSB1c2VyLWRl
ZmluZWQgaTNjIHJhdGUgbG93ZXIgdGhhbiBpMmMgcmF0ZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
IGRyaXZlcnMvaTNjL21hc3Rlci5jIHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0OCBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaTNjL21hc3Rlci5jIGIvZHJpdmVycy9pM2MvbWFzdGVyLmMKPiA+ID4gPiA+
IGluZGV4IDVmNGJkNTIuLjhjZDU4MjQgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2kz
Yy9tYXN0ZXIuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9pM2MvbWFzdGVyLmMKPiA+ID4gPiA+
IEBAIC05MSw2ICs5MSwxMiBAQCB2b2lkIGkzY19idXNfbm9ybWFsdXNlX3VubG9jayhzdHJ1Y3Qg
aTNjX2J1cyAqYnVzKQo+ID4gPiA+ID4gIAl1cF9yZWFkKCZidXMtPmxvY2spOwo+ID4gPiA+ID4g
IH0KPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICtzdGF0aWMgc3RydWN0IGkzY19tYXN0ZXJfY29udHJv
bGxlciAqCj4gPiA+ID4gPiAraTNjX2J1c190b19pM2NfbWFzdGVyKHN0cnVjdCBpM2NfYnVzICpp
M2NidXMpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKwlyZXR1cm4gY29udGFpbmVyX29mKGkzY2J1
cywgc3RydWN0IGkzY19tYXN0ZXJfY29udHJvbGxlciwgYnVzKTsKPiA+ID4gPiA+ICt9Cj4gPiA+
ID4gPiArCj4gPiA+ID4gPiAgc3RhdGljIHN0cnVjdCBpM2NfbWFzdGVyX2NvbnRyb2xsZXIgKmRl
dl90b19pM2NtYXN0ZXIoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiA+ID4gIHsKPiA+ID4gPiA+
ICAJcmV0dXJuIGNvbnRhaW5lcl9vZihkZXYsIHN0cnVjdCBpM2NfbWFzdGVyX2NvbnRyb2xsZXIs
IGRldik7Cj4gPiA+ID4gPiBAQCAtNTY1LDIwICs1NzEsNDggQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkZXZpY2VfdHlwZSBpM2NfbWFzdGVyZGV2X3R5cGUgPSB7Cj4gPiA+ID4gPiAgCS5ncm91cHMJ
PSBpM2NfbWFzdGVyZGV2X2dyb3VwcywKPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4gIAo+ID4gPiA+
ID4gLWludCBpM2NfYnVzX3NldF9tb2RlKHN0cnVjdCBpM2NfYnVzICppM2NidXMsIGVudW0gaTNj
X2J1c19tb2RlIG1vZGUpCj4gPiA+ID4gPiAraW50IGkzY19idXNfc2V0X21vZGUoc3RydWN0IGkz
Y19idXMgKmkzY2J1cywgZW51bSBpM2NfYnVzX21vZGUgbW9kZSwKPiA+ID4gPiA+ICsJCSAgICAg
dW5zaWduZWQgbG9uZyBtYXhfaTJjX3NjbF9yYXRlKQo+ID4gPiA+ID4gIHsKPiA+ID4gPiA+IC0J
aTNjYnVzLT5tb2RlID0gbW9kZTsKPiA+ID4gPiA+ICAKPiA+ID4gPiA+IC0JaWYgKCFpM2NidXMt
PnNjbF9yYXRlLmkzYykKPiA+ID4gPiA+IC0JCWkzY2J1cy0+c2NsX3JhdGUuaTNjID0gSTNDX0JV
U19UWVBfSTNDX1NDTF9SQVRFOwo+ID4gPiA+ID4gKwlzdHJ1Y3QgaTNjX21hc3Rlcl9jb250cm9s
bGVyICptYXN0ZXIgPSBpM2NfYnVzX3RvX2kzY19tYXN0ZXIoaTNjYnVzKTsKPiA+ID4gPiA+ICAK
PiA+ID4gPiA+IC0JaWYgKCFpM2NidXMtPnNjbF9yYXRlLmkyYykgewo+ID4gPiA+ID4gLQkJaWYg
KGkzY2J1cy0+bW9kZSA9PSBJM0NfQlVTX01PREVfTUlYRURfU0xPVykKPiA+ID4gPiA+IC0JCQlp
M2NidXMtPnNjbF9yYXRlLmkyYyA9IEkzQ19CVVNfSTJDX0ZNX1NDTF9SQVRFOwo+ID4gPiA+ID4g
LQkJZWxzZQo+ID4gPiA+ID4gLQkJCWkzY2J1cy0+c2NsX3JhdGUuaTJjID0gSTNDX0JVU19JMkNf
Rk1fUExVU19TQ0xfUkFURTsKPiA+ID4gPiA+ICsJaTNjYnVzLT5tb2RlID0gbW9kZTsKPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ICsJc3dpdGNoIChpM2NidXMtPm1vZGUpIHsKPiA+ID4gPiA+ICsJY2Fz
ZSBJM0NfQlVTX01PREVfUFVSRToKPiA+ID4gPiA+ICsJCWlmICghaTNjYnVzLT5zY2xfcmF0ZS5p
M2MpCj4gPiA+ID4gPiArCQkJaTNjYnVzLT5zY2xfcmF0ZS5pM2MgPSBJM0NfQlVTX1RZUF9JM0Nf
U0NMX1JBVEU7Cj4gPiA+ID4gPiArCQlicmVhazsKPiA+ID4gPiA+ICsJY2FzZSBJM0NfQlVTX01P
REVfTUlYRURfRkFTVDoKPiA+ID4gPiA+ICsJCWlmICghaTNjYnVzLT5zY2xfcmF0ZS5pM2MpCj4g
PiA+ID4gPiArCQkJaTNjYnVzLT5zY2xfcmF0ZS5pM2MgPSBJM0NfQlVTX1RZUF9JM0NfU0NMX1JB
VEU7Cj4gPiA+ID4gPiArCQlpZiAoIWkzY2J1cy0+c2NsX3JhdGUuaTJjKQo+ID4gPiA+ID4gKwkJ
CWkzY2J1cy0+c2NsX3JhdGUuaTJjID0gbWF4X2kyY19zY2xfcmF0ZTsKPiA+ID4gPiA+ICsJCWJy
ZWFrOwo+ID4gPiA+ID4gKwljYXNlIEkzQ19CVVNfTU9ERV9NSVhFRF9TTE9XOgo+ID4gPiA+ID4g
KwkJaWYgKCFpM2NidXMtPnNjbF9yYXRlLmkyYykKPiA+ID4gPiA+ICsJCQlpM2NidXMtPnNjbF9y
YXRlLmkyYyA9IG1heF9pMmNfc2NsX3JhdGU7Cj4gPiA+ID4gPiArCQlpZiAoIWkzY2J1cy0+c2Ns
X3JhdGUuaTNjIHx8Cj4gPiA+ID4gPiArCQkgICAgaTNjYnVzLT5zY2xfcmF0ZS5pM2MgPiBpM2Ni
dXMtPnNjbF9yYXRlLmkyYykKPiA+ID4gPiA+ICsJCQlpM2NidXMtPnNjbF9yYXRlLmkzYyA9IGkz
Y2J1cy0+c2NsX3JhdGUuaTJjOwo+ID4gPiA+ID4gKwkJYnJlYWs7Cj4gPiA+ID4gPiArCWRlZmF1
bHQ6Cj4gPiA+ID4gPiArCQlyZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiA+ICAJfQo+ID4gPiA+ID4g
IAo+ID4gPiA+ID4gKwlpZiAoaTNjYnVzLT5zY2xfcmF0ZS5pM2MgPCBpM2NidXMtPnNjbF9yYXRl
LmkyYykKPiA+ID4gPiA+ICsJCWRldl93YXJuKCZtYXN0ZXItPmRldiwKPiA+ID4gPiA+ICsJCQkg
ImkzYy1zY2wtaHo9JWxkIGxvd2VyIHRoYW4gaTJjLXNjbC1oej0lbGRcbiIsCj4gPiA+ID4gPiAr
CQkJIGkzY2J1cy0+c2NsX3JhdGUuaTNjLCBpM2NidXMtPnNjbF9yYXRlLmkyYyk7Cj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArCWlmIChpM2NidXMtPnNjbF9yYXRlLmkyYyAhPSBJM0NfQlVTX0kyQ19G
TV9TQ0xfUkFURSAmJgo+ID4gPiA+ID4gKwkgICAgaTNjYnVzLT5zY2xfcmF0ZS5pMmMgIT0gSTND
X0JVU19JMkNfRk1fUExVU19TQ0xfUkFURSAmJgo+ID4gPiA+ID4gKwkgICAgaTNjYnVzLT5tb2Rl
ICE9IEkzQ19CVVNfTU9ERV9QVVJFKSAgICAKPiA+ID4gPiAKPiA+ID4gPiBJZiB5b3UgYXJlIHNv
IHN0cmljdCwgdGhlcmUncyBjbGVhcmx5IG5vIHBvaW50IGV4cG9zaW5nIGFuIGkyYy1zY2wtaHoK
PiA+ID4gPiBwcm9wZXJ0eS4gSSdtIHN0aWxsIG5vdCBjb252aW5jZWQgaGF2aW5nIGFuIGkyYyBy
YXRlIHRoYXQncyBzbG93ZXIgdGhhbgo+ID4gPiA+IHdoYXQgdGhlIEkyQy9JM0Mgc3BlYyBkZWZp
bmVzIGFzIHRoZSAqdHlwaWNhbCogcmF0ZSBpcyBhIGJhZCB0aGluZywgICAgIAo+ID4gPiAKPiA+
ID4gSSdtIG5vdCBiZWVuIHN0cmljdGl2ZSwgSSBqdXN0IGluZm9ybSB0aGUgdXNlciBhYm91dCB0
aGF0IGNhc2UuICAKPiA+IAo+ID4gVGhlbiB1c2UgZGV2X2RlYnVnKCkgYW5kIGRvbid0IG1ha2Ug
dGhlIHRyYWNlIGNvbmRpdGlvbmFsIG9uCj4gPiBpMmNfcmF0ZSAhPSB0eXBpY2FsX3JhdGUuICAg
Cj4gCj4gT2suIEkgd2lsbCBjaGFuZ2UgdG8gZGV2X2RlYnVnKCkuCj4gCj4gPiBUaGUgb25seSBj
YXNlIHdoZXJlIHdlIHNob3VsZCB3YXJuIHVzZXJzCj4gPiBpcyBpMmNfcmF0ZSA+IHR5cGljYWxf
cmF0ZSwgYmVjYXVzZSB0aGF0IG1pZ2h0IGxlYWQgdG8gbWFsZnVuY3Rpb25zLiAgCj4gCj4gQ2Fu
IHlvdSBleHBsYWluIHdoeT8KCkJlY2F1c2UgdGhlIHNwZWVkIGlzIGxpbWl0ZWQgYnkgdGhlIGRl
dmljZSBjYXBhYmlsaXRpZXMuIFVzaW5nIGEgc2xvd2VyCmZyZXEgd29ya3MsIGRyaXZpbmcgdGhl
IFNMQyBsaW5lIGZhc3RlciB0aGFuIHdoYXQncyBzdXBwb3J0ZWQgYnkgSTJDCnNsYXZlcyBkb2Vz
bid0LgoKPiAKPiA+ICAgCj4gPiA+ICAgCj4gPiA+ID4ganVzdAo+ID4gPiA+IGxpa2UgSSdtIG5v
dCBjb252aW5jZWQgaGF2aW5nIGFuIEkzQyByYXRlIHRoYXQncyBzbG93ZXIgdGhhbiB0aGUgSTJD
Cj4gPiA+ID4gb25lIGlzIGEgcHJvYmxlbSAoaXQncyBkZWZpbml0ZWx5IGEgd2VpcmQgc2l0dWF0
aW9uLCBidXQgdGhlcmUncyBub3RoaW5nCj4gPiA+ID4gcHJldmVudGluZyB0aGF0IGluIHRoZSBz
cGVjKS4gICAgCj4gPiA+IAo+ID4gPiBZb3UgYWdyZWUgdGhhdCB0aGVyZSBpcyBubyBwb2ludCBm
b3IgY2FzZSB3aGVyZSBpM2MgcmF0ZSA8IGkyYyByYXRlIHlldCAKPiA+ID4geW91IGFyZSBub3Qg
Y29udmluY2VkLiAgCj4gPiAKPiA+IEkgZGlkbid0IHNheSB0aGF0LCB0aGVyZSBtaWdodCBiZSB1
c2UgY2FzZXMgd2hlcmUgb25lIHdhbnRzIHRvIHNsb3cKPiA+IGRvd24gdGhlIEkzQyBidXMgdG8g
YmUgYWJsZSB0byBwcm9iZSBpdCBvciB1c2UgYSBzbG93ZXIgcmF0ZSB3aGVuCj4gPiB0aGluZ3Mg
ZG8gbm90IHdvcmsgcHJvcGVybHkuIEl0J3MgcmF0aGVyIHVubGlrZWx5IHRvIGhhcHBlbiwgYnV0
IEkKPiA+IGRvbid0IHRoaW5rIGl0IGRlc2VydmVzIGEgd2FybmluZyBtZXNzYWdlIHdoZW4gdGhh
dCdzIHRoZSBjYXNlLgo+ID4gICAKPiA+ID4gRG8geW91IHRoaW5nIHRoYXQgd2lsbCBiZSB1c2Vy
cyBmb3IgdGhpcyBjYXNlPwo+ID4gPiAKPiA+ID4gQW55d2F5LCB0aGlzIGlzbid0IGEgaGlnaCBy
ZXF1aXJlbWVudCBmb3IgbWUuIFRoZSBhbGwgcG9pbnQgb2YgdGhpcyBwYXRjaCAKPiA+ID4gaXMg
dG8gaW50cm9kdWNlIHRoZSBsaW1pdGVkIGJ1cyBjb25maWd1cmF0aW9uLiAgCj4gPiAKPiA+IEFu
ZCB5ZXQsIHlvdSBrZWVwIGluc2lzdGluZyAoYW5kIGlnbm9yaW5nIG15IGZlZWRiYWNrKSBvbiB0
aGF0IHBvaW50IDpQLiAgCj4gCj4gSWYgeW91IGNoZWNrIHRoZSBwcmV2aW91cyB2ZXJzaW9uIHlv
dSBzZWUgdGhhdCBJJ20gdHJ5aW5nIHRvIGZvbGxvdyDwn5iJCj4gSSB3aWxsIGNoYW5nZSB0aGUg
ZGV2X3dhcm4oKSB0byBkZXZfZGJnKCkgZHVlIHRoZSB0cmFjZSBpcyBpbmRlZWQgdG9vIAo+IG11
Y2guCgpJIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCB5b3UgZW5kbGVzc2x5IGFyZ3VlIG9uIGRldGFp
bHMgd2hpbGUgdGhlIHZhc3QKbWFqb3JpdHkgb2YgY2hhbmdlcyBhcmUgb2theSwgd2hpY2ggbWVh
bnMgd2UgYm90aCBzcGVuZCBhIGxvdCBvZiB0aW1lCm9uIHRoaW5ncyB0aGF0IGFyZSBub3Qgc3Vw
ZXIgaW1wb3J0YW50LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtaTNjIG1haWxpbmcgbGlzdApsaW51eC1pM2NAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWkzYwo=
