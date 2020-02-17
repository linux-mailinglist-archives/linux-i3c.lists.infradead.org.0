Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F0C161826
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 17:45:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwzYrxh4uqbAp/YnhOK8EhMBqYHP0dL9grHovNt+HiI=; b=MYmPYvQCgO2WMC
	VurZtP0tkxik8WmG27nsuidUrvOx7ra92qOLF8w4fU1dhaeW3Ka4YHmL9uFhYaEfUyqTqJ1pWGAZV
	MLC9REOV/XLS4c23rOXbY47U717gids50KnoaBcaXDdlaYtrDX6nIK5tE2vCdNYFVZQm+6YZaIr6L
	TsGMivzwwtvU51dqd3uBhV3nNL21EGeKdbVm7q7EN+n81vI/jxcAyR7Su4EUO7cBGJwWGdduwF2Fg
	36893TAsD4+VD95Y5xm5sp9smYLhN6gRnJzcK4mN3YFfKg0t+4VGSmFkrmoZO+7q1W0URId6XuPyG
	yRn5dCcvnNZ6lvJergMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jWi-0005Fp-EI
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 16:45:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iIL-0003IQ-4W
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 15:26:50 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7A8B72939C1;
 Mon, 17 Feb 2020 15:26:47 +0000 (GMT)
Date: Mon, 17 Feb 2020 16:26:44 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [RFC v2 4/4] i3c: add i3cdev module to expose i3c dev in /dev
Message-ID: <20200217162644.7f305d58@collabora.com>
In-Reply-To: <442a0c2c52223f9ff1a1d1018ff863fb23105389.1580299067.git.vitor.soares@synopsys.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <442a0c2c52223f9ff1a1d1018ff863fb23105389.1580299067.git.vitor.soares@synopsys.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_072649_305927_356E651B 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Mailman-Approved-At: Mon, 17 Feb 2020 08:45:42 -0800
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, arnd@arndb.de,
 bbrezillon@kernel.org, gregkh@linuxfoundation.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 13:17:35 +0100
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> diff --git a/include/uapi/linux/i3c/i3cdev.h b/include/uapi/linux/i3c/i3cdev.h
> new file mode 100644
> index 0000000..0897313
> --- /dev/null
> +++ b/include/uapi/linux/i3c/i3cdev.h
> @@ -0,0 +1,38 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * Copyright (c) 2019 Synopsys, Inc. and/or its affiliates.
> + *
> + * Author: Vitor Soares <vitor.soares@synopsys.com>
> + */
> +
> +#ifndef _UAPI_I3C_DEV_H_
> +#define _UAPI_I3C_DEV_H_
> +
> +#include <linux/types.h>
> +#include <linux/ioctl.h>
> +
> +/* IOCTL commands */
> +#define I3C_DEV_IOC_MAGIC	0x07

I guess you already made sure there was no collision with other magic
values.

> +
> +/**
> + * struct i3c_ioc_priv_xfer - I3C SDR ioctl private transfer
> + * @data: Holds pointer to userspace buffer with transmit data.
> + * @len: Length of data buffer buffers, in bytes.
> + * @rnw: encodes the transfer direction. true for a read, false for a write
> + */
> +struct i3c_ioc_priv_xfer {
> +	__u64 data;
> +	__u16 len;
> +	__u8 rnw;
> +	__u8 pad[5];
> +};
> +
> +
> +#define I3C_PRIV_XFER_SIZE(N)	\
> +	((((sizeof(struct i3c_ioc_priv_xfer)) * (N)) < (1 << _IOC_SIZEBITS)) \
> +	? ((sizeof(struct i3c_ioc_priv_xfer)) * (N)) : 0)
> +
> +#define I3C_IOC_PRIV_XFER(N)	\
> +	_IOC(_IOC_READ|_IOC_WRITE, I3C_DEV_IOC_MAGIC, 30, I3C_PRIV_XFER_SIZE(N))

Any reason for starting at 30 instead of 0x0 or 0x1?

Also, this ioctl definition is a bit unusual. Most of the time, when we
want to pass an array of elements we pass a struct that contains the
number of entries in this array, and a pointer to the array itself.

struct i3cdev_priv_xfers {
	__u64 nxfers;
	__u64 xfers; /*Use u64_to_user_ptr() to get the __user pointer*/
};

> +
> +#endif


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
