Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92463B043
	for <lists+linux-i3c@lfdr.de>; Mon, 10 Jun 2019 10:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qLZpM9zJhbbWa5fwD4eozBzUOLaTVP5Nzt3sYaOfC2Y=; b=LCF9MomVzx6WmDQcNasN14mtc
	4SaMJy0Pit6HgExbtv86kyOkTPVZekOGrNcZlhBflK7AVc6vVf6Hkm91ysL+bZBpwExceoZClH7mh
	eJt+a6untFLrwB4xzjDSNxKaLpFrWk47Uo+Q8jyWcYHKzbumBnqT/+8h+DnUTzaoPzDC2Is80EKaz
	vAKN6E0HJIQfEQFYu/nVpysQFik+19nwHJyBO0ZItj7i2AYCPiC/DelPBGA1ubZcf+arPRqgF6nvp
	qPqPnD/3NTF9jNvhOFnKHOPQKGO4B4kIbCjvlNwhbrSfyoJLYuCM6hclMfiCGS3BkhYhv7VCT8ZKI
	QRrjSL6VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFQO-0003ch-9n
	for lists+linux-i3c@lfdr.de; Mon, 10 Jun 2019 08:13:04 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZDvo-0004Wc-Cq
 for linux-i3c@lists.infradead.org; Fri, 07 Jun 2019 12:25:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3nVP9gDt3txHjX/lfTqySJ7jSSOdn9odNMlx6IhTVmc=; b=JuDfiZ2OfBP8f3n7ucWRTln2A
 CThNBOTxMcmvdExyUMl0txARRA7/4iyy3UhKCBqEE7AoIzbJajFb53FBkUDGQsY1tLGUdRP0ifdkS
 NjjqHr3VN5lP6bjJDUvMPCRrcrXWbPcuBksDVnVLe+t0iNovbaQ+K9WO+q/76x+qLBK1U=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hZDvi-0002A1-Iw; Fri, 07 Jun 2019 12:25:10 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 099CB440046; Fri,  7 Jun 2019 13:25:09 +0100 (BST)
Date: Fri, 7 Jun 2019 13:25:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v2 1/3] regmap: add i3c bus support
Message-ID: <20190607122508.GG2456@sirena.org.uk>
References: <cover.1559831663.git.vitor.soares@synopsys.com>
 <ff5e96bdd6b2789122afe1980bb20cfa22900760.1559831663.git.vitor.soares@synopsys.com>
MIME-Version: 1.0
In-Reply-To: <ff5e96bdd6b2789122afe1980bb20cfa22900760.1559831663.git.vitor.soares@synopsys.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_052516_587337_BF6EA1E4 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Mailman-Approved-At: Mon, 10 Jun 2019 01:13:02 -0700
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
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 lorenzo.bianconi83@gmail.com, linux-i3c@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0630375032543393310=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============0630375032543393310==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V+NFTlk1jviwRvZ9"
Content-Disposition: inline


--V+NFTlk1jviwRvZ9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 06, 2019 at 05:12:02PM +0200, Vitor Soares wrote:
> Add basic support for i3c bus.
> This is a simple implementation that only give support
> for SDR Read and Write commands.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git tags/regmap-i3c

for you to fetch changes up to 6445500b43129baac36c56d629cf1dd9e1104167:

  regmap: add i3c bus support (2019-06-07 13:09:55 +0100)

----------------------------------------------------------------
regmap: Add I3C bus support

----------------------------------------------------------------
Vitor Soares (1):
      regmap: add i3c bus support

 drivers/base/regmap/Kconfig      |  6 +++-
 drivers/base/regmap/Makefile     |  1 +
 drivers/base/regmap/regmap-i3c.c | 60 ++++++++++++++++++++++++++++++++++++++++
 include/linux/regmap.h           | 20 ++++++++++++++
 4 files changed, 86 insertions(+), 1 deletion(-)
 create mode 100644 drivers/base/regmap/regmap-i3c.c

--V+NFTlk1jviwRvZ9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz6V58ACgkQJNaLcl1U
h9Bgrwf/RXFqk+t+LK0ZAHmeClzyFdvIjZIVL4GILktZ8eCNYn2qztVNFZFCen7N
w6a1vXa3vIwsMEKzreQRjalsBa/8GwnKtnXfJNKME9CVnuK9W9QYxSEocYRvllWk
ZqNj1fYGVsaGDxQ8KQAWZIP3bCF5z/aEZF3F2P+F29OuFVXuyER25r6IojVWO6mx
6ZQySCocUFPeEWj0iin552BqmHTsOjfzUaBz9SIJAjfkxRY8vsROqKcSAfO4dqDV
ZDLAqtE+b8mTsHPDjaEpJXN+rWZtwEahCgAUEBHLgYbAFPhnxwou+LhDv5zMZAYN
iCswU76fTiqPiH3IkR1gE2AN+IExXA==
=gpGF
-----END PGP SIGNATURE-----

--V+NFTlk1jviwRvZ9--


--===============0630375032543393310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============0630375032543393310==--

