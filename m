Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600E3FC812
	for <lists+linux-i3c@lfdr.de>; Thu, 14 Nov 2019 14:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzJdyRgeT0ONlX/6Noep6pPitwC9kapQqzYg6ZoRAvg=; b=QsH4XRxYiL8S5E
	cZouy+Es+q/zvwhywf6qorI7XnWDdq2YWaEbKzRYq39H3LOLcV2CHfFwbb7tBraUsRfD2cnZqsPL0
	yWJ9Z2mtKiwgHWocCbkJDFHapBecKNaOecmkoqCEBl3yRFg0uSoK8wEuDUm148dcmlk5HgZpwNNzm
	hzz1SW0/4eupJ47fUULkE/RPP0/aNmdzFxST+wTxPP1NTsTt7yh6JheLgeJqN1OI8XcPHQXwbVcMq
	kkuINdkDpA/FO6sRmHH0qiELW7B7CEHTTp1hgrC+R0buHYUWYck7S5PNurpXsR+boROYAL1ajNAiR
	RzuVcLRhg4VcP5y33rVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFRz-0002IX-69
	for lists+linux-i3c@lfdr.de; Thu, 14 Nov 2019 13:46:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFRt-0002Hu-KL
 for linux-i3c@lists.infradead.org; Thu, 14 Nov 2019 13:46:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BF83F2916AE;
 Thu, 14 Nov 2019 13:46:11 +0000 (GMT)
Date: Thu, 14 Nov 2019 14:46:08 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: [PATCH 0/3] Add data hold delay support
Message-ID: <20191114144551.4187734f@gmail.com>
In-Reply-To: <CH2PR12MB4216672A1434669746774917AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <20191114055155.20446-1-pgaj@cadence.com>
 <CH2PR12MB4216AF4224EDEE99E6C4B74FAE710@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191114124855.GA13588@global.cadence.com>
 <CH2PR12MB4216672A1434669746774917AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_054613_794688_750E7DBA 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Przemyslaw Gaj <pgaj@cadence.com>,
 "agolec@cadence.com" <agolec@cadence.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "rafalc@cadence.com" <rafalc@cadence.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 13:31:33 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> Hi,
> 
> From: Przemyslaw Gaj <pgaj@cadence.com>
> Date: Thu, Nov 14, 2019 at 12:48:56
> > 
> > There is new controller functionality which allows to meet SDA to SCL
> > propagation time. Baisically, you can delay SDA propagation using this
> > functionality to meet I3C MIPI spec timing. This is very useful for some
> > SoC designs.
> > 
> > From Spec:
> > Table 75 of MIPI I3C Specification 1.0 (page 142) defines non-zero
> > minimal tHD_PP timing on master output (Fig 65). This setting allows to
> > meet this timing on master's soc outputs, regardless of PCB balancing.
> >   
> > > 
> > > Best regards,
> > > Vitor Soares  
> > 
> > -- 
> > -- 
> > Przemyslaw Gaj  
> 
> Thanks for pointing me the right place to read about it.
> I would suggest you to put that info in the patch as well.

I agree. The spec details should be mentioned in the commit message and
in the code as well (in a comment).

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
