Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010CD14CEEF
	for <lists+linux-i3c@lfdr.de>; Wed, 29 Jan 2020 18:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UIqwkJEb2idL2uPiKC4eKDKivSMBHl7pooMtBGHLqw=; b=mQ3fdd52Op9M8w
	fBA6lNQhLnhvn8Tw0nVnPhaWz4MrV+9fsPQAdvMXd2JdPA8UfyaRC+0V5eeHD4BSbCL9Uy+tuRpVG
	K++/O9Cl9iDDtzI2vMuAkukiLfhbU16b4YliYDGum7ycgHRvpt3nkblMoM2c1VW5r71DBUXa9uP1v
	SWnvTyozQFHIVow/XCk8RZGs5LRZMfeUSFVhKSZWlVIZtVs10P/lzkpUy/bJPnkfOkf1djRZA18F5
	195372dLHhTfo+zmCWNxa3n1VpljD1W7xEXtQVjXvU6SVwXFuVbkahF2QOxz8R6InUqGJmGNgvXCJ
	qeLXY5FuanhMWlFDzLAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqhf-0006hK-MS
	for lists+linux-i3c@lfdr.de; Wed, 29 Jan 2020 17:00:35 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqhb-0006g2-R0
 for linux-i3c@lists.infradead.org; Wed, 29 Jan 2020 17:00:33 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D75E7C060C;
 Wed, 29 Jan 2020 17:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580317230; bh=mKMZlDKlXP46bauoN4BuL4irHispEoh9QYZsWob+TbQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lazE8gXG9JmkI3JUmh6oJ3N/S6vxmBp/Jza0M2+iK95LNUrR6trRSl6/G7HUTSSXx
 8teqcRGbzm5oL0Qz2Eu9FST1CKXUHPYSCRWfVXezPjFZNTeufCGBgPqCl33rmMT2YV
 +tkFPl2qU/3pjObcQGnDsavYTWORzsBYfpxue9Kl2KF+1OFrImPyLmQkDCtq7CZZY2
 nZ64SDxs1XuUoYDm2z1uH+v7MnuGycy8Xnno3+sXYaxEMVbUannUVSF09BVdvlcmvy
 3R5N05eSb61F0mKgHhYvEil5v2vBbtELwpy89+lItu3bV/bc0bPNuSEhQnu1LZ00FP
 +sDLRlu5vwF5Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D1503A008D;
 Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 29 Jan 2020 09:00:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 29 Jan 2020 09:00:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hji/h6sZKWQHrR+XmNDX0hO+PZNcL7UXtTyh3gre30HS4iWIbXZEFqqvudTf/mEp8UMmMc9e3Pz+YBrQyOnG12C9bMMEg8pDBFnRJbRFLaUOdSh9tVLoa/LI8uZr/83mDMsw3YGp1v6YgfM99xRzRYmUTmy7I8lj5qaOBQuLdtaECHr8w/3LxiVC/csf6x2IKfQ/olozWwneuiqi8OruBLyLhpyCnNAxPoi1YsZ+NutK/47vthW1+vwqwvxHhnjWL9jU5KHW4kJNRU4RpI/soxnPGsiYFFLKPAK5cHQWCAwWeeFJiYTVWYhOBId/hEBve5eGiihlFhnQ6hv0oHPDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKMZlDKlXP46bauoN4BuL4irHispEoh9QYZsWob+TbQ=;
 b=OXe9pHZOKqyPz7HueZJUA2k2B3oCxTQElMGp+3jxEuoxUJbkDV6xb+8W3kYA4DCgOSh5cBrBFezuOc1W951U53+hyCYYhOgL+5VGy/JAZOfPmxW3aeacq0EermIl9n+F73hlznKN44LQN6g6AR2EUqSFLJtx+IOoOBmBndIPrMn+V/TzShS7fcQOj+eZf2zA3Vto2GaNytGwaksQ7dn0abGZfZoHcaCYERuWNfz7OkAZPKd3QX6yjzbCyHCUzrghN9IBOJ6NUtp7Ju1+nQUbfDBsgwBKqNGfixYsutY774KrPR/nF8eLVjI4R2RV3qsOOI4TtsZOgy6wGj1yDNUCeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKMZlDKlXP46bauoN4BuL4irHispEoh9QYZsWob+TbQ=;
 b=H5RMQGnQ4r/uqd17ak+VmlyNsCejNajXFdSJjBW/Uf3NT3Yv1FtKDcS7P/DrtBDO9NLC+uKb/qsGSdOxSni7RQKcqTWlX23a1gc+Ovfz6hrqJr8bWr1vFUlB3fYhFAJ7jWjcu7I76n/npsSC8IXug4JF4So1gobt/GSi6VzINcw=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB4117.namprd12.prod.outlook.com (20.180.16.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Wed, 29 Jan 2020 17:00:12 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::3c7e:dc0:3013:de3c]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::3c7e:dc0:3013:de3c%6]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 17:00:12 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [RFC v2 4/4] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Topic: [RFC v2 4/4] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Index: AQHV1p4xoSqRXzcucECuqYwPhyVewqgBtDIAgAAGDqA=
