Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B132D16111D
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 12:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23EV1EukivDBMX031UzLJM+aL2RLNrRpo5Ubypn+ecA=; b=ao5TCRhCCLH/Lv
	nQOSXlyaG/sLmD7l3LLqkAldphGVHkNLoAp7L5EnEkwj3mlQnPT0PjGs9c+sNVUeYV5dAJUqxR6dh
	MuS5V4Ls9C6J8H3s/OAM0KnIKAqYEoPN7hVBO6Xs+zxDeBmml/11symTHDj1hVW77kwulUX6SlGA0
	lOSu2sLLY+u8YQZbigi/UNNwkI4CPLThXwwO0YVRDDSjI1rIl/E1E8KvHcRrzvfxa0QYOHM8fP8qV
	DAbSc/CmTWiR4PH0vSV8SiF0KocTM2wFpA6jhTVaR+pVLCt/f/MO7lrNWqjQZL/kuohPSkWj1MDcx
	pxAGX5r4IT1V/9p2MZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eaV-0005V6-Fi
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 11:29:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eaT-0005Ua-9m
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 11:29:18 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D9D1A290C75;
 Mon, 17 Feb 2020 11:29:15 +0000 (GMT)
Date: Mon, 17 Feb 2020 12:29:10 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH] i3c: master: no need to iterate master device twice
Message-ID: <20200217122910.696f4fe4@collabora.com>
In-Reply-To: <CH2PR12MB42164D05C1C4353CAC9F4B75AE160@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <20200214145853.24762-1-wsa+renesas@sang-engineering.com>
 <CAMuHMdWwXOb5vkexeop7zaqm7aUYcfMojVj+VrjuTUXJ+kaamA@mail.gmail.com>
 <CH2PR12MB42164D05C1C4353CAC9F4B75AE160@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_032917_477415_F427DC4E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 10:43:49 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> ++Boris Brezillon,
> 
> Hi,
> 
> I didn't received the patch neither is in pachtwork I3C ML, it might be 
> held on the server.
> 
> @Boris Brezillon: Could you please check it?

Done.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
