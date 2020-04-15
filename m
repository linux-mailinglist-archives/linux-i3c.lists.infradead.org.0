Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8581A95B4
	for <lists+linux-i3c@lfdr.de>; Wed, 15 Apr 2020 10:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b6UnNHQpJYdL9E+6UaFSSQdy8qESn5aXgdfxUz0uJKQ=; b=Mmm/53QeuL/ldIbganvTUgFjA
	GpBxBgfqwdTx6lTuSBbq+CDCPRAYKuWtp+sZ9t7SdxbtSD78rA+g6DCl8pvJ+aZfMgFwP02akiZaX
	rMQLUE8DEDgJs961yy1RqpjTtmKYKRhiMdzklil0uMlO/lxClwGe2vxKrH//5WtsNj6ogXxW7yC84
	M3ES8n7UJmuUFJ4n6buNsZJDGnaTGiVPOJmCLdv4vMBYOauHwpcgaTQGRNaMj9k0f6BDatCKwQkmo
	H9A+NSXQX9bl/+MR+HlUWZmqR0U6pun5YcyrGAUc9DYCRl3KoEGky/5ZdcsEuqyo9dy6TamoHMHsK
	YLNgv6Z1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd82-0008JS-Vm
	for lists+linux-i3c@lfdr.de; Wed, 15 Apr 2020 08:10:38 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd80-0008G6-No
 for linux-i3c@lists.infradead.org; Wed, 15 Apr 2020 08:10:38 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id E7DA52C1F58;
 Wed, 15 Apr 2020 10:10:35 +0200 (CEST)
Date: Wed, 15 Apr 2020 10:10:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [RFC PATCH v2 5/6] i2c: of: mark a whole array of regs as reserved
Message-ID: <20200415081035.GB1141@ninjato>
References: <20200318150059.21714-1-wsa+renesas@sang-engineering.com>
 <20200318150059.21714-6-wsa+renesas@sang-engineering.com>
 <c4e41b0a-4b9a-0db9-94dc-bbbc2f013133@lucaceresoli.net>
MIME-Version: 1.0
In-Reply-To: <c4e41b0a-4b9a-0db9-94dc-bbbc2f013133@lucaceresoli.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_011036_926213_CEA03B3D 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
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
Cc: Jacopo Mondi <jacopo@jmondi.org>, Kieran Bingham <kieran@bingham.xyz>,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-i3c@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: multipart/mixed; boundary="===============8211311878504398267=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============8211311878504398267==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s/l3CgOIzMHHjg/5"
Content-Disposition: inline


--s/l3CgOIzMHHjg/5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > -int of_i2c_get_board_info(struct device_node *node, struct i2c_board_i=
nfo *info)
> > +static void of_i2c_decode_board_info(struct device_node *node, u32 add=
r,
> > +				     bool first_addr, struct i2c_board_info *info)
>=20
> While I confirm the patch looks generally OK, let me add the name of
> this function is not quite self-explaining. The difference between "get"
> and "decode" has nothing to do with the different actions these
> functions do, i.e. the new function gets (or: decodes) info about  a
> single address that is passed, the old "get" function gets the info for
> the first address.
>
> I'd suggest the new function be named of_i2c_get_board_info_one_addr or
> similar. Not super nice, a bit long, but self-explanatory.

I view them a bit differently, I think. of_i2c_decode_board_info() is a
helper function to retrieve "some" addr. It is used by
of_i2c_get_board_info() which has the special case of getting the first
address. of_i2c_register_device() is the other user with the case of
getting each address specified. So, I wouldn't put this helper function
on the same level as the users of this helper.

Yet, no strong opinion here, I will think about it...


--s/l3CgOIzMHHjg/5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6WwXsACgkQFA3kzBSg
KbZmFQ/+IKAYZ44eKk5sxMfMCZYEKX5V6zDP8yGqCfmjnxTOrq4DLKZVUnlOV28t
kwwh/lF53CM4/PPXUTjvv11yNRO1dvRJeQvz/O8incejc0VvjAKRIBYWSFG2GvXa
sGH0vupmYyyqc5Vfx2UjrUBpFbLnrhOzCwOOacTDoiwbCcDDIhpVgB+ZbIaHR+Ep
m2BCa6u3+c/4gNgIweYZzhEd6YkgDkEdjYefCrhhwpkr8aGs+wYiCzjipTreDtYf
mIc4irogCauwpaCGX8tmzQj2/o6P4iT4pEIscO9wcHQMcOJmthK/8HcFt+x7Dfrw
7SvCBr8l5QmsyAR3Smbn8zrfw1YjSUvfu4tjRGbHQx8UuDfVeiyWy8+AHHJ7ApoF
X/4lBTVf5JPdG8ZnypVlb+s5SDcfOuJ7F7QTIrWGope4rdihHXyjX2ulukHsEZ9j
kYt759X+70ZfNaslgUdkZG2HGbCOlRUz/n2kV5moW0u18UZnFypvV1av2Z2kq8B2
7IC409rd5GVvi+V15JouiVRuRvWFTczjeuFfErjo3KiyVU3ZvPkfem0XhFDSrIUP
lQNSMIiyu8Cp3Oz4T3SXAPV3Hn3YwyqcWiEItWrtw8Ttu6mfuGmwOjbdGSg4ANGG
Qkx23jFosDHtthO02SgOED1J+GAj1BUqwienkWfN0+PbvKzoTQE=
=DyfA
-----END PGP SIGNATURE-----

--s/l3CgOIzMHHjg/5--


--===============8211311878504398267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============8211311878504398267==--