Date: Wed, 29 Jan 2020 17:00:11 +0000
Message-ID: <CH2PR12MB4216ED068AD93C43B2C421A8AE050@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <442a0c2c52223f9ff1a1d1018ff863fb23105389.1580299067.git.vitor.soares@synopsys.com>
 <CAK8P3a0uFjhuO7e-i3r_RiA_ni=S8MfYoZUwZzmbXRcd=+kMKw@mail.gmail.com>
In-Reply-To: <CAK8P3a0uFjhuO7e-i3r_RiA_ni=S8MfYoZUwZzmbXRcd=+kMKw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzI5aGNtVnpYR0Z3Y0dSaGRHRmNjbTloYldsdVoxd3dPV1E0TkRsaU5p?=
 =?utf-8?B?MHpNbVF6TFRSaE5EQXRPRFZsWlMwMllqZzBZbUV5T1dVek5XSmNiWE5uYzF4?=
 =?utf-8?B?dGMyY3RZMk13WWpjMFl6Z3ROREppT0MweE1XVmhMVGd5T0RZdFlqZ3dPR05t?=
 =?utf-8?B?TlRsa04yWmpYR0Z0WlMxMFpYTjBYR05qTUdJM05HTTVMVFF5WWpndE1URmxZ?=
 =?utf-8?B?UzA0TWpnMkxXSTRNRGhqWmpVNVpEZG1ZMkp2WkhrdWRIaDBJaUJ6ZWowaU5q?=
 =?utf-8?B?UXhOaUlnZEQwaU1UTXlNalEzT1RBNE1EazNOamt3TXpVNUlpQm9QU0pvUzNr?=
 =?utf-8?B?eGJsZEJSemR2VWpST1ZUbG1NR2g0U21sM00xaDRUMWs5SWlCcFpEMGlJaUJp?=
 =?utf-8?B?YkQwaU1DSWdZbTg5SWpFaUlHTnBQU0pqUVVGQlFVVlNTRlV4VWxOU1ZVWk9R?=
 =?utf-8?B?MmRWUVVGQ1VVcEJRVVF6YVc1UFVYaGtZbFpCWTBwSldsQldMMXB5V25sM2Ey?=
 =?utf-8?B?aHJPVmc1YlhSdVNVOUJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlNFRkJRVUZEYTBOQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UlVGQlVVRkNRVUZCUVd0NFYyOXNVVUZCUVVGQlFVRkJRVUZCUVVGQlFVbzBR?=
 =?utf-8?B?VUZCUW0xQlIydEJZbWRDYUVGSE5FRlpkMEpzUVVZNFFXTkJRbk5CUjBWQllt?=
 =?utf-8?B?ZENkVUZIYTBGaVowSnVRVVk0UVdSM1FtaEJTRkZCV2xGQ2VVRkhNRUZaVVVK?=
 =?utf-8?B?NVFVZHpRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZGUVVGQlFVRkJRVUZCUVdk?=
 =?utf-8?B?QlFVRkJRVUZ1WjBGQlFVZFpRV0ozUWpGQlJ6UkJXa0ZDZVVGSWEwRllkMEoz?=
 =?utf-8?B?UVVkRlFXTm5RakJCUnpSQldsRkNlVUZJVFVGWWQwSnVRVWRaUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlVVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVTkJRVUZCUVVGRFpVRkJRVUZhWjBKMlFVaFZRV0puUW10QlNF?=
 =?utf-8?B?bEJaVkZDWmtGSVFVRlpVVUo1UVVoUlFXSm5RbXhCU0VsQlkzZENaa0ZJVFVG?=
 =?utf-8?B?WlVVSjBRVWhOUVdSUlFuVkJSMk5CV0hkQ2FrRkhPRUZpWjBKdFFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRa0ZCUVVGQlFVRkJRVUZKUVVGQlFVRkJTalJCUVVGQ2JVRkhPRUZr?=
 =?utf-8?B?VVVKMVFVZFJRV05uUWpWQlJqaEJZMEZDYUVGSVNVRmtRVUoxUVVkVlFXTm5R?=
 =?utf-8?B?bnBCUmpoQlkzZENhRUZITUVGamQwSXhRVWMwUVZwM1FtWkJTRWxCV2xGQ2Vr?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVWQlFVRkJRVUZCUVVGQlowRkJRVUZCUVc1blFV?=
 =?utf-8?B?RkJSMWxCWW5kQ01VRkhORUZhUVVKNVFVaHJRVmgzUW5kQlIwVkJZMmRDTUVG?=
 =?utf-8?B?SE5FRmFVVUo1UVVoTlFWaDNRbnBCUnpCQllWRkNha0ZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRlJRVUZCUVVGQlFVRkJRMEZC?=
 =?utf-8?B?UVVGQlFVTmxRVUZCUVZwblFuWkJTRlZCWW1kQ2EwRklTVUZsVVVKbVFVaEJR?=
 =?utf-8?B?VmxSUW5sQlNGRkJZbWRDYkVGSVNVRmpkMEptUVVoTlFXUkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZDUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVsQlFVRkJRVUZLTkVGQlFVSnRRVWM0UVdSUlFuVkJSMUZCWTJk?=
 =?utf-8?B?Q05VRkdPRUZqUVVKb1FVaEpRV1JCUW5WQlIxVkJZMmRDZWtGR09FRmtRVUo2?=
 =?utf-8?B?UVVjd1FWbDNRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlJVRkJRVUZCUVVGQlFVRm5RVUZCUVVGQmJtZEJRVUZIV1VGaWQwSXhR?=
 =?utf-8?B?VWMwUVZwQlFubEJTR3RCV0hkQ2QwRkhSVUZqWjBJd1FVYzBRVnBSUW5sQlNF?=
 =?utf-8?B?MUJXSGRDTVVGSE1FRlpkMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVkZCUVVGQlFVRkJRVUZEUVVGQlFVRkJRMlZCUVVG?=
 =?utf-8?B?QlduZENNRUZJVFVGWWQwSjNRVWhKUVdKM1FtdEJTRlZCV1hkQ01FRkdPRUZr?=
 =?utf-8?B?UVVKNVFVZEZRV0ZSUW5WQlIydEJZbWRDYmtGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVKQlFVRkJRVUZCUVVGQlNVRkJR?=
 =?utf-8?B?VUZCUVVvMFFVRkJRbnBCUjBWQllrRkNiRUZJVFVGWWQwSm9RVWROUVZsM1Fu?=
 =?utf-8?B?WkJTRlZCWW1kQ01FRkdPRUZqUVVKelFVZEZRV0puUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkZRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRV2RCUVVGQlFVRnVaMEZCUVVoTlFWbFJRbk5CUjFWQlkzZENaa0ZJ?=
 =?utf-8?B?UlVGa1VVSjJRVWhSUVZwUlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCVVVGQlFVRkJRVUZCUVVOQlFVRkJRVUZEWlVGQlFVRmpkMEoxUVVoQlFX?=
 =?utf-8?B?TjNRbVpCUjNkQllWRkNha0ZIVlVGaVowSjZRVWRWUVZoM1FqQkJSMVZCWTJk?=
 =?utf-8?B?Q2RFRkdPRUZOVVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFrRkJRVUZCUVVGQlFVRkpRVUZCUVVGQlNqUkJRVUZD?=
 =?utf-8?B?ZWtGSE5FRmpRVUo2UVVZNFFXSkJRbkJCUjAxQldsRkNkVUZJVFVGYVVVSm1R?=
 =?utf-8?B?VWhSUVZwUlFubEJSekJCV0hkQ2VrRklVVUZrVVVKclFVZFZRV0puUWpCQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVZCUVVGQlFVRkJRVUZCWjBGQlFV?=
 =?utf-8?B?RkJRVzVuUVVGQlNGbEJXbmRDWmtGSGMwRmFVVUkxUVVoalFXSjNRbmxCUjFG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGUlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlEwRkJRVUZCUVVFOUlpOCtQQzl0WlhSaFBnPT0=?=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=soares@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bf1d236-4265-4ef5-e0af-08d7a4dcb46e
