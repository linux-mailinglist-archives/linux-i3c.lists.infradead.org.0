Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD668451
	for <lists+linux-i3c@lfdr.de>; Mon, 15 Jul 2019 09:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/LfLKHNCywlj79i2bmBOgDLS9sRpqEA13qh4Yx/4B4=; b=Vili1MBYy8iTKh
	qpQm7ajX2NnD0hts0wlNErcO3R6RPmauzEpzJv4pHK8eg02W9fG1kgTI9HO1msSAn+iHHPCzG8OSb
	zbHmFDq9deyibAukix1UtonqE+2N0cIEzUFEHEs3ovhKziZSGa5ysrXBuZZeiGC8ctTVQxW/M8Nzp
	YRffiWO0pFIDZ69fUywFIcYnTgyQi2eJlktcl+1UX5v635sF1xdyUhYJc1rrELROVZBO4J269pugX
	LHCIyBoP9/d5WxxNBaxIm681CpQ6JVCMwZJZPA7Mca4Xwr2uFsNWTLsSdwrRxyfwIwcNJVGX5MiSK
	/a4SIwu4E0kSkoU3m5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvMA-0001Ks-AP
	for lists+linux-i3c@lfdr.de; Mon, 15 Jul 2019 07:25:06 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyP8-00029C-Vm
 for linux-i3c@lists.infradead.org; Fri, 12 Jul 2019 16:28:16 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 953F6C0A65;
 Fri, 12 Jul 2019 16:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562948894; bh=J4HeBr6XY+JUs/Jjx0SFZMnhkbJyJWfPC95rMqEsP7s=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=MwHizSx75flXHD3gE/PkjcMrg8UvS6EGrvg8Z43s8yeBPdskKPamnkBuNccbrPkTm
 Af7BNvciXItBXCqKFoOqCXUy/LlqRjyWlCY/7QTDiiFQHF6QhPwPyFbZ2UCjbuCeGF
 RJqdH/055jzawVLmF0ZSkYbqUVMu+kc+I8jroBBnKOQHzWDNitZzez92XE54G+gJnk
 Ea50thwLXm34vqWnAgiGU+N1/alscg7jJHT80B00YqKvNSHZnrMu8/w+JY9bsnxpTf
 o1R6y3wfWNZ+PahRNuYxZlLsTOMob7fcI624VP14ZaRs19NyjaurL/z69V8dmqmpBL
 EcRT6TRpGke0A==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D421EA00DF;
 Fri, 12 Jul 2019 16:28:13 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 12 Jul 2019 09:28:07 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 12 Jul 2019 09:28:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTIsSIM9I475ekXXkqm9M8fuGlTuhD+4yJ3Pypw+XXS+NHWVch3Mtilcp2e+NvLyeMmK2Bcfwp10yaAHLbuWslHQ3Xn9eHmFwFhCab9SJPSRK2JCx6vxcVAYhSwPgmid3ATV4HmFpFLcUAJzsvBqxCjojDrWLng+DABkF73oKMw4R/+IK2/wlHHD/WraS0hBwrb1VH302aHksEt6+mo+R1GhAUv+7Z5bF0PDrMTK4AxVnC45WJdLJzUfkMv0a/As/QmHB/MqD8lQNX5w2Lua6ssmYAqCxlxvyx7SWaAdDMjYsCgnB7X0fapo3LtsJAx0rPivfFcLWJl/jZP4zsSMLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7S9JpUJ+IGMnBeMhTQlqSC91MPn/7uU69rE4nmTZ5Ww=;
 b=dEQWzHu2pIKl6KfXCqo06/clP7erCGJriCH2ceEvE0cjnLicASyXl6esr9UKqjvEj36H1pcuFM7dJ0nyuuW46I/AL2JngD/RiXFyHDKTmaHb4Wxg5SUszDkiiE9SeRMGNNpmQwycBiHppJ36CBKTSfhU8O5FzwH7pDHGLnilviDS8JceiaKlrOmNmD/rcjNQ/+3SduENJLDta/nAA+dNDQHKf39CKGA5iIPEhjNhKqXd9IfJbXKPgpg7fGk4pSJShnoJ63lLTLMzLPJdyFImf2d0c6HHAvWxlVf++S+wWbtNbczdZr2qiQG2f10lT0Tox2HqDWMuFrpaqMbuAlU6Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7S9JpUJ+IGMnBeMhTQlqSC91MPn/7uU69rE4nmTZ5Ww=;
 b=LMOlV0kf7AP6DE8XCwvnboMq4ZU395c9o1JmSZqjJT93ZIduy+7jwYFbJq0VnEHZtw1xxOvExd8UE5Q4hFKk1FtuMZIHcQ9eYFINJ718Jju+tWnL/32YU7qQ9gSUexFkeMG4r6aDPQrDQf4L3knHX9/j4QBlIYZK6Jl6SrKfvIE=
