Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED97A16FE3B
	for <lists+linux-i3c@lfdr.de>; Wed, 26 Feb 2020 12:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEdOy6iJ04cDoU2uptiwR97NOrJK9h5deT0n0K3qoOY=; b=Qv+vd+2m+j4qpn
	Yqg45+cAyvgPPcRsEHSsFr1ZuqBbnox+nPnbm/SYdbXH5OZYX5tgfDUIm3wTApVD0GXl8Y1cEeQsc
	s1rAE6N12W4C97Z1uSk9bUtTAwtIDHjtZmbTQM14G4SY1STgwYykSDn4pnSy0WiW5tQ3aRauJ+MLi
	GtWtpYTkYuq2DGGYhpay8Z62r1qlASZoShlR6+n2j0Jeik8GK5EWa1QWmseSn1UIDgwN28Ik5Krvi
	msjP29l02F0Vafc2bpuKOTPY9ke9v3oGtWyFe1h2IH3SUOTCSeOtvKjXd2aoaiDLNfoxT5b2KD2Gf
	SP7HlfTWLVbwbQoqczmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vCd-0000D8-Cy
	for lists+linux-i3c@lfdr.de; Wed, 26 Feb 2020 11:50:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vCa-00087l-JE
 for linux-i3c@lists.infradead.org; Wed, 26 Feb 2020 11:50:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 11C0128A34E;
 Wed, 26 Feb 2020 11:50:07 +0000 (GMT)
Date: Wed, 26 Feb 2020 12:50:04 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Boris Brezillon <bbrezillon@kernel.org>, =?UTF-8?B?UHJ6ZW15c8WCYXc=?=
 Gaj <pgaj@cadence.com>, Vitor Soares <Vitor.Soares@synopsys.com>,
 linux-i3c@lists.infradead.org
Subject: Re: [PATCH 2/3] i3c: Generate aliases for i3c modules
Message-ID: <20200226125004.39748c1d@collabora.com>
In-Reply-To: <20200222102711.1352006-3-boris.brezillon@collabora.com>
References: <20200222102711.1352006-1-boris.brezillon@collabora.com>
 <20200222102711.1352006-3-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_035008_792605_4DA2CFFE 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 11:27:10 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> +static int do_i3c_entry(const char *filename, void *symval,
> +			char *alias)
> +{
> +	DEF_FIELD(symval, i3c_device_id, match_flags);
> +	DEF_FIELD(symval, i3c_device_id, dcr);
> +	DEF_FIELD(symval, i3c_device_id, manuf_id);
> +	DEF_FIELD(symval, i3c_device_id, part_id);
> +	DEF_FIELD(symval, i3c_device_id, extra_info);
> +
> +	strcpy(alias, "i3c:");
> +	ADD(alias, "dcr", match_flags & I3C_MATCH_DCR, dcr);
> +	ADD(alias, "manuf", match_flags & I3C_MATCH_MANUF, dcr);

							    ^manuf_id

> +	ADD(alias, "part", match_flags & I3C_MATCH_PART, dcr);

							  ^part_id

> +	ADD(alias, "ext", match_flags & I3C_MATCH_EXTRA_INFO, dcr);

								^extra_info


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
