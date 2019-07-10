Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716F6648D6
	for <lists+linux-i3c@lfdr.de>; Wed, 10 Jul 2019 17:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wm3jJetO23OrZrtnEGF934y1mi9q0UfT7AmaePBfy/0=; b=Oe8AW6D32XJ1A7l8VzCGKocRj
	nAiuv5XR3aeNkeFqC9N+0AVKJKy0CujfKDgugAiwyOxCRp8gAEee05L/RXewVADPEqg/i1sF2Y3OJ
	5XjAFoguJcKRoZNpaHFFLNx5eBM3m9Q+m59LwG2Ns3j2wgb8enMffUeECK5DY/FSbuItsYhS0rPmk
	nO8KdQMfKw/xAVr+Swc00EQrLzLH1Y1hHVQZ1F921J0RmUcF94HLyZby2tGPEIgOTHbHEmmL82WVa
	QMQHTZHwv3rRy3ZC3luYef9aC/2xwp+kh4TDfIjCs9k9RE83kfzhXf2WClB+c15oxBkdhnWUCNct1
	rHycsFgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlE75-0002VP-Kv
	for lists+linux-i3c@lfdr.de; Wed, 10 Jul 2019 15:02:31 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlE6z-0002RP-Mr
 for linux-i3c@lists.infradead.org; Wed, 10 Jul 2019 15:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UkJApDVtYdjMZ/Ry2QgZ6VYCCwj+gEO2YxXHCf2mZhU=; b=f2E0/B7VukYp8wrlzR1MyP8vF
 CNF7UQFCyToADC3pQib4MtOu0YqRmK9PRe87TNaHkya7/jexN8YOIOpXlXEqczXyMrRKtnTgK4Adr
 b52ZmIRNqY/4ZOfJURi/7bpBrLoCHBqUweWotftHSbiojG8e1BNpG9eCxO1AL/op7o3yE=;
Received: from [217.140.106.53] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hlE6u-0007xy-Im; Wed, 10 Jul 2019 15:02:20 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 9F8DCD02D51; Wed, 10 Jul 2019 16:02:19 +0100 (BST)
Date: Wed, 10 Jul 2019 16:02:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v3 1/3] regmap: add i3c bus support
Message-ID: <20190710150219.GE14859@sirena.co.uk>
References: <cover.1562767521.git.vitor.soares@synopsys.com>
 <7deb1300474b68ebb6fc3ecb02577e4f657250a5.1562767521.git.vitor.soares@synopsys.com>
MIME-Version: 1.0
In-Reply-To: <7deb1300474b68ebb6fc3ecb02577e4f657250a5.1562767521.git.vitor.soares@synopsys.com>
X-Cookie: Visit beautiful Vergas, Minnesota.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_080225_868292_E52A0945 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-i3c@lists.infradead.org, lorenzo@kernel.org, bbrezillon@knernel.org
Content-Type: multipart/mixed; boundary="===============3995822603725585549=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============3995822603725585549==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0H629O+sVkh21xTi"
Content-Disposition: inline


--0H629O+sVkh21xTi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 10, 2019 at 04:56:37PM +0200, Vitor Soares wrote:
> Add basic support for i3c bus.
> This is a simple implementation that only give support
> for SDR Read and Write commands.

Please do not submit new versions of already applied patches, please
submit incremental updates to the existing code.  Modifying existing
commits creates problems for other users building on top of those
commits so it's best practice to only change pubished git commits if
absolutely essential.

--0H629O+sVkh21xTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0l/foACgkQJNaLcl1U
h9BZPwf/WPHj9YcR+r2Om/TweeAd3+ERdBF7OVYLsMho7Wh2Yu4ERp5W9oapTfrD
NktupKnonwBoMO+mXGXbnIwP0AwNouliXGCqKKohFHw4LJcEPYSwETopror8nwgU
SKGDdEMJtUurQcgDGMAtXB3nWYjAOQJVUgwmLTBQs3apb25uum0AOpu0TQhHPkti
8tHrWbii5lsXzL5w3eRXV8hTvW7/cDXY+mkzEYcLG+I2PByHTpqRK8Ina8hGAw/i
hIKmFBS+n79F8qimM5CJQZFbGD9beT5j6vaBFuP488ltvfY9DIry8e4rfyXfT2z+
p/wOzZKQh7QNqUvalWGsGFujFfJDxw==
=ww1C
-----END PGP SIGNATURE-----

--0H629O+sVkh21xTi--


--===============3995822603725585549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============3995822603725585549==--

