Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A63068450
	for <lists+linux-i3c@lfdr.de>; Mon, 15 Jul 2019 09:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxqbfIUiVHCCaHuOeLknQHYxZ7aU4eDanlXJqP/kDwc=; b=V/z7SOQ6XhE719
	k6RvbYi2hjkTvgIDj0PNzK1w13V9Mwr8HXEb+9BQQ/OcJwyreReKxybTVTd1IomMEf2BG13aGp0Cg
	Zne1T3j3BWgXJ0MlJhSvOp/RSLf/NJXP/6UvXbMhEs69o9A8MAjNBZFfGUUzjhW8RpZkYPUECN0de
	FDC39p6n3NOHjCn7Re0XjmkbccnwYB0UiO9MoWLg13Y+4UbSYfaxC6AaatQQizLbg1Lwrdy0Hk627
	XqZBzybrh8xYSxjZ7iVcZnpMQQ39/7bw0otTBuNyY14XJH5cEhaAaR2GIel61pRejksqsiSr61l+v
	F3UXsnkBat3SZEYQ1DIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvMA-0001II-0A
	for lists+linux-i3c@lfdr.de; Mon, 15 Jul 2019 07:25:06 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyJH-0008Ks-Lc
 for linux-i3c@lists.infradead.org; Fri, 12 Jul 2019 16:22:13 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4D7C9C1337;
 Fri, 12 Jul 2019 16:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562948530; bh=5a/YE8tdHn4NCbwEfNZ2xDJgbwDwdr5bQeSpkqW6nKQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=GBtTCpEHwHIbVCXxdgOSH+9V8OJlG0Q6vOL68XGr3DrFgMAKb2FxWYW57p24Xv4gn
 vRVe87jfLlf7MFX3ZD5Nau2h0nPGwl/QO5Dz2NeUiE2l1bdp3fybsHOzC8OBvH0jKL
 ouaEjGwflVfgA6t6tdR7l+p8ONgJBdv4u8zBnRTNpSNbEP88sf3AbNaCkPqXFu9r7d
 cTTUSpQW+qUhxtcVwKjEnxQaeUpODw2c/MX4jJxE1C4WnUZ9K5c3WADYnNU7J0KqyA
 xm/EjeiDLAKif3ZosNk+L52GUb6hOO6NdFoPG1ognrF5H75k376L3Pe9dIFpcY1QqL
 wMDtat8N1QviA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 278C1A006E;
 Fri, 12 Jul 2019 16:22:09 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 12 Jul 2019 09:21:51 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 12 Jul 2019 09:21:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H4IoBpPgCU7rrWEjFGb9BuU+lUp4CoSLdsL6sGWdinE=;
 b=Tg8t8bwZ4QubjCS+LbJ4zp2FFcWkUaCnTV6BrVWr4qS4/pZAK1Ytuo7clZIWu18mA43LTo0nipliw+uATlaSi6s0ypttINSn0sZ6XEOaAMEngTd58GlpEAKYPX3tUC1dzwyWLUTcogfZWpzJtHvInxG9S7Mnet1oFyF7ig99eFI=
Received: from SN6PR12MB2655.namprd12.prod.outlook.com (52.135.103.20) by
 SN6PR12MB2783.namprd12.prod.outlook.com (52.135.107.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Fri, 12 Jul 2019 16:21:49 +0000
Received: from SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6]) by SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6%6]) with mapi id 15.20.2073.012; Fri, 12 Jul 2019
 16:21:49 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Vitor Soares <Vitor.Soares@synopsys.com>
Subject: RE: [PATCH v4 2/3] i3c: move i3c_device_match_id to device.c and
 export it
Thread-Topic: [PATCH v4 2/3] i3c: move i3c_device_match_id to device.c and
 export it
Thread-Index: AQHVOKiA/+5eA36w/E2qczEnNoiqQ6bHJWoAgAADN2A=
Date: Fri, 12 Jul 2019 16:21:49 +0000
Message-ID: <SN6PR12MB265549866115B706616C2081AEF20@SN6PR12MB2655.namprd12.prod.outlook.com>
References: <cover.1562931742.git.vitor.soares@synopsys.com>
 <debadccffef84c541601a97162ac656cd7c58478.1562931742.git.vitor.soares@synopsys.com>
 <20190712180338.47b50e9f@linux.home>