x-ms-traffictypediagnostic: CH2PR12MB4117:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB411719C2D6C5EC68CDB63CDDAE050@CH2PR12MB4117.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:SPM;
 SFS:(10001)(10019020)(396003)(346002)(376002)(136003)(39860400002)(366004)(189003)(199004)(86362001)(53546011)(316002)(186003)(7696005)(6506007)(26005)(66446008)(64756008)(66556008)(66476007)(9686003)(54906003)(5660300002)(33656002)(55016002)(6916009)(52536014)(4326008)(66946007)(2906002)(8936002)(81156014)(966005)(71200400001)(76116006)(478600001)(81166006)(8676002)(42413003);
 DIR:OUT; SFP:1501; SCL:5; SRVR:CH2PR12MB4117;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?NjVGT3kwSkVGRmc2K3VoV3RUdGhTNHNuNmNzd2VMK2tkUE83cTB1SnNKUmQw?=
 =?utf-8?B?Q28rVWJnbndxdzdRbE5kM0JaOVFlV29QNVA5eFNpT0tzTUhkaXpZQWR5MUtJ?=
 =?utf-8?B?a3ZUZytrZkgxbm1iM3c3MkVJaTgrUE5KaCtESW9yck5FWFNzdTJvK3ExbE5x?=
 =?utf-8?B?ZzdhVW9WeEZxS3BLSnpQaVVVdTFPRzBDY01zUWE4UklOZTN4aWcyeWNSRW5F?=
 =?utf-8?B?cVNWYlVjN1Izd0YwUjNhelRoY3E3eVRSZ1JhVXI2V3YvNW1vSTJMTnlSdURI?=
 =?utf-8?B?N3BCYkNVczR0M3E4cytUSnUzSm9UazMwVFE1SGhxVW1ud2lMMmJmQXN5MUlI?=
 =?utf-8?B?Q0M3S3dXejJCVW1UUWs0VjdNbmNQakdkTE83VncvUXRJQmZKdFVDUGR2TUls?=
 =?utf-8?B?OStZZmd1TzFaRlNxSWVBNHVqMzB0MGJkZWVQQ1FoZjJZSTRURlkyR01zSElR?=
 =?utf-8?B?V09RQ2QxdkMwZWptZlh0ZU1JN1hLTzJjSGJtY2JjZm9XZWEreG5UR1lERGls?=
 =?utf-8?B?TVhnamVxS2VHcXJWV3JKcEl6ZmU3MVcwMDdVRC9tZWZORi9OTlNqR3hTYk5U?=
 =?utf-8?B?V1hKMXhzRnBTNTJjMXJnMUJ0TWdUU1NyZW1keEhZZ3NWNjhadU0zNTJDYjBW?=
 =?utf-8?B?azhKT2FVVk9NclV6NjdsNUl6N2h6TWEvaldUaTBTV2dGS3lGWlQyRTVKTTRV?=
 =?utf-8?B?dml6RzliSWdXamJXOG1ScUlFenRDVTJqOWluYkhXVmlzalQ3TEZMeCsvWGJ2?=
 =?utf-8?B?SytMd2JNbjJZaldUOUFyS2ZxNURhcHAxdGZQeUdxamFuUjBDTlMwbzhTb3VJ?=
 =?utf-8?B?VHBkaDNnVDVTWVVDaEtXRDVuN1YzNEsxbkV5L2lpeSt1WEJtNFBQQlJXSTlX?=
 =?utf-8?B?RDdUaVgxQitHcXh4TTlFNWhJeUl2amNldVgzVFhDRnJXb2VGbGxpL1l6SGY0?=
 =?utf-8?B?VnljT0ZHcEVkVGUzbHd5QmJ6dWNCMlFVWUlXc28zZnZ5YVlha2dXdVlNdGNX?=
 =?utf-8?B?SEF3WVplYVlkVndRbUh6blVUSVQxSGxhRlM1VGdsSWFVbzFJUFJIYjJwQ2I1?=
 =?utf-8?B?RmhaQkhvZE1RU1REWks3QVNtWWRHN0VzQUFWVndvOUVoYmdHd2h5UExtUndX?=
 =?utf-8?B?YzZmNHZIbEVlNTlaMmNrTUorV05XTlg2ZmUwbTNHcnk1c3J2dzU1R09iNWta?=
 =?utf-8?B?bUp6d00wUHVQcXpJLzBmdWFYdHQ0a3Y2VjhFUCtKbWI1bTQ1M2orTHVLaU9V?=
 =?utf-8?B?R1FIV0J6OEpDWlRxcmdzQjhFbzlzL3JVL3RPMjlJYm9YNXdrSGtLbFFaVmNp?=
 =?utf-8?B?YVh1QU1seFFVOXJBTUNOZHlWc1dxTXFkODZlNjRFSkVEeVo4YWJMbWt6M0Ni?=
 =?utf-8?B?M1c3SGlBckRzTFg1WHBjeDNIc3MwV0JoLzRhRkhpTHBQa1VqdW1KUlBKVDNO?=
 =?utf-8?Q?qxogclvL?=
