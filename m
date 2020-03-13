Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF646184715
	for <lists+linux-i3c@lfdr.de>; Fri, 13 Mar 2020 13:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RAehSNVWHwWIra+hDLsgX4aXZ8bzWilSd/q+TJsaDo4=; b=B6yxwxWhtv3LggKM77w9dmmVg
	OFQq30u+X043bSD4XycGeybVEDafxNC5dV0MH0jgdtsQzGxlr4m5P93TG33CKf7eB5yzHYLpqYOhP
	HZyWI4kzWdLhmUdMCO/56Er9uVjRTvO7DSu6khPdhTEX/rh7lXFOm30Ht/SaS2eZAxPev+RyMvk/V
	d1BbhHP3JVsA8joifRnAFREYdFA4zAxyVkRUiQL5Qo5sxpq1Ub44H2uI+TStUSEMy5wrx/U8cgLUM
	dPsuLlBMS4AQOj2B+E1jlMpfi3zDneuPFBQlbDSpvCePWfDfGaNrvRJwu09pAsDbstf8A59KhPZzK
	woQW6LjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjdy-0002Xt-Gw
	for lists+linux-i3c@lfdr.de; Fri, 13 Mar 2020 12:42:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjdu-0002Wm-EX
 for linux-i3c@lists.infradead.org; Fri, 13 Mar 2020 12:42:24 +0000
Received: from localhost (p54B3314F.dip0.t-ipconnect.de [84.179.49.79])
 by pokefinder.org (Postfix) with ESMTPSA id ED39D2C1ED4;
 Fri, 13 Mar 2020 13:42:17 +0100 (CET)
Date: Fri, 13 Mar 2020 13:42:14 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [RFC PATCH 7/7] i2c: core: hand over reserved devices when
 requesting ancillary addresses
Message-ID: <20200313124214.GA1299@ninjato>
References: <20200220172403.26062-1-wsa+renesas@sang-engineering.com>
 <20200220172403.26062-8-wsa+renesas@sang-engineering.com>
 <CAMuHMdV-dfjukuSKiFg4vb4Ntn+XWU0XwHPxyoaWs1vtQVg4cw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV-dfjukuSKiFg4vb4Ntn+XWU0XwHPxyoaWs1vtQVg4cw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_054222_785866_0F3B703F 
X-CRM114-Status: GOOD (  13.06  )
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
Content-Type: multipart/mixed; boundary="===============0708024853541113083=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============0708024853541113083==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > @@ -984,7 +986,21 @@ struct i2c_client *i2c_new_ancillary_device(struct=
 i2c_client *client,
> >                         of_property_read_u32_index(np, "reg", i, &addr);
> >         }
> >
> > -       dev_dbg(&client->adapter->dev, "Address for %s : 0x%x\n", name,=
 addr);
> > +       dev_info(adapter_dev, "Address for %s : 0x%x\n", name, addr);
> > +
> > +       /* No need to scan muxes, siblings must sit on the same adapter=
 */
> > +       reserved_dev =3D device_find_child(adapter_dev, &addr, __i2c_ch=
eck_addr_busy);
> > +       reserved_client =3D i2c_verify_client(reserved_dev);
> > +
> > +       if (reserved_client) {
> > +               if (reserved_client->dev.of_node !=3D np ||
> > +                   strcmp(reserved_client->name, I2C_RESERVED_DRV_NAME=
) !=3D 0)
> > +                       return ERR_PTR(-EBUSY);
>=20
> Missing put_device(reserved_dev).

Actually, I think the code could even be like this:

	struct i2c_client *reserved_client =3D NULL;

	...

	reserved_dev =3D device_find_child(adapter_dev, &addr, __i2c_check_addr_bu=
sy);
	if (reserved_dev) {
		reserved_np =3D reserved_dev->of_node;
		reserved_client =3D i2c_verify_client(reserved_dev);
		put_device(reserved_dev);
	}

	if (reserved_client) {
		if (reserved_np !=3D np ||
		    strcmp(reserved_client->name, I2C_RESERVED_DRV_NAME) !=3D 0)
			return ERR_PTR(-EBUSY);

		strlcpy(reserved_client->name, I2C_DUMMY_DRV_NAME, sizeof(client->name));
		return reserved_client;
	}

	return i2c_new_dummy_device(client->adapter, addr);

We put the device early - as soon we don't access the struct anymore. I
think we don't need the refcnt any further because what we are doing
here is to hand over the initial refcnt from the core to the requesting
driver. We turn the device from "reserved" (internally managed) to
"dummy" (managed by the driver). So, I think the code is okay regarding
the struct device. I will have a second look when it comes to
concurrency problems regarding the struct i2c_client, though.

> (perhaps i2c_verify_client() checking dev was not such a great idea, as
>  callers need to act on dev && !verified anyway?)

Yeah, since I refactored the ACPI code as well, patch 1 from this series
can probably go.

Thanks again for your review, Geert!


--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5rf6IACgkQFA3kzBSg
KbbLIw/+MOFwZSkWXt3ikwM+7rKei/WFEDfa/TZK7lKKvujaNfalPdxSx8w7M5dc
V5uUDpEeCiJAn+TO+vOv+i5McITg+GDMiUQvbIqAtzVh+2jqNEkJIaMz+5wlefWG
hcpujZdvPfrQNPf1FM77HO0WI9oChGBJkMb9tLbzm5yHLYh4zMq0aK+Z+oZQ7441
Lz2t2Yp+u4ikEHCvZWQVzOfyGRb2r/4nI5VuLbk8BhnlctKB3ALytdGws0QSctjH
qPz0ePJQ4kXQ/Ch1oVOh9LfTGRGlk3hA2Sa1G0Kk9t42e+C2DmFWh8AYV16kZ8n7
8MF/mUVBrebEzijOyDcUbBt9LYJwr+lsuej94/afVqk68b+s/cal2ZTYjNrX5QM3
/FNYqVV/tvmzmxPoO93IxFBPYethKY7i0jFgflmkzFhWGZv2H6UyU9U0UbH0dDlC
Cw8hjC1de2zxLP2xezv2vv5DH7Py1SFDfAU4xc9Xh/7HQFE9kLYbESG9cEh7mWLU
FC6T9KRrrzkkFNn0cCo0wqmqn+yrA5a9YGkTfQg733bxB0DQINcfo7m7FQPiS1OY
7ZxNfj9IVIpOShOi+/26bTkj8AemRPnRCy9MAHREFza55LU+7GGDkHQJKDqKZI2q
6oI1uERpxeyZoQMTEhRiR8IM2CGy9LtL3ZGe11+NI6aXGe+hdL4=
=VJ9d
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--


--===============0708024853541113083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============0708024853541113083==--