In-Reply-To: <20190712180338.47b50e9f@linux.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctMjNlNjYzOTMtYTRjMS0xMWU5LTgyNGItYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XDIzZTY2Mzk1LWE0YzEtMTFlOS04MjRiLWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iNjE3NiIgdD0iMTMyMDc0MjIxMDU5NzE0?=
 =?us-ascii?Q?ODAwIiBoPSJGT1FxNG5JYlpIRmNGVFRPVW9keHZQQ1AzYk09IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUR3?=
 =?us-ascii?Q?TGtEbXpUalZBZW5JelE3eENLM0Q2Y2pORHZFSXJjTU9BQUFBQUFBQUFBQUFB?=
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
x-ms-office365-filtering-correlation-id: 6a04609e-becc-4de1-2dbb-08d706e50adc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR12MB2783; 
x-ms-traffictypediagnostic: SN6PR12MB2783:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN6PR12MB2783FCB63392EF162BA1A6EBAEF20@SN6PR12MB2783.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(136003)(376002)(346002)(366004)(189003)(199004)(5660300002)(966005)(53936002)(14454004)(6306002)(55016002)(3846002)(478600001)(6246003)(229853002)(66946007)(9686003)(6116002)(86362001)(66066001)(76116006)(52536014)(6436002)(99286004)(6636002)(305945005)(476003)(81166006)(102836004)(2906002)(446003)(26005)(71200400001)(11346002)(81156014)(25786009)(8676002)(186003)(74316002)(486006)(8936002)(71190400001)(7736002)(316002)(110136005)(54906003)(64756008)(66556008)(66476007)(66446008)(4326008)(6506007)(33656002)(76176011)(256004)(7696005)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2783;
 H:SN6PR12MB2655.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3Tg0WMInpThvaxYaoA9oMc8ygU8Lr6cA0eGFuwkv0APkii3pMj7dhT4ZMSfZFZHbIQcdTbuPubnJXrIHaYRh+dUtYDvsiWUTpx2kemS53ciV5p5HEqETW+UVJ3D5zGV9hJT/T0geRY/4+ntz322c7fOeRT4y4gdWTOJw3aYAMEx9skQN8wCdAkY6AY9qZABag/VffA9U6PmO3fetR8viUX+O+hMyWi2XE5iA1zPo9ojF/z/ofW//7GrUgxOzNfMs6FsvF5L767gLne+fQxZOHW0eB+eWRwBynLb4ZRiixQ3V3/qenFdk18zLE/D78wnXNThPccGF1fTievQzvgwb2bp5Qu3i9izbQbuZiFIi0lKqlfM7xIYADHcH/uxMCgwiUTFACk2yY+DRX5A+QmXGOLwURCrGXVKMwJJOCwycbEw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a04609e-becc-4de1-2dbb-08d706e50adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 16:21:49.4814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: soares@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2783
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092211_722244_FF2F43BF 
X-CRM114-Status: GOOD (  21.45  )
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
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Boris,

From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Fri, Jul 12, 2019 at 17:03:38

> On Fri, 12 Jul 2019 13:53:29 +0200
> Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> 
> > The i3c device driver needs the i3c_device_id table.
> 
> "Some I3C device drivers need to know which entry matches the
> i3c_device object passed to the probe function" 
> 
> > Lets move  to device.c and export it to be used.
> 
> "Let's move i3c_device_match_id() to device.c and export it so it can be
> used by drivers."
> 

Fix in next drop.

> > 
> > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > ---
> > Changes in v4:
> >   None
> > 
> > Changes in v3:
> >   Remove i3c_get_device_id
> >   Move i3c_device_match_id from drivers/i3c/master.c to drivers/i3c/device.c
> >   Export i3c_device_match_id
> > 
> > Changes in v2:
> >   move this function to drivers/i3c/device.c
> > 
> >  drivers/i3c/device.c       | 46 ++++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/i3c/master.c       | 45 ---------------------------------------------
> >  include/linux/i3c/device.h |  4 ++++
> >  3 files changed, 50 insertions(+), 45 deletions(-)
> > 
> > diff --git a/drivers/i3c/device.c b/drivers/i3c/device.c
> > index 69cc040..383df3b 100644
> > --- a/drivers/i3c/device.c
> > +++ b/drivers/i3c/device.c
> > @@ -200,6 +200,52 @@ struct i3c_device *dev_to_i3cdev(struct device *dev)
> >  }
> >  EXPORT_SYMBOL_GPL(dev_to_i3cdev);
> >  
> 
> You're missing a kerneldoc here.

I will do that. Can you clarify why we need that?

