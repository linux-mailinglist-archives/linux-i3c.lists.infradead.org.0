Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A9F68452
	for <lists+linux-i3c@lfdr.de>; Mon, 15 Jul 2019 09:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltAyL6ebGVXD2Ba5RVoY0ohMHueqSWMXx26MNkHGw3Q=; b=gzAe+9/HIaMasH
	sL6Pik814BNbCHXZS1jPdH/tGGpEsN/ZgJMSHIwAUV89u5v1jNwODdYpbvTuebr7mguLf2ljV12QK
	T1R+Vcd1mmFt1+XOB5WajJeRQO/etCDLoF261reiOBGvvQSYj7MmQgir4atugqwUjNjKDlv2p5xRc
	Fz+ufRKln8SZVKcvFaDespXfOVvNlappsHEFCnTsmqkyMmptyvNCIcSWOrCKCI3LrYuZeZMENnXV3
	LbndTQDVNem6/LK/Acs9A3x8ncD42z+Xac/wyXS33whgb01HO8E9HAulLcABJK1CmzdDErEL4Oz34
	b0kexEtgWwiePWxY9l3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvMA-0001NY-Ml
	for lists+linux-i3c@lfdr.de; Mon, 15 Jul 2019 07:25:06 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm0Vm-0007dw-Uj
 for linux-i3c@lists.infradead.org; Fri, 12 Jul 2019 18:43:16 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0183EC1CBA;
 Fri, 12 Jul 2019 18:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562956990; bh=PTHERnsKUWKYDqdIrIdhxR4RQ1rn89ycvoy0yiRG2P0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=V8mAo75rB6yoVNiHStsAo9IgA0iMdKzqFwilrKLlPO2Kd2z+ais4FTwW8iu8Xj2Um
 dFZi+yfGSyJx1w8awalhsti3p3BYfjQcgUjkVuYGSPsrJ12eYbDdUyDcjTT8Ohbnhw
 CYZ8H1jVINEAu7k0Af6w3l+PegJqcUUaMve2/z/SF4Fj2gLd4sReTAqM6/uM/x8JRU
 LBqE9rQOnKr/OBueCDhvvLEgQLmYjklfesjTZRMaGC7GfVGRJ+UuQcpEUw9jZOkOBa
 QFXWZpIuG7BOmclR1ST0ib/1NAxLEv7whLUrNgl1y1uNCok88l8axdBp1NEPjLiqGS
 nf2+VBFPMf7fw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6A86CA00AE;
 Fri, 12 Jul 2019 18:43:09 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 12 Jul 2019 11:43:02 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 12 Jul 2019 11:40:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qeoVibSJpRHbG6XmBET058tgU3DMEKiItPtfd4N3EU4=;
 b=ivu1LUhPbMjLtMBPjNmGbRD3PVkXIONXwN/bQov1tPz01Cw3PVN3BQiT0s70jpyxfwgWm2E4yU3NAYpPEdrhUBiAzOBgioI5Oga/VNuz9Ge53Np4j/3OT2TmERqW2Avr9sOZhlJdzBeVrlKAW+TbUadCo1kIY9jGVBbqKeQ1CJU=
Received: from SN6PR12MB2655.namprd12.prod.outlook.com (52.135.103.20) by
 SN6PR12MB2720.namprd12.prod.outlook.com (52.135.103.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Fri, 12 Jul 2019 18:40:14 +0000
Received: from SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6]) by SN6PR12MB2655.namprd12.prod.outlook.com
 ([fe80::1dbd:69dc:e782:92b6%6]) with mapi id 15.20.2073.012; Fri, 12 Jul 2019
 18:40:14 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Vitor Soares <Vitor.Soares@synopsys.com>
Subject: RE: [PATCH v4 3/3] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Thread-Topic: [PATCH v4 3/3] iio: imu: st_lsm6dsx: add i3c basic support for
 LSM6DSO and LSM6DSR
Thread-Index: AQHVOKh+l9t5FEWliU2HloLoNlfSoabHKHKAgAACN7CAAAXcgIAAHrLQ
Date: Fri, 12 Jul 2019 18:40:14 +0000
Message-ID: <SN6PR12MB2655C68059719693C7EFF05CAEF20@SN6PR12MB2655.namprd12.prod.outlook.com>
References: <cover.1562931742.git.vitor.soares@synopsys.com>
 <f239834a6b8bd179094cdc19a3ac5ecaf807cee3.1562931742.git.vitor.soares@synopsys.com>
 <20190712181332.04f8b3da@linux.home>
 <SN6PR12MB26553046898233A094DCC952AEF20@SN6PR12MB2655.namprd12.prod.outlook.com>
 <20190712184323.28547c44@pc-381.home>
