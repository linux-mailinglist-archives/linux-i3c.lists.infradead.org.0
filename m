Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95D7182EEF
	for <lists+linux-i3c@lfdr.de>; Thu, 12 Mar 2020 12:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=acRZSL8tfE+r4N4E7nJ4hou6YWVEWv+GavsKdjZTCvs=; b=DVPWaHBvc1H5srN9wtl+gAQX9
	2E3DM6pRirsKXqEH1BDs+HJee4yP8XcU469j+ddv/V/7qn3c+tPcuH4KjkkKf7KoOx4HLoNQDolwp
	u3vo9h0LPM3MKm3amsYsx1nriVzqMbH4UiVGUR6iXVIoscDpre2SysNoXN409sXLs04C1LjDSD/IY
	J6h5Bl6w7mMg23EABlN/CKJPpLw6oizeg9UcRVbeyscenNaIFmsTUBzvnnQVBPFuBcf0Q4h+wUjGk
	GfB7vfI9Qc4f82oHQ9GxZgMtdcV9dZdfixSymT4VwgR1Yp1Y7bP2/jvNXm6mbHhbbmKlHsPAYXmN7
	kACYaxX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLtm-0006zA-FB
	for lists+linux-i3c@lfdr.de; Thu, 12 Mar 2020 11:21:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLtj-0006ws-9l
 for linux-i3c@lists.infradead.org; Thu, 12 Mar 2020 11:21:09 +0000
Received: from localhost (p54B331A0.dip0.t-ipconnect.de [84.179.49.160])
 by pokefinder.org (Postfix) with ESMTPSA id 71E3C2C1ECC;
 Thu, 12 Mar 2020 12:21:06 +0100 (CET)
Date: Thu, 12 Mar 2020 12:21:06 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [RFC PATCH 6/7] i2c: of: mark a whole array of regs as reserved
Message-ID: <20200312112106.GB1013@ninjato>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-7-wsa+renesas@sang-engineering.com>
 <CAMuHMdUvADDozCX6Bd0dDVejpTY-k42naEnB7Q5Z6w7Yg94_Vw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUvADDozCX6Bd0dDVejpTY-k42naEnB7Q5Z6w7Yg94_Vw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_042107_519823_D96250C9 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Kieran Bingham <kieran@ksquared.org.uk>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: multipart/mixed; boundary="===============0218595598541936708=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============0218595598541936708==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline


--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > +int of_i2c_get_board_info(struct device_node *node, struct i2c_board_i=
nfo *info)
> > +{
> > +       u32 addr;
> > +       int ret;
> > +
> > +       ret =3D of_property_read_u32(node, "reg", &addr);
>=20
> Perhaps the time is ripe to start considering #address-cells, instead
> of assuming 1, here ...

I will check both instances. Thanks, Geert!


--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5qGyEACgkQFA3kzBSg
Kbacgw//d7BKezsM+cMzwalRi0/ITR5ZQag8QKwqATzh94iB4BvWCJpBTUySYyG3
fcjUNvsnpl8UFfayDD3mld3Xy37lOW3sIp+A9ZGezoaMF9oIrigVUNi+q1SWkJXA
GStzUJnvjm2GKpUMTD5AvmrPCbn7ZxNoSfXQXvCqg2XrJnqggJacVHREqSrfb+iC
H9DhIEZ8yD54zWueE4/Bhf/BFs80DYExVB3U7PDLMoQoS9XJkktOpm1W0WnPn9eH
CCbvUIvjtUpZ7zOLrA+YQcGxDQ+++Br52Lb129PraWCtMFYluwckM9SJYjkye9le
4cFxMeh2hPIko5nmbwqnTPoi260QGCBu1UUb8Xy7A3b+0qzMQQRhBSrZde5xvgzs
5XcN/WNAPlDeRuC+lZy2NrinDZgYxWs9Qt1McLzzgumsUnredKCvokMRndk6dab3
6PTAcUC4kcraiiRwk81w8pIYjcZlSXrjnoRPxCb+8da37ksiJ04gdEvH1iOAV0f+
jqofmXdbXZ7iUrMzk3EZFNK0oDHKeEE4PBpz/AWZAKcA0Em5ZFCpIjhCAmtLclOn
/B6dsuS9YAkKVRwQtyKWm+4aKO4kxiqpUJrcZ93VG+wTGQA8qU6qb4tQL/D59a6m
tIhEVvuks81jRSHZxlsg7aG6zMAEVTWTkuZID+90o7WUU7lDwO8=
=3LQe
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--


--===============0218595598541936708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============0218595598541936708==--