Received: from SN6PR12MB2655.namprd12.prod.outlook.com (52.135.103.20) by
 SN6PR12MB2781.namprd12.prod.outlook.com (52.135.107.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 12 Jul 2019 16:28:02 +0000
Received: from SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6]) by SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6%6]) with mapi id 15.20.2073.012; Fri, 12 Jul 2019
 16:28:02 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Vitor Soares <Vitor.Soares@synopsys.com>
Subject: RE: [PATCH v4 3/3] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Thread-Topic: [PATCH v4 3/3] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Thread-Index: AQHVOKh+l9t5FEWliU2HloLoNlfSoabHKHKAgAACN7A=
Date: Fri, 12 Jul 2019 16:28:02 +0000
Message-ID: <SN6PR12MB26553046898233A094DCC952AEF20@SN6PR12MB2655.namprd12.prod.outlook.com>
References: <cover.1562931742.git.vitor.soares@synopsys.com>
 <f239834a6b8bd179094cdc19a3ac5ecaf807cee3.1562931742.git.vitor.soares@synopsys.com>
 <20190712181332.04f8b3da@linux.home>
In-Reply-To: <20190712181332.04f8b3da@linux.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctMDI5YzA1ZGYtYTRjMi0xMWU5LTgyNGItYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XDAyOWMwNWUwLWE0YzItMTFlOS04MjRiLWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iNTY2NSIgdD0iMTMyMDc0MjI0ODEwNzAx?=
 =?us-ascii?Q?NTk1IiBoPSJISlFaVkdCd1FMMjI4b1gveVJCejBaU2JTajg9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUFi?=
 =?us-ascii?Q?czlQRnpqalZBVTdUNSs2WmZNeklUdFBuN3BsOHpNZ09BQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBSEFBQUFDa0NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBUUFCQUFBQVZ6ZGhHZ0FBQUFBQUFBQUFBQUFBQUo0QUFBQm1BR2tBYmdC?=
 =?us-ascii?Q?aEFHNEFZd0JsQUY4QWNBQnNBR0VBYmdCdUFHa0FiZ0JuQUY4QWR3QmhBSFFB?=
 =?us-ascii?Q?WlFCeUFHMEFZUUJ5QUdzQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFF?=
 =?us-ascii?Q?QUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FYd0J3?=
 =?us-ascii?Q?QUdFQWNnQjBBRzRBWlFCeUFITUFYd0JuQUdZQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFB?=
 =?us-ascii?Q?QUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJnQmxB?=
 =?us-ascii?Q?SElBY3dCZkFITUFZUUJ0QUhNQWRRQnVBR2NBWHdCakFHOEFiZ0JtQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFHOEFk?=
 =?us-ascii?Q?UUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBY3dCaEFH?=
 =?us-ascii?Q?MEFjd0IxQUc0QVp3QmZBSElBWlFCekFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QnpBRzBBYVFCakFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQWRBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFkQUJ6?=
 =?us-ascii?Q?QUcwQVl3QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCMUFHMEFZd0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWndCMEFITUFYd0J3QUhJQWJ3QmtBSFVBWXdCMEFGOEFk?=
 =?us-ascii?Q?QUJ5QUdFQWFRQnVBR2tBYmdCbkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQnpB?=
 =?us-ascii?Q?R0VBYkFCbEFITUFYd0JoQUdNQVl3QnZBSFVBYmdCMEFGOEFjQUJzQUdFQWJn?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhNQVlRQnNBR1VBY3dCZkFI?=
 =?us-ascii?Q?RUFkUUJ2QUhRQVpRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFjd0J1QUhBQWN3QmZBR3dBYVFCakFHVUFiZ0J6QUdV?=
 =?us-ascii?Q?QVh3QjBBR1VBY2dCdEFGOEFNUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHNEFjQUJ6QUY4QWJBQnBBR01BWlFCdUFITUFaUUJmQUhRQVpRQnlBRzBB?=
 =?us-ascii?Q?WHdCekFIUUFkUUJrQUdVQWJnQjBBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSFlBWndCZkFHc0FaUUI1?=
 =?us-ascii?Q?QUhjQWJ3QnlBR1FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUE9Ii8+PC9tZXRhPg=3D=3D?=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=soares@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f51b873-cac2-4f99-5906-08d706e5e93a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR12MB2781; 