x-ms-exchange-antispam-messagedata: Zzpgj7G0j4Q4BHRQtssDxcn7KdjfBGsyXiJlUp+9pVStb4oNBBxEgGjaCSFSS7iJnt8XwBSEQTHhyRj8DBDNuusiQzilg41bMEUFtjuuXa4d72dLQQrKIl2Yr1D7NdXmYKlbYSNRayeEZCpRVekhzg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bf1d236-4265-4ef5-e0af-08d7a4dcb46e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 17:00:12.0720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: duM8AGiX8VKLnhgqu7TH9wypXSOgqoA2Vb23jrYz62/rH/Tr2BP2Ajw3hVHsz+QrpG4ItH+XbvmHimi3f5wGXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4117
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_090032_059018_2D695E56 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Wolfram Sang <wsa@the-dreams.de>, gregkh <gregkh@linuxfoundation.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

SGkgQXJuZCwNCg0KRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4NCkRhdGU6IFdl
ZCwgSmFuIDI5LCAyMDIwIGF0IDE0OjMwOjU2DQoNCj4gT24gV2VkLCBKYW4gMjksIDIwMjAgYXQg
MToxNyBQTSBWaXRvciBTb2FyZXMgPFZpdG9yLlNvYXJlc0BzeW5vcHN5cy5jb20+IHdyb3RlOg0K
PiA+DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgaTNjZGV2X2RhdGEgew0KPiA+ICsgICAgICAgc3RydWN0
IGxpc3RfaGVhZCBsaXN0Ow0KPiA+ICsgICAgICAgc3RydWN0IGkzY19kZXZpY2UgKmkzYzsNCj4g
PiArICAgICAgIHN0cnVjdCBjZGV2IGNkZXY7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpk
ZXY7DQo+ID4gKyAgICAgICBpbnQgaWQ7DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgREVG
SU5FX0lEQShpM2NkZXZfaWRhKTsNCj4gPiArc3RhdGljIGRldl90IGkzY2Rldl9udW1iZXI7DQo+
ID4gKyNkZWZpbmUgSTNDX01JTk9SUyAxNiAvKiAxNiBJM0MgZGV2aWNlcyBzdXBwb3J0ZWQgZm9y
IG5vdyAqLw0KPiA+ICsNCj4gPiArc3RhdGljIExJU1RfSEVBRChpM2NkZXZfbGlzdCk7DQo+ID4g
K3N0YXRpYyBERUZJTkVfU1BJTkxPQ0soaTNjZGV2X2xpc3RfbG9jayk7DQo+IA0KPiBQbGVhc2Ug
dHJ5IHRvIGF2b2lkIGFyYml0cmFyaWx5IGxpbWl0aW5nIHRoZSBudW1iZXIgb2YgZGV2aWNlcyB5
b3Ugc3VwcG9ydC4NCg0KU2hvdWxkIEkgdXNlIGFsbCBtaW5vcnMgcmFuZ2UgaW5zdGVhZD8NCg0K
PiANCj4gU2VhcmNoaW5nIHRocm91Z2ggdGhlIGxpc3QgZmVlbHMgYSBsaXR0bGUgY2x1bXN5LiBJ
ZiB0aGUgaTNjIHVzZXIgaW50ZXJmYWNlIGlzDQo+IHN1cHBvc2VkIHRvIGJlY29tZSBhIHN0YW5k
YXJkIGZlYXR1cmUgb2YgdGhlIHN1YnN5c3RlbSwgaXQgd291bGQgc2VlbQ0KPiBhcHByb3ByaWF0
ZSB0byBwdXQgYSBwb2ludGVyIGludG8gdGhlIGRldmljZSB0byBzaW1wbGlmeSB0aGUgbG9va3Vw
LCANCg0KRG8geW91IG1lYW4gaTNjLT5kZXYgPw0KDQo+IG9yDQo+IGp1c3QgZW1iZWQgdGhlIGNk
ZXYgaW5zaWRlIG9mIGkzY19kZXZpY2UuDQoNCkkgd291bGQgcHJlZmVyIHRvIGhhdmUgYSBwb2lu
dGVyIGluIGkzY19kZXZpY2UgZm9yIGkzY2Rldl9kYXRhLCBidXQgSSBzZWUgDQpvdGhlcnMgdXNp
bmcgaXQgaW4gZHJ2ZGF0YS4NCg0KPiANCj4gPiArc3RhdGljIGludA0KPiA+ICtpM2NkZXZfZG9f
cHJpdl94ZmVyKHN0cnVjdCBpM2NfZGV2aWNlICpkZXYsIHN0cnVjdCBpM2NfaW9jX3ByaXZfeGZl
ciAqeGZlcnMsDQo+ID4gKyAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgbnhmZXJzKQ0K
PiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgaTNjX3ByaXZfeGZlciAqa194ZmVyczsNCj4gPiAr
ICAgICAgIHU4ICoqZGF0YV9wdHJzOw0KPiA+ICsgICAgICAgaW50IGksIHJldCA9IDA7DQo+ID4g
Kw0KPiA+ICsgICAgICAga194ZmVycyA9IGtjYWxsb2MobnhmZXJzLCBzaXplb2YoKmtfeGZlcnMp
LCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICAgIGlmICgha194ZmVycykNCj4gPiArICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gKw0KPiA+ICsgICAgICAgZGF0YV9wdHJzID0ga2Nh
bGxvYyhueGZlcnMsIHNpemVvZigqZGF0YV9wdHJzKSwgR0ZQX0tFUk5FTCk7DQo+ID4gKyAgICAg
ICBpZiAoIWRhdGFfcHRycykgew0KPiA+ICsgICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOw0K
PiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX2tfeGZlcjsNCj4gPiArICAgICAgIH0N
Cj4gDQo+IE1heWJlIHVzZSBhICBjb21iaW5lZCBhbGxvY2F0aW9uIHRvIHNpbXBsaWZ5IHRoZSBl
cnJvciBoYW5kbGluZz8NCg0KQ291bGQgeW91IHBsZWFzZSBwcm92aWRlIGFuIGV4YW1wbGU/DQoN
Cj4gDQo+ID4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnhmZXJzOyBpKyspIHsNCj4gPiArICAg
ICAgICAgICAgICAgZGF0YV9wdHJzW2ldID0gbWVtZHVwX3VzZXIoKGNvbnN0IHU4IF9fdXNlciAq
KQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAodWludHB0
cl90KXhmZXJzW2ldLmRhdGEsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHhmZXJzW2ldLmxlbik7DQo+IA0KPiA+ICsgICAgICAgICAgICAgICBpZiAoeGZl
cnNbaV0ucm53KSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNvcHlfdG9fdXNl
cigodm9pZCBfX3VzZXIgKikodWludHB0cl90KXhmZXJzW2ldLmRhdGEsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkYXRhX3B0cnNbaV0sIHhmZXJzW2ldLmxl
bikpDQo+IA0KPiBVc2UgdTY0X3RvX3VzZXJfcHRyKCkgaGVyZS4NCg0KWW91IGFyZSByaWdodCwg
aXQgd2Fzbid0IGF2YWlsYWJsZSB3ZW50IEkgZGlkIGl0Lg0KDQo+IA0KPiA+ICsNCj4gPiArc3Rh
dGljIHN0cnVjdCBpM2NfaW9jX3ByaXZfeGZlciAqDQo+ID4gK2kzY2Rldl9nZXRfaW9jX3ByaXZf
eGZlcih1bnNpZ25lZCBpbnQgY21kLCBzdHJ1Y3QgaTNjX2lvY19wcml2X3hmZXIgKnVfeGZlcnMs
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCAqbnhmZXJzKQ0KPiA+
ICt7DQo+ID4gKyAgICAgICB1MzIgdG1wID0gX0lPQ19TSVpFKGNtZCk7DQo+ID4gKw0KPiA+ICsg
ICAgICAgaWYgKCh0bXAgJSBzaXplb2Yoc3RydWN0IGkzY19pb2NfcHJpdl94ZmVyKSkgIT0gMCkN
Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gKw0KPiA+
ICsgICAgICAgKm54ZmVycyA9IHRtcCAvIHNpemVvZihzdHJ1Y3QgaTNjX2lvY19wcml2X3hmZXIp
Ow0KPiA+ICsgICAgICAgaWYgKCpueGZlcnMgPT0gMCkNCj4gPiArICAgICAgICAgICAgICAgcmV0
dXJuIE5VTEw7DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIG1lbWR1cF91c2VyKHVfeGZlcnMs
IHRtcCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAraTNjZGV2X2lvY19w
cml2X3hmZXIoc3RydWN0IGkzY19kZXZpY2UgKmkzYywgdW5zaWduZWQgaW50IGNtZCwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTNjX2lvY19wcml2X3hmZXIgKnVfeGZlcnMpDQo+
ID4gK3sNCj4gPiArICAgICAgIHN0cnVjdCBpM2NfaW9jX3ByaXZfeGZlciAqa194ZmVyczsNCj4g
PiArICAgICAgIHVuc2lnbmVkIGludCBueGZlcnM7DQo+ID4gKyAgICAgICBpbnQgcmV0Ow0KPiA+
ICsNCj4gPiArICAgICAgIGtfeGZlcnMgPSBpM2NkZXZfZ2V0X2lvY19wcml2X3hmZXIoY21kLCB1
X3hmZXJzLCAmbnhmZXJzKTsNCj4gPiArICAgICAgIGlmIChJU19FUlJfT1JfTlVMTChrX3hmZXJz
KSkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoa194ZmVycyk7DQo+ID4gKw0K
PiA+ICsgICAgICAgcmV0ID0gaTNjZGV2X2RvX3ByaXZfeGZlcihpM2MsIGtfeGZlcnMsIG54ZmVy
cyk7DQo+IA0KPiBUaGUgSVNfRVJSX09SX05VTEwoKSB1c2FnZSBsb29rcyBzdXNwaWNpb3VzLiBJ
dCdzIGdlbmVyYWxseQ0KPiBiZXR0ZXIgdG8gYXZvaWQgaW50ZXJmYWNlcyB0aGF0IHJlcXVpcmUg
dGhpcy4gV2hhdCBkb2VzIGl0IG1lYW4gdG8NCj4gcmV0dXJuIE5VTEwgZnJvbSBpM2NkZXZfZ2V0
X2lvY19wcml2X3hmZXIoKSBhbmQgdHVybiB0aGF0IGludG8NCj4gc3VjY2Vzcz8gQ291bGQgeW91
IGhhbmRsZSB0aGlzIGNvbmRpdGlvbiBpbiB0aGUgY2FsbGVyIGluc3RlYWQsDQo+IG9yIHR1cm4g
aXQgaW50byBhbiBlcnJvcj8NCg0KSW4gYm90aCBjYXNlcyBzb21ldGhpbmcgaXMgbm90IGNvcnJl
Y3QuIEkgd2lsbCB0dXJuIGJvdGggY29uZGl0aW9ucyB0byANCnJldHVybiBFUlJfUFRSKC1FSU5W
QUwpIGFuZCB0aGVtIGp1c3QgY2hlY2sgaWYgKElTX0VSUihrX3hmZXIpKS4NCg0KPiANCj4gPiAr
ICAgICAgIC8qIEtlZXAgdHJhY2sgb2YgYnVzc2VzIHdoaWNoIGhhdmUgZGV2aWNlcyB0byBhZGQg
b3IgcmVtb3ZlIGxhdGVyICovDQo+ID4gKyAgICAgICByZXMgPSBidXNfcmVnaXN0ZXJfbm90aWZp
ZXIoJmkzY19idXNfdHlwZSwgJmkzY19ub3RpZmllcik7DQo+ID4gKyAgICAgICBpZiAocmVzKQ0K
PiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF91bnJlZ19jbGFzczsNCj4gPiArDQo+ID4gKyAg
ICAgICAvKiBCaW5kIHRvIGFscmVhZHkgZXhpc3RpbmcgZGV2aWNlIHdpdGhvdXQgZHJpdmVyIHJp
Z2h0IGF3YXkgKi8NCj4gPiArICAgICAgIGkzY19mb3JfZWFjaF9kZXYoTlVMTCwgaTNjZGV2X2F0
dGFjaCk7DQo+IA0KPiBUaGUgY29tYmluYXRpb24gb2YgdGhlIG5vdGlmaWVyIGFuZCBzZWFyY2hp
bmcgdGhyb3VnaCB0aGUgZGV2aWNlcw0KPiBzZWVtcyB0byBiZSByYWN5LiBXaGF0IGhhcHBlbnMg
d2hlbiBhIGRldmljZSBhcHBlYXJzIGp1c3QgYmVmb3JlDQo+IG9yIGR1cmluZyB0aGUgaTNjX2Zv
cl9lYWNoX2RldigpIHRyYXZlcnNhbD8NCg0KVGhlIGkzYyBjb3JlIGlzIGxvY2tlZCBkdXJpbmcg
dGhpcyBwaGFzZS4NCg0KPiANCj4gV2hhdCBoYXBwZW5zIHdoZW4gYSBkcml2ZXIgYXR0YWNoZXMg
dG8gYSBkZXZpY2UgdGhhdCBpcyBjdXJyZW50bHkNCj4gdHJhbnNmZXJyaW5nIGRhdGEgb24gdGhl
IHVzZXIgaW50ZXJmYWNlPw0KPiANCg0KSXQgbWF5IGxvc3QgcmVmZXJlbmNlcyBmb3IgaW5vZGUg
YW5kIGZpbGUuIEkgbmVlZCB0byBndWFyYW50ZWUgdGhlcmUgbm8gDQp0cmFuZmVyIGdvaW5nIG9u
IGR1cmluZyB0aGUgZGV0YWNoLg0KRG8geW91IGhhdmUgYW55IHN1Z2dlc3Rpb24/DQoNCj4gSXMg
dGhlcmUgYW55IGd1YXJhbnRlZSB0aGF0IHRoZSBub3RpZmllcnMgZm9yIGF0dGFjaCBhbmQgZGV0
YWNoDQo+IGFyZSBzZXJpYWxpemVkPw0KPiANCg0KU29ycnkgSSBkaWRuJ3QgZ2V0IHRoaXMgcGFy
dC4gDQoNCj4gPiArLyoqDQo+ID4gKyAqIHN0cnVjdCBpM2NfaW9jX3ByaXZfeGZlciAtIEkzQyBT
RFIgaW9jdGwgcHJpdmF0ZSB0cmFuc2Zlcg0KPiA+ICsgKiBAZGF0YTogSG9sZHMgcG9pbnRlciB0
byB1c2Vyc3BhY2UgYnVmZmVyIHdpdGggdHJhbnNtaXQgZGF0YS4NCj4gPiArICogQGxlbjogTGVu
Z3RoIG9mIGRhdGEgYnVmZmVyIGJ1ZmZlcnMsIGluIGJ5dGVzLg0KPiA+ICsgKiBAcm53OiBlbmNv
ZGVzIHRoZSB0cmFuc2ZlciBkaXJlY3Rpb24uIHRydWUgZm9yIGEgcmVhZCwgZmFsc2UgZm9yIGEg
d3JpdGUNCj4gPiArICovDQo+ID4gK3N0cnVjdCBpM2NfaW9jX3ByaXZfeGZlciB7DQo+ID4gKyAg
ICAgICBfX3U2NCBkYXRhOw0KPiA+ICsgICAgICAgX191MTYgbGVuOw0KPiA+ICsgICAgICAgX191
OCBybnc7DQo+ID4gKyAgICAgICBfX3U4IHBhZFs1XTsNCj4gPiArfTsNCj4gPiArDQo+ID4gKw0K
PiA+ICsjZGVmaW5lIEkzQ19QUklWX1hGRVJfU0laRShOKSAgXA0KPiA+ICsgICAgICAgKCgoKHNp
emVvZihzdHJ1Y3QgaTNjX2lvY19wcml2X3hmZXIpKSAqIChOKSkgPCAoMSA8PCBfSU9DX1NJWkVC
SVRTKSkgXA0KPiA+ICsgICAgICAgPyAoKHNpemVvZihzdHJ1Y3QgaTNjX2lvY19wcml2X3hmZXIp
KSAqIChOKSkgOiAwKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBJM0NfSU9DX1BSSVZfWEZFUihOKSAg
IFwNCj4gPiArICAgICAgIF9JT0MoX0lPQ19SRUFEfF9JT0NfV1JJVEUsIEkzQ19ERVZfSU9DX01B
R0lDLCAzMCwgSTNDX1BSSVZfWEZFUl9TSVpFKE4pKQ0KPiANCj4gVGhpcyBsb29rcyBsaWtlIGEg
cmVhc29uYWJsZSBpb2N0bCBkZWZpbml0aW9uLCBhdm9pZGluZyB0aGUgdXN1YWwgcHJvYmxlbXMN
Cj4gd2l0aCBjb21wYXQgbW9kZSBldGMuDQoNCkRvIHlvdSB0aGluayBJIHNob3VsZCBhZGQgbW9y
ZSByZXNlcnZlZCBmaWVsZHMgZm9yIGZ1dHVyZT8NCg0KPiANCj4gICAgICAgQXJuZA0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gbGludXgt
aTNjIG1haWxpbmcgbGlzdA0KPiBsaW51eC1pM2NAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBodHRw
czovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuaW5m
cmFkZWFkLm9yZ19tYWlsbWFuX2xpc3RpbmZvX2xpbnV4LTJEaTNjJmQ9RHdJQ0FnJmM9RFBMNl9Y
XzZKa1hGeDdBWFdxQjB0ZyZyPXFWdVU2NHU5eDc3WTBLZDBQaERLX2xweEZnZzZQSzlQYXRlSHdq
Yl9EWTAmbT1wdjh4VV93T3BETE9rd2RRaXVCRHNvNzNFS3ZOUFgyalhMdEJIRFZXUkZvJnM9Uy1U
ZXNrOEhpM09rNnk5ZF95c29jSFhHdDJkbW5uLVdjTTBCeHVyY0RkUSZlPSANCg0KVGhhbmtzIGZv
ciB5b3VyIGNvbW1lbnRzIPCfmIoNCg0KQmVzdCByZWdhcmRzLA0KVml0b3IgU29hcmVzDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1pM2MgbWFp
bGluZyBsaXN0CmxpbnV4LWkzY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtaTNjCg==