> 
> > +const struct i3c_device_id *
> > +i3c_device_match_id(struct i3c_device *i3cdev,
> > +		    const struct i3c_device_id *id_table)
> > +{
> > +	struct i3c_device_info devinfo;
> > +	const struct i3c_device_id *id;
> > +
> > +	i3c_device_get_info(i3cdev, &devinfo);
> > +
> > +	/*
> > +	 * The lower 32bits of the provisional ID is just filled with a random
> > +	 * value, try to match using DCR info.
> > +	 */
> > +	if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
> > +		u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
> > +		u16 part = I3C_PID_PART_ID(devinfo.pid);
> > +		u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
> > +
> > +		/* First try to match by manufacturer/part ID. */
> > +		for (id = id_table; id->match_flags != 0; id++) {
> > +			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
> > +			    I3C_MATCH_MANUF_AND_PART)
> > +				continue;
> > +
> > +			if (manuf != id->manuf_id || part != id->part_id)
> > +				continue;
> > +
> > +			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
> > +			    ext_info != id->extra_info)
> > +				continue;
> > +
> > +			return id;
> > +		}
> > +	}
> > +
> > +	/* Fallback to DCR match. */
> > +	for (id = id_table; id->match_flags != 0; id++) {
> > +		if ((id->match_flags & I3C_MATCH_DCR) &&
> > +		    id->dcr == devinfo.dcr)
> > +			return id;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +EXPORT_SYMBOL_GPL(i3c_device_match_id);
> > +
> >  /**
> >   * i3c_driver_register_with_owner() - register an I3C device driver
> >   *
> > diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> > index 5f4bd52..7667f84 100644
> > --- a/drivers/i3c/master.c
> > +++ b/drivers/i3c/master.c
> > @@ -270,51 +270,6 @@ static const struct device_type i3c_device_type = {
> >  	.uevent = i3c_device_uevent,
> >  };
> >  
> > -static const struct i3c_device_id *
> > -i3c_device_match_id(struct i3c_device *i3cdev,
> > -		    const struct i3c_device_id *id_table)
> > -{
> > -	struct i3c_device_info devinfo;
> > -	const struct i3c_device_id *id;
> > -
> > -	i3c_device_get_info(i3cdev, &devinfo);
> > -
> > -	/*
> > -	 * The lower 32bits of the provisional ID is just filled with a random
> > -	 * value, try to match using DCR info.
> > -	 */
> > -	if (!I3C_PID_RND_LOWER_32BITS(devinfo.pid)) {
> > -		u16 manuf = I3C_PID_MANUF_ID(devinfo.pid);
> > -		u16 part = I3C_PID_PART_ID(devinfo.pid);
> > -		u16 ext_info = I3C_PID_EXTRA_INFO(devinfo.pid);
> > -
> > -		/* First try to match by manufacturer/part ID. */
> > -		for (id = id_table; id->match_flags != 0; id++) {
> > -			if ((id->match_flags & I3C_MATCH_MANUF_AND_PART) !=
> > -			    I3C_MATCH_MANUF_AND_PART)
> > -				continue;
> > -
> > -			if (manuf != id->manuf_id || part != id->part_id)
> > -				continue;
> > -
> > -			if ((id->match_flags & I3C_MATCH_EXTRA_INFO) &&
> > -			    ext_info != id->extra_info)
> > -				continue;
> > -
> > -			return id;
> > -		}
> > -	}
> > -
> > -	/* Fallback to DCR match. */
> > -	for (id = id_table; id->match_flags != 0; id++) {
> > -		if ((id->match_flags & I3C_MATCH_DCR) &&
> > -		    id->dcr == devinfo.dcr)
> > -			return id;
> > -	}
> > -
> > -	return NULL;
> > -}
> > -
> >  static int i3c_device_match(struct device *dev, struct device_driver *drv)
> >  {
> >  	struct i3c_device *i3cdev;
> > diff --git a/include/linux/i3c/device.h b/include/linux/i3c/device.h
> > index 5ecb055..de102e4 100644
> > --- a/include/linux/i3c/device.h
> > +++ b/include/linux/i3c/device.h
> > @@ -188,6 +188,10 @@ static inline struct i3c_driver *drv_to_i3cdrv(struct device_driver *drv)
> >  struct device *i3cdev_to_dev(struct i3c_device *i3cdev);
> >  struct i3c_device *dev_to_i3cdev(struct device *dev);
> >  
> > +const struct i3c_device_id *
> > +i3c_device_match_id(struct i3c_device *i3cdev,
> > +		    const struct i3c_device_id *id_table);
> > +
> >  static inline void i3cdev_set_drvdata(struct i3c_device *i3cdev,
> >  				      void *data)
> >  {
> 
> 
> _______________________________________________
> linux-i3c mailing list
> linux-i3c@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Di3c&d=DwICAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=qVuU64u9x77Y0Kd0PhDK_lpxFgg6PK9PateHwjb_DY0&m=3BEF5uxfJXeA-aip7adilYENAWYp6xNoJXvidZZZpY4&s=JcBzwEcWAIoOCufxAYFd4YjCZppBQDA2-nVqfV1Cj5g&e= 

Thanks for your comments.

Best regards,
Vitor Soares

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