In-Reply-To: <20190712184323.28547c44@pc-381.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctNzk4NTQzN2EtYTRkNC0xMWU5LTgyNGItYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XDc5ODU0MzdiLWE0ZDQtMTFlOS04MjRiLWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iNTcxOSIgdD0iMTMyMDc0MzA0MTExMDk0?=
 =?us-ascii?Q?NzY5IiBoPSJ2cHF0aW1wYzJRUWZicW0vQk8vSlEya1RBckU9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUR4?=
 =?us-ascii?Q?cTM4ODRUalZBZHlDMHgwdlU3R3UzSUxUSFM5VHNhNE9BQUFBQUFBQUFBQUFB?=
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
x-originating-ip: [94.60.20.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 497ab116-f9c9-46fe-235d-08d706f8611c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR12MB2720; 
x-ms-traffictypediagnostic: SN6PR12MB2720:
x-microsoft-antispam-prvs: <SN6PR12MB2720532DC9A02584B79C0B50AEF20@SN6PR12MB2720.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(366004)(136003)(376002)(39860400002)(199004)(189003)(81156014)(107886003)(81166006)(8676002)(186003)(478600001)(14454004)(6506007)(6246003)(25786009)(229853002)(68736007)(256004)(71190400001)(71200400001)(316002)(86362001)(5660300002)(14444005)(52536014)(8936002)(53936002)(486006)(446003)(7736002)(66066001)(6436002)(11346002)(99286004)(4326008)(33656002)(305945005)(3846002)(6116002)(76176011)(66476007)(66556008)(76116006)(66946007)(66446008)(110136005)(54906003)(102836004)(476003)(2906002)(26005)(64756008)(74316002)(9686003)(55016002)(6636002)(7696005)(42413003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2720;
 H:SN6PR12MB2655.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QejtqeH+TqJ2oDAfpa2pI4IibTR7iFrteGucxypDSItT7D5Wt1mnkl6UrUrTJlcR/fZUZOxbS15e1HJGQiC/FFhriGgNJGO1Lr34izu7mTKZnoK74eySxX0iMnl06J/UaeTq3cCqmyDRYvtC3r2WoU2adAovDVuUlmbZOAbt3ip4q9/k+RxzPkJjB65UPMTNV0SRU4IE4o7D6SyeOM4LpofZXe4cjm5rhRjj2LPOADD5onkPyo4VTfEvQAun4Jyp4RoKOvJ+eYhrugkl8Pu9Zo/mJ5VQU7m+1AI8k3TAi/hrWZ+mjNp0uxz68wGssq2HY3LQzT4VMZN/fQZ9w/OzZy/h5NN8gkyUCyEUPfHzzXZRO4QemM48khNW+Yv3MaRH13rgXuRSmeq5rfolRaCViiwloFqcpIg+lQQsS65Xzm0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 497ab116-f9c9-46fe-235d-08d706f8611c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 18:40:14.5895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: soares@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2720
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_114315_076704_684998A9 
X-CRM114-Status: GOOD (  20.75  )
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
Date: Fri, Jul 12, 2019 at 17:43:23

> On Fri, 12 Jul 2019 16:28:02 +0000
> Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> 
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > Date: Fri, Jul 12, 2019 at 17:14:29
> > 
> > > On Fri, 12 Jul 2019 13:53:30 +0200
> > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > >   
> > > > For today the st_lsm6dsx driver support LSM6DSO and LSM6DSR sensor only in
> > > > spi and i2c mode.
> > > > 
> > > > The LSM6DSO and LSM6DSR are also i3c capable so lets give i3c support to
> > > > them.
> > > > 
> > > > Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
> > > > Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > ---
> > > > Changes in v4:
> > > >   Remove hw_id variable
> > > > 
> > > > Changes in v3:
> > > >   Remove unnecessary st_lsm6dsx_i3c_data table used to hold device name
> > > >   Use st_lsm6dsx_probe new form
> > > > 
> > > > Changes in v2:
> > > >   Add support for LSM6DSR
> > > >   Set pm_ops to st_lsm6dsx_pm_ops
> > > > 
> > > >  drivers/iio/imu/st_lsm6dsx/Kconfig          |  8 +++-
> > > >  drivers/iio/imu/st_lsm6dsx/Makefile         |  1 +
> > > >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c | 58 +++++++++++++++++++++++++++++
> > > >  3 files changed, 66 insertions(+), 1 deletion(-)
> > > >  create mode 100644 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > > > 
> > > > diff --git a/drivers/iio/imu/st_lsm6dsx/Kconfig b/drivers/iio/imu/st_lsm6dsx/Kconfig
> > > > index 9e59297..6b5a73c 100644
> > > > --- a/drivers/iio/imu/st_lsm6dsx/Kconfig
> > > > +++ b/drivers/iio/imu/st_lsm6dsx/Kconfig
> > > > @@ -1,11 +1,12 @@
> > > >  
> > > >  config IIO_ST_LSM6DSX
> > > >  	tristate "ST_LSM6DSx driver for STM 6-axis IMU MEMS sensors"
> > > > -	depends on (I2C || SPI)
> > > > +	depends on (I2C || SPI || I3C)
> > > >  	select IIO_BUFFER
> > > >  	select IIO_KFIFO_BUF
> > > >  	select IIO_ST_LSM6DSX_I2C if (I2C)
> > > >  	select IIO_ST_LSM6DSX_SPI if (SPI_MASTER)
> > > > +	select IIO_ST_LSM6DSX_I3C if (I3C)
> > > >  	help
> > > >  	  Say yes here to build support for STMicroelectronics LSM6DSx imu
> > > >  	  sensor. Supported devices: lsm6ds3, lsm6ds3h, lsm6dsl, lsm6dsm,
> > > > @@ -23,3 +24,8 @@ config IIO_ST_LSM6DSX_SPI
> > > >  	tristate
> > > >  	depends on IIO_ST_LSM6DSX
> > > >  	select REGMAP_SPI
> > > > +
> > > > +config IIO_ST_LSM6DSX_I3C
> > > > +	tristate
> > > > +	depends on IIO_ST_LSM6DSX
> > > > +	select REGMAP_I3C
> > > > diff --git a/drivers/iio/imu/st_lsm6dsx/Makefile b/drivers/iio/imu/st_lsm6dsx/Makefile
> > > > index e5f733c..c676965 100644
> > > > --- a/drivers/iio/imu/st_lsm6dsx/Makefile
> > > > +++ b/drivers/iio/imu/st_lsm6dsx/Makefile
> > > > @@ -4,3 +4,4 @@ st_lsm6dsx-y := st_lsm6dsx_core.o st_lsm6dsx_buffer.o \
> > > >  obj-$(CONFIG_IIO_ST_LSM6DSX) += st_lsm6dsx.o
> > > >  obj-$(CONFIG_IIO_ST_LSM6DSX_I2C) += st_lsm6dsx_i2c.o
> > > >  obj-$(CONFIG_IIO_ST_LSM6DSX_SPI) += st_lsm6dsx_spi.o
> > > > +obj-$(CONFIG_IIO_ST_LSM6DSX_I3C) += st_lsm6dsx_i3c.o
> > > > diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > > > new file mode 100644
> > > > index 0000000..2e89524
> > > > --- /dev/null
> > > > +++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
> > > > @@ -0,0 +1,58 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (c) 2018 Synopsys, Inc. and/or its affiliates.
> > > > + *
> > > > + * Author: Vitor Soares <vitor.soares@synopsys.com>
> > > > + */
> > > > +
> > > > +#include <linux/kernel.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/i3c/device.h>
> > > > +#include <linux/i3c/master.h>
> > > > +#include <linux/slab.h>
> > > > +#include <linux/of.h>
> > > > +#include <linux/regmap.h>
> > > > +
> > > > +#include "st_lsm6dsx.h"
> > > > +
> > > > +static const struct i3c_device_id st_lsm6dsx_i3c_ids[] = {
> > > > +	I3C_DEVICE(0x0104, 0x006C, (void *)ST_LSM6DSO_ID),
> > > > +	I3C_DEVICE(0x0104, 0x006B, (void *)ST_LSM6DSR_ID),  
> > > 
> > > I think you need an uintptr_t cast here:
> > > 
> > > 	I3C_DEVICE(0x0104, 0x006C, (void *)(uintptr_t)ST_LSM6DSO_ID),
> > > 	I3C_DEVICE(0x0104, 0x006B, (void *)(uintptr_t)ST_LSM6DSR_ID),
> > > 
> > > otherwise gcc might complain that the integer and pointer do not have
> > > the same size (on 64-bit architectures).  
> > 
> > I don't understand this part. Can you provide or point some background?
> 
> If you don't do that you'll get the following warning:
> 
> 	warning: cast to 'void *' from smaller integer type 'int' [-Wint-to-void-pointer-cast]

I don't get the warning during compilation. Is there any flag to enable 
or so?

> 
> > 
> > >   
> > > > +	{ /* sentinel */ },
> > > > +};
> > > > +MODULE_DEVICE_TABLE(i3c, st_lsm6dsx_i3c_ids);
> > > > +
> > > > +static const struct regmap_config st_lsm6dsx_i3c_regmap_config = {
> > > > +	.reg_bits = 8,
> > > > +	.val_bits = 8,
> > > > +};  
> > > 
> > > This can be moved ...
> > >   
> > > > +
> > > > +static int st_lsm6dsx_i3c_probe(struct i3c_device *i3cdev)
> > > > +{  
> > > 
> > > ... here without the static and const qualifiers:  
> > 
> > I understand that can be move to here, but I don't understand the 
> > advantages. Can you explain?
> 
> It reduces the variable scope (this variable is only needed in the
> probe path) and avoids consuming space in the .bss section, though the
> second point is not so important.

Thanks,
Vitor Soares

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