x-ms-traffictypediagnostic: SN6PR12MB2781:
x-microsoft-antispam-prvs: <SN6PR12MB2781278E331E616C8A89C73EAEF20@SN6PR12MB2781.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(396003)(366004)(346002)(39860400002)(189003)(199004)(446003)(11346002)(76176011)(229853002)(7736002)(52536014)(6246003)(53936002)(107886003)(305945005)(71200400001)(71190400001)(6636002)(6506007)(5660300002)(66446008)(256004)(68736007)(76116006)(66946007)(8936002)(64756008)(66556008)(66476007)(476003)(102836004)(99286004)(66066001)(2906002)(14454004)(110136005)(186003)(54906003)(33656002)(8676002)(316002)(14444005)(478600001)(55016002)(9686003)(86362001)(6436002)(486006)(6116002)(81156014)(81166006)(25786009)(26005)(3846002)(74316002)(7696005)(4326008)(42413003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2781;
 H:SN6PR12MB2655.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yzun9xdQ0RoUaMMi0I9bQ4p8FtcCQlQs1ma8BKhvLTwUE6/i/F4Yf3uTap7S6K2tVLLIcnU/LmDuiAPuNKUbBkrPZPIQCN14mLg2AGZIqTxaAVyZa0eJUqYcHnKN7ThoyNbiAIx+275AS4JhuiD0S+VRr+jq6Dl619JIZeEuzMitizir/4i+Z++qDfiyKWF4BzT471PqAK8A8cO+kDhtpTm61EeBCOdnGSdZxQa/p/R6bhTrml2n3nsEoHTPGkGWNtoiN8H4rvaTwLBMwe8/7VY0epDHssmOGWg5AeX/Wlp/QoFa+2aO+PFlDkOuCpMaIyACFwHqQNTDav4VGEw0dDy6FNol8oQnAlhKpIlL3FL2QikE6vxa2KvbVlfvRU1qBtR6B4mlZL9pL5djekLIMX9G3pCIV6q1QMA9Xfj2uQA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f51b873-cac2-4f99-5906-08d706e5e93a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 16:28:02.6037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: soares@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2781
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092815_046538_6F678046 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Mailman-Approved-At: Mon, 15 Jul 2019 00:24:58 -0700
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Fri, Jul 12, 2019 at 17:14:29

> On Fri, 12 Jul 2019 13:53:30 +0200
> Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> 
> > For today the st_lsm6dsx driver support LSM6DSO and LSM6DSR sensor only in
> > spi and i2c mode.
> > 
> > The LSM6DSO and LSM6DSR are also i3c capable so lets give i3c support to
> > them.
> > 
> > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> > Changes in v4:
> >   Remove hw_id variable
> > 
> > Changes in v3:
> >   Remove unnecessary st_lsm6dsx_i3c_data table used to hold device name
> >   Use st_lsm6dsx_probe new form
> > 
> > Changes in v2:
> >   Add support for LSM6DSR
> >   Set pm_ops to st_lsm6dsx_pm_ops
> > 
> >  drivers/iio/imu/st_lsm6dsx/Kconfig          |  8 +++-
> >  drivers/iio/imu/st_lsm6dsx/Makefile         |  1 +
> >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c | 58 +++++++++++++++++++++++++++++
> >  3 files changed, 66 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > 
> > diff --git a/drivers/iio/imu/st_lsm6dsx/Kconfig b/drivers/iio/imu/st_lsm6dsx/Kconfig
> > index 9e59297..6b5a73c 100644
> > --- a/drivers/iio/imu/st_lsm6dsx/Kconfig
> > +++ b/drivers/iio/imu/st_lsm6dsx/Kconfig
> > @@ -1,11 +1,12 @@
> >  
> >  config IIO_ST_LSM6DSX
> >  	tristate "ST_LSM6DSx driver for STM 6-axis IMU MEMS sensors"
> > -	depends on (I2C || SPI)
> > +	depends on (I2C || SPI || I3C)
> >  	select IIO_BUFFER
> >  	select IIO_KFIFO_BUF
> >  	select IIO_ST_LSM6DSX_I2C if (I2C)
> >  	select IIO_ST_LSM6DSX_SPI if (SPI_MASTER)
> > +	select IIO_ST_LSM6DSX_I3C if (I3C)
> >  	help
> >  	  Say yes here to build support for STMicroelectronics LSM6DSx imu
> >  	  sensor. Supported devices: lsm6ds3, lsm6ds3h, lsm6dsl, lsm6dsm,
> > @@ -23,3 +24,8 @@ config IIO_ST_LSM6DSX_SPI
> >  	tristate
> >  	depends on IIO_ST_LSM6DSX
> >  	select REGMAP_SPI
> > +
> > +config IIO_ST_LSM6DSX_I3C
> > +	tristate
> > +	depends on IIO_ST_LSM6DSX
> > +	select REGMAP_I3C
> > diff --git a/drivers/iio/imu/st_lsm6dsx/Makefile b/drivers/iio/imu/st_lsm6dsx/Makefile
> > index e5f733c..c676965 100644
> > --- a/drivers/iio/imu/st_lsm6dsx/Makefile
> > +++ b/drivers/iio/imu/st_lsm6dsx/Makefile
> > @@ -4,3 +4,4 @@ st_lsm6dsx-y := st_lsm6dsx_core.o st_lsm6dsx_buffer.o \
> >  obj-$(CONFIG_IIO_ST_LSM6DSX) += st_lsm6dsx.o
> >  obj-$(CONFIG_IIO_ST_LSM6DSX_I2C) += st_lsm6dsx_i2c.o
> >  obj-$(CONFIG_IIO_ST_LSM6DSX_SPI) += st_lsm6dsx_spi.o
> > +obj-$(CONFIG_IIO_ST_LSM6DSX_I3C) += st_lsm6dsx_i3c.o
> > diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > new file mode 100644
> > index 0000000..2e89524
> > --- /dev/null
> > +++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > @@ -0,0 +1,58 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.
> > + *
> > + * Author: Vitor Soares <vitor.soares@synopsys.com>
> > + */
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/i3c/device.h>
> > +#include <linux/i3c/master.h>
> > +#include <linux/slab.h>
> > +#include <linux/of.h>
> > +#include <linux/regmap.h>
> > +
> > +#include "st_lsm6dsx.h"
> > +
> > +static const struct i3c_device_id st_lsm6dsx_i3c_ids[] = {
> > +	I3C_DEVICE(0x0104, 0x006C, (void *)ST_LSM6DSO_ID),
> > +	I3C_DEVICE(0x0104, 0x006B, (void *)ST_LSM6DSR_ID),
> 
> I think you need an uintptr_t cast here:
> 
> 	I3C_DEVICE(0x0104, 0x006C, (void *)(uintptr_t)ST_LSM6DSO_ID),
> 	I3C_DEVICE(0x0104, 0x006B, (void *)(uintptr_t)ST_LSM6DSR_ID),
> 
> otherwise gcc might complain that the integer and pointer do not have
> the same size (on 64-bit architectures).

I don't understand this part. Can you provide or point some background? 

> 
> > +	{ /* sentinel */ },
> > +};
> > +MODULE_DEVICE_TABLE(i3c, st_lsm6dsx_i3c_ids);
> > +
> > +static const struct regmap_config st_lsm6dsx_i3c_regmap_config = {
> > +	.reg_bits = 8,
> > +	.val_bits = 8,
> > +};
> 
> This can be moved ...
> 
> > +
> > +static int st_lsm6dsx_i3c_probe(struct i3c_device *i3cdev)
> > +{
> 
> ... here without the static and const qualifiers:

I understand that can be move to here, but I don't understand the 
advantages. Can you explain?

> 
> 	struct regmap_config regmap_config = {
> 		.reg_bits = 8,
> 		.val_bits = 8,
> 	};
> 
> > +	const struct i3c_device_id *id = i3c_device_match_id(i3cdev,
> > +							    st_lsm6dsx_i3c_ids);
> > +	struct regmap *regmap;
> > +
> > +	regmap = devm_regmap_init_i3c(i3cdev, &st_lsm6dsx_i3c_regmap_config);
> > +	if (IS_ERR(regmap)) {
> > +		dev_err(&i3cdev->dev, "Failed to register i3c regmap %d\n",
> > +			(int)PTR_ERR(regmap));
> > +		return PTR_ERR(regmap);
> > +	}
> > +
> > +	return st_lsm6dsx_probe(&i3cdev->dev, 0, (int)id->data, regmap);
> 
> uintptr_t cast here.
> 
> > +}
> > +
> > +static struct i3c_driver st_lsm6dsx_driver = {
> > +	.driver = {
> > +		.name = "st_lsm6dsx_i3c",
> > +		.pm = &st_lsm6dsx_pm_ops,
> > +	},
> > +	.probe = st_lsm6dsx_i3c_probe,
> > +	.id_table = st_lsm6dsx_i3c_ids,
> > +};
> > +module_i3c_driver(st_lsm6dsx_driver);
> > +
> > +MODULE_AUTHOR("Vitor Soares <vitor.soares@synopsys.com>");
> > +MODULE_DESCRIPTION("STMicroelectronics st_lsm6dsx i3c driver");
> > +MODULE_LICENSE("GPL v2");

Best regards,
Vitor Soares



_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
