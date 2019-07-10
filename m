Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127C364CE9
	for <lists+linux-i3c@lfdr.de>; Wed, 10 Jul 2019 21:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aXPxtkteIKQ3lRLojJJcjTOeV2bwJkpFeelCPJt2ZRs=; b=AQ+RevArBloy4gM+W1jVir3Z/
	PCr7vvGAAZSuzkoDR60VXEx9VA/ipAoztVrl4nYuxP6HMi5s4s1w0uesenzjpRBJdTpr+e2b2kPt0
	JVoNv7NQgp9d8862FoMG9j+3OvoMhYrhDoj1rLE9K8Q0GpFOFZCNoUc918vcBA8xeGMvkbseKz282
	nWupQTvSgaCUfOrprBqs4hHDWVJHjza8DeJSv1Ot3V59MKTZqW7oemR5/1zxXfy5saI57zO8lCKo6
	XaA3qBRaqRn1PerqzaerM/pxKBJ9qfevQ/vc4QZsyQ8d7Qn7KJ6pWhhdf2E7ek+gCMmgbmdG3h9cN
	8uZLEOsew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIVk-0003Aw-Eg
	for lists+linux-i3c@lfdr.de; Wed, 10 Jul 2019 19:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIVh-0003A5-12
 for linux-i3c@lists.infradead.org; Wed, 10 Jul 2019 19:44:14 +0000
Received: from lore-desk-wlan.lan (unknown [151.66.63.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A935B2087F;
 Wed, 10 Jul 2019 19:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562787851;
 bh=KQ9dpBUN+zkkfv1JhBanSAaY9RnA/Nj1iA945a/BcG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kReqj31G3gpMk681VjGLc1NjF9uqTpJjvf0QCoIrZoZDaNnJQFvnXCyd55XD6o+V0
 lRRx0x34f5Twyj3QftyZd4pE5y+5PjinXtI+Q6oAr2v5xtHnvkWR2dAR0dLcYJnvW3
 zztPHQohMHqeZ0hcBfXylERq3kaM/KD+OnV/gGfw=
Date: Wed, 10 Jul 2019 21:44:05 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH v3 3/3] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Message-ID: <20190710194405.GA10520@lore-desk-wlan.lan>
References: <cover.1562767521.git.vitor.soares@synopsys.com>
 <73955529ae0c31f428221abb88031ab3b4165659.1562767521.git.vitor.soares@synopsys.com>
MIME-Version: 1.0
In-Reply-To: <73955529ae0c31f428221abb88031ab3b4165659.1562767521.git.vitor.soares@synopsys.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_124413_151287_3FA58496 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-i3c@lists.infradead.org, bbrezillon@knernel.org
Content-Type: multipart/mixed; boundary="===============0236174895933123607=="
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org


--===============0236174895933123607==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> For today the st_lsm6dsx driver support LSM6DSO and LSM6DSR sensor only in
> spi and i2c mode.
>=20
> The LSM6DSO and LSM6DSR are also i3c capable so lets give i3c support to
> them.

Hi Vitor,

just few comments inline.

Regards,
Lorenzo

>=20
> Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> Changes in v3:
>   Remove unnecessary st_lsm6dsx_i3c_data table used to hold device name
>   Use st_lsm6dsx_probe new form
>=20
> Changes in v2:
>   Add support for LSM6DSR
>   Set pm_ops to st_lsm6dsx_pm_ops
>=20
>  drivers/iio/imu/st_lsm6dsx/Kconfig          |  8 +++-
>  drivers/iio/imu/st_lsm6dsx/Makefile         |  1 +
>  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c | 61 +++++++++++++++++++++++=
++++++
>  3 files changed, 69 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
>=20

[...]

> diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c b/drivers/iio/im=
u/st_lsm6dsx/st_lsm6dsx_i3c.c
> new file mode 100644
> index 0000000..f683754
> --- /dev/null
> +++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.
> + *
> + * Author: Vitor Soares <vitor.soares@synopsys.com>
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/i3c/device.h>
> +#include <linux/i3c/master.h>
> +#include <linux/slab.h>
> +#include <linux/of.h>
> +#include <linux/regmap.h>
> +
> +#include "st_lsm6dsx.h"
> +
> +static const struct i3c_device_id st_lsm6dsx_i3c_ids[];
> +

why do we need this? I guess you can just move st_lsm6dsx_i3c_ids definitio=
n here

> +static const struct regmap_config st_lsm6dsx_i3c_regmap_config =3D {
> +	.reg_bits =3D 8,
> +	.val_bits =3D 8,
> +};
> +
> +static int st_lsm6dsx_i3c_probe(struct i3c_device *i3cdev)
> +{
> +	const struct i3c_device_id *id =3D i3c_device_match_id(i3cdev,
> +							    st_lsm6dsx_i3c_ids);

i3c_device_match_id can theoretically fail so is it better to check
return value here? (maybe I am too paranoid :))

> +	struct regmap *regmap;
> +	int hw_id =3D (int)id->data;

I guess we do not need this since we use it just in st_lsm6dsx_probe(),
we can just do:

return st_lsm6dsx_probe(&i3cdev->dev, 0, (int)id->data, regmap);
> +
> +	regmap =3D devm_regmap_init_i3c(i3cdev, &st_lsm6dsx_i3c_regmap_config);
> +	if (IS_ERR(regmap)) {
> +		dev_err(&i3cdev->dev, "Failed to register i3c regmap %d\n",
> +			(int)PTR_ERR(regmap));
> +		return PTR_ERR(regmap);
> +	}
> +
> +	return st_lsm6dsx_probe(&i3cdev->dev, 0, hw_id, regmap);
> +}
> +
> +static const struct i3c_device_id st_lsm6dsx_i3c_ids[] =3D {
> +	I3C_DEVICE(0x0104, 0x006C, (void *)ST_LSM6DSO_ID),
> +	I3C_DEVICE(0x0104, 0x006B, (void *)ST_LSM6DSR_ID),
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(i3c, st_lsm6dsx_i3c_ids);
> +
> +static struct i3c_driver st_lsm6dsx_driver =3D {
> +	.driver =3D {
> +		.name =3D "st_lsm6dsx_i3c",
> +		.pm =3D &st_lsm6dsx_pm_ops,
> +	},
> +	.probe =3D st_lsm6dsx_i3c_probe,
> +	.id_table =3D st_lsm6dsx_i3c_ids,
> +};
> +module_i3c_driver(st_lsm6dsx_driver);
> +
> +MODULE_AUTHOR("Vitor Soares <vitor.soares@synopsys.com>");
> +MODULE_DESCRIPTION("STMicroelectronics st_lsm6dsx i3c driver");
> +MODULE_LICENSE("GPL v2");
> --=20
> 2.7.4
>=20

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXSZAAgAKCRA6cBh0uS2t
rEdhAP9qPkBeOryzKC0RGfqKR+Qp8cZ9cqsNUGpjjM+aDt3PkgD/Z4fhMOTocnhw
qCQjPYrnX4PkPS1JmbrgxP6WO3svsgs=
=KFKC
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============0236174895933123607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c

--===============0236174895933123607==--

