Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFBE11AEBB
	for <lists+linux-i3c@lfdr.de>; Wed, 11 Dec 2019 16:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLEh9BqwA8et9ICfQ+nrCbbYe8TdgT+ZiEskr+z+Uaw=; b=Te+PrTqWlIcF48
	5y44zOrF5Hz4rkB/iaNfDx2UJV1rROglR0eU/6WIoZDnS6uX+6ZLpms8NU4A0ktUkvqMr9KS6mmkF
	TpR0lnJ09Bma7DwPo2tmSroINsHyGQtks7yCX/Z6UrlovccpPqZOnOURqMzP1rN9BnsyfHwpAQFln
	Qg/6i1SIbdbsBudVJ4PYNvP2Rvfs3/sx1zJQ3OIX9yQkF9Eya2zbEoFTR6EneIuEIj1ujDR2KRcKm
	T6rewsUBq8srCy7C9lxrsz7z9dBk4UJrRu102zWNVBMCQ4YLOwSliN4j4dCtjnUkcZHFZyldbhM6O
	QsQa5zWvOJ9B0+gg/+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3ae-00006A-1X
	for lists+linux-i3c@lfdr.de; Wed, 11 Dec 2019 15:07:48 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3ab-00005j-0b
 for linux-i3c@lists.infradead.org; Wed, 11 Dec 2019 15:07:46 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8C7BF42D5C;
 Wed, 11 Dec 2019 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576076863; bh=XOQ+ktaJ70Lbvjm8ZSdbFcM/eJs38SI6qBlet25K+4g=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RA4FRcBRdWAahm843PM5d2NkHUPsNU0RKS5Ot2bYy+bMhYb11UDmG7TVL8DFms2Dn
 DFBc3K333xHo/kkJLlC2Kyon498lbNeAFO9Kjgo3/ZUE5CTdH3ybkMtjWdoQz9v/aK
 lQWR4SIfvuxfZSVmbDLjr+fjgViOq+ULKzlni9VonFINbj4tOPzCz7c80vNr4bjd0M
 +jV70Ke3aRl6XR4LBr04ts90YduYBIgt+ALSJrFOOKwRaxBXWLHO55ho79KLaPeRhw
 j6hKbT+xVzKrFQIuW6YvQqWx4sCqKxHUv/oxAqllw2NO4UJzEJB2IjroN9q6vdqJBZ
 oWMyU89TiUbjg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 8AA0FA007F;
 Wed, 11 Dec 2019 15:07:42 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.13.188.44) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Dec 2019 07:07:38 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.13.188.44) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 11 Dec 2019 07:07:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E10MC2sOikg+rNAGxH74LPcRi89LFTnYAxrAeTCLb4jBgQ/Ju+PVXzjpIbFQpq9BYNYsL/TgMhahUEGnjWLMCLJ2FIsnwvJBjVdodzyGj2AmnkSFT0CsFHs30o7L97yBrX4x8trZmUctOtrUoBQ1RwULkYxlSu+VxduMgZv/ktZjuGJcIbb4mf1BJJqshg7b7YCFj6CNPGbqqzZB55ganfxVd7wkbdv5NYnFuTBEINEmZHhjnUja2D8I+Cj65nh3+x1m+i5n3mIgYjvCmzhm52oh3JJhNVjVDe2E5KcYsO7o2d/xNcUuIqYuMGcTNIhgeOzqIcW5wt+OCXDYzDqTjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XOQ+ktaJ70Lbvjm8ZSdbFcM/eJs38SI6qBlet25K+4g=;
 b=KOxtf7DiOZUoM6D2LCmqODX5t9wCXZBxWTFZ4pdbFSMjS+di9wHpkJ/4g6Oy2reUtgt4PWEvkCMs9mrU4BPgCIlRLvC7s/IhcObCFlbrCZesW9fx8vjppoEESiDmiX1H6VOA94tEwnWHwWypQwaVnIADq3kuLCx4fQRzMpWQ+p3G/nd+bwjoNC0CaIm7QfBjyIE8vc6aYxbXaCQ+8m4MX467tSHZOcDNV8QOaXZzhvoyjFzhvxAv+jYWamnWHfTQU9AkoaXCPa3k4eVt6XC0jdlSSnPp5Q0P3WWNK63YItdo5B4b+S3wo+Mr8M5anTHhHPv1ipsVTCRmn05oWL1hQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XOQ+ktaJ70Lbvjm8ZSdbFcM/eJs38SI6qBlet25K+4g=;
 b=FEU2W5diXrfcBK88Al8Z1LjNDudhn8azZCRH6Pz6DZN1Xq+qB2J6X8A/LG/Uwn4kZYrp+Xxbc+dHvMMa2S6N8Zx5Ms21lTBOUC6BNfKAXFVrJ1mzg9O2k1BKyoIJnvDeMJkiRa06B41qyHaVm2JGXQ2LqjV++m7pXveIqAMLyZs=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB4231.namprd12.prod.outlook.com (20.180.17.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Wed, 11 Dec 2019 15:07:36 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff%7]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 15:07:36 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [RFC 5/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Topic: [RFC 5/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Index: AQHVr2/iKIpGMGLN70aN99S9k54hW6ezpfQAgAAC6ICAABq2AIABGOsQ
Date: Wed, 11 Dec 2019 15:07:36 +0000
Message-ID: <CH2PR12MB4216CE03448AF3B39C23D3BCAE5A0@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1575977795.git.vitor.soares@synopsys.com>
 <f9f20eaf900ed5629dd3d824bc1e90c7e6b4a371.1575977795.git.vitor.soares@synopsys.com>
 <CAK8P3a1cwoTbT3zsa-tfApwewDT1-ksHZs6_vkBYpKbgptsfjw@mail.gmail.com>
 <CH2PR12MB4216E04995E421F04B7662DEAE5B0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <CAK8P3a00wfUbGU1a9nS1dtDsUo1GR1V1WqRwa+DmUKVStvicTw@mail.gmail.com>
In-Reply-To: <CAK8P3a00wfUbGU1a9nS1dtDsUo1GR1V1WqRwa+DmUKVStvicTw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzI5aGNtVnpYR0Z3Y0dSaGRHRmNjbTloYldsdVoxd3dPV1E0TkRsaU5p?=
 =?utf-8?B?MHpNbVF6TFRSaE5EQXRPRFZsWlMwMllqZzBZbUV5T1dVek5XSmNiWE5uYzF4?=
 =?utf-8?B?dGMyY3RaalE1TnpneVlqTXRNV015TnkweE1XVmhMVGd5TnpNdFlqZ3dPR05t?=
 =?utf-8?B?TlRsa04yWmpYR0Z0WlMxMFpYTjBYR1kwT1RjNE1tSTBMVEZqTWpjdE1URmxZ?=
 =?utf-8?B?UzA0TWpjekxXSTRNRGhqWmpVNVpEZG1ZMkp2WkhrdWRIaDBJaUJ6ZWowaU16?=
 =?utf-8?B?TTVNQ0lnZEQwaU1UTXlNakExTlRBME5UUTVNRFEzTURVNUlpQm9QU0pFVUdj?=
 =?utf-8?B?NWFVeFpTbkZGVEdKa1luVlNOR1kzYzBNMU4wSTVNalE5SWlCcFpEMGlJaUJp?=
 =?utf-8?B?YkQwaU1DSWdZbTg5SWpFaUlHTnBQU0pqUVVGQlFVVlNTRlV4VWxOU1ZVWk9R?=
 =?utf-8?B?MmRWUVVGQ1VVcEJRVUZVVXk4ck0wNU1SRlpCVTJwaFFXOUhiRFF2T1dwTFRt?=
 =?utf-8?B?OURaMkZZYWk4eVRVOUJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
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
x-ms-office365-filtering-correlation-id: eb18abab-f3da-421c-ec35-08d77e4bdb9a
x-ms-traffictypediagnostic: CH2PR12MB4231:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB4231FF121AC9527F4C025885AE5A0@CH2PR12MB4231.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(346002)(366004)(39860400002)(189003)(199004)(66946007)(64756008)(8936002)(66556008)(53546011)(81166006)(66476007)(76116006)(26005)(6916009)(8676002)(66446008)(54906003)(33656002)(81156014)(55016002)(52536014)(71200400001)(4326008)(478600001)(966005)(316002)(6506007)(5660300002)(186003)(86362001)(2906002)(9686003)(7696005)(42413003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4231;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 58kCB7Ua+uad2unZBn+6R/pO6T+/EkT2aA7VyF3zZgGDdaQchx02PT0P1uVCHLzbK7ljMQoWK/fKYJ11nX8DVfAITwboNEmeLj0ZMmLzTQUj1qlHuWgPJ4By6/A9ytMwsqgoqDp5IorKPdQ0miHQeqrsSALv4b3C9mNPJA674iNd4X0+p0dRyk7m25JDylElriN3Jo2EoxJlxrAI3gvMVYRatKBzQzhaeODk4BaUSsayCZ1tGT7yRt4+UP/wudz1ZRCddffCAVatF6fWYwwBjkxoal5QF+W7zgdDJLoZuGvr1ZN7g5YbJaW36KUETQtcCULSxV0n8fj+vn4KXuZ3pa7EVHX+3ZO+FTvt7WI/WjCitQwpO5gSrmxfTYG23Nu6WBl9X2OCKrC/8jwVmpggUsauFz3qi/TZhfZl4icN+9Ly97SzHm2bLVQR91x5N/QJjp3XgoAL4kNB4rXyu3wHVASwByaHyU94WTkFhz3FFu1t4PAi2AT8lYuiaYcQ0hIa7xsVelA7aZjMoNvMNUwdFzUML+0FIWV9inyo9uRBto6E8ZI7rMRFCeXC6M+y0yKT
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb18abab-f3da-421c-ec35-08d77e4bdb9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 15:07:36.7428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KsgfIQ2pn6mWXIFcMW0h+e/PttFFE5I7fF35P+N+HUmtbRzxf6UIpG8zx/jWTx3O4E6Fm4mCo/Vu+t3d2f3bQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4231
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_070745_124715_8C88092F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>, Wolfram Sang <wsa@the-dreams.de>,
 gregkh <gregkh@linuxfoundation.org>, Boris Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

SGkgQXJuZCwNCg0KRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4NCkRhdGU6IFR1
ZSwgRGVjIDEwLCAyMDE5IGF0IDE5OjM3OjE0DQoNCj4gT24gVHVlLCBEZWMgMTAsIDIwMTkgYXQg
ODoxNSBQTSBWaXRvciBTb2FyZXMgPFZpdG9yLlNvYXJlc0BzeW5vcHN5cy5jb20+IHdyb3RlOg0K
PiA+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+DQo+ID4gRGF0ZTogVHVlLCBE
ZWMgMTAsIDIwMTkgYXQgMTc6NTE6MTQNCj4gPg0KPiA+ID4gT24gVHVlLCBEZWMgMTAsIDIwMTkg
YXQgNDozNyBQTSBWaXRvciBTb2FyZXMgPFZpdG9yLlNvYXJlc0BzeW5vcHN5cy5jb20+IHdyb3Rl
Og0KPiA+ID4gPg0KPiA+ID4gPiArLyogSU9DVEwgY29tbWFuZHMgKi8NCj4gPiA+ID4gKyNkZWZp
bmUgSTNDX0RFVl9JT0NfTUFHSUMgICAgICAweDA3DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0cnVj
dCBpM2NfaW9jX3ByaXZfeGZlciB7DQo+ID4gPiA+ICsgICAgICAgc3RydWN0IGkzY19wcml2X3hm
ZXIgX191c2VyICp4ZmVyczsgICAgIC8qIHBvaW50ZXJzIHRvIGkzY19wcml2X3hmZXIgKi8NCj4g
PiA+ID4gKyAgICAgICBfX3UzMiBueGZlcnM7ICAgICAgICAgICAgICAgICAgICAgICAgICAgLyog
bnVtYmVyIG9mIGkzY19wcml2X3hmZXIgKi8NCj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4gPiA+
ID4gKyNkZWZpbmUgSTNDX0lPQ19QUklWX1hGRVIgICAgICBcDQo+ID4gPiA+ICsgICAgICAgX0lP
VyhJM0NfREVWX0lPQ19NQUdJQywgMzAsIHN0cnVjdCBpM2NfaW9jX3ByaXZfeGZlcikNCj4gPiA+
ID4gKw0KPiA+ID4gPiArI2RlZmluZSAgSTNDX0lPQ19QUklWX1hGRVJfTUFYX01TR1MgICAgNDIN
Cj4gPiA+DQo+ID4gPiBUaGlzIGlzIG5vdCBhIGdyZWF0IGRhdGEgc3RydWN0dXJlIGZvciBVQVBJ
LCBwbGVhc2Ugc2VlDQo+ID4gPiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIv
dXJsP3U9aHR0cHMtM0FfX2dpdC5rZXJuZWwub3JnX3B1Yl9zY21fbGludXhfa2VybmVsX2dpdF9h
cm5kX3BsYXlncm91bmQuZ2l0X3RyZWVfRG9jdW1lbnRhdGlvbl9jb3JlLTJEYXBpX2lvY3RsLnJz
dC0zRmgtM0Rjb21wYXQtMkRpb2N0bC0yRGVuZGdhbWUtMjZpZC0zRDkyNzMyNGI3OTAwZWU5Yjg3
NzY5MWE4YjIzN2UyNzJmYWJiMjFiZjUmZD1Ed0lCYVEmYz1EUEw2X1hfNkprWEZ4N0FYV3FCMHRn
JnI9cVZ1VTY0dTl4NzdZMEtkMFBoREtfbHB4RmdnNlBLOVBhdGVId2piX0RZMCZtPTVROVdqSzBv
OTNOUjdEUTlOTTZTbzZtZmRncE5uWm5TYVA4cU1wZ2FDN0Umcz1MenpqclVRQUc4Zng1amtWeUs3
M2RCRHJhaE5BdmswOUN4eGx4M0tPaVhJJmU9DQo+ID4gPg0KPiA+ID4gZm9yIHNvbWUgYmFja2dy
b3VuZC4gSSdtIHBsYW5uaW5nIHRvIHN1Ym1pdCB0aGF0IGRvY3VtZW50YXRpb24gZm9yDQo+ID4g
PiBtYWlubGluZSBpbnRlZ3JhdGlvbiBzb29uLg0KPiA+ID4NCj4gPiA+ICAgICAgQXJuZA0KPiA+
DQo+ID4gVGhhbmtzIGZvciBzaGFyaW5nIHRoZSBkb2N1bWVudC4NCj4gPg0KPiA+IE15IHVuZGVy
c3RhbmRpbmcgaXMgdGhhdCBJIHNob3VsZCB1c2UgYSBkYXRhIHN0cnVjdHVyZSBsaWtlIHRoZSBz
dHJ1Y3QNCj4gPiBzcGlfaW9jX3RyYW5zZmVyLCB3aXRoIHRoaXMgSSBtYXkgYWxzbyB1c2UgdGhl
IHNhbWUgaW9jdGwgY29tbWFuZA0KPiA+IGRlZmluaXRpb24uIEFtIEkgcmlnaHQ/DQo+IA0KPiBZ
ZXMsIHRoYXQgd291bGQgYmUgYW4gZXhhbXBsZSBvZiBhIHN0cnVjdHVyZSB0aGF0IGZvbGxvd3Mg
dGhlIGJlc3QNCj4gcHJhY3RpY2VzIGZyb20gbXkgZG9jdW1lbnQuIEl0IGlzIHN0aWxsIHJhdGhl
ciBjb21wbGV4LCBzbyBpZiB5b3UNCj4gY2FuIG1ha2UgaXQgYW55IHNpbXBsZXIsIHRoYXQgd291
bGQgYmUgaWRlYWwuDQoNCkkgd2lsbCB0cnkgdG8gZG8gdGhhdC4NCg0KPiANCj4gPiBJbiB0aGUg
ZG9jdW1lbnRhdGlvbiB5b3UgYWxzbyByZWZlciB0aGUgY29tcGFjdF9pb2N0bCgpIGFuZCBJdCBp
cyBub3QNCj4gPiBjbGVhciB0byBtZSBpZiB0aGUgY29tcGFjdF9pb2N0bCgpIGlzIG1hbmRhdG9y
eSBpbiB0aGlzIGNhc2UuIFNob3VsZCBJDQo+ID4gaW1wbGVtZW50IGl0IGFzIHdlbGw/DQo+IA0K
PiBJZiB0aGUgc3RydWN0dXJlIGlzIGRlZmluZWQgbGlrZSB0aGF0LCB5b3UganVzdCBuZWVkIHRv
IHNldA0KPiAiLmNvbXBhdF9pb2N0bD1jb21wYXRfcHRyX2lvY3RsLCIgaW4gdGhlIGZpbGVfb3Bl
cmF0aW9ucyBzdHJ1Y3R1cmUNCj4gYW5kIGl0IHdpbGwgd29yaywgYnV0IHlvdSBjYW5ub3Qgc2tp
cCB0aGF0IHN0ZXAuDQoNClRoYW5rcywgbm93IEkga25vdyB0aGF0IGlzIG1hbmRhdG9yeSDwn5iK
Lg0KDQo+IA0KPiBBcyB5b3VyIGludGVyZmFjZSBpcyBiYXNpY2FsbHkganVzdCByZWFkL3dyaXRl
IGJhc2VkLCBJIHdvbmRlcg0KPiBpZiB0aGVyZSBpcyBhIHdheSB0byBjb21wbGV0ZWx5IGF2b2lk
IHRoZSBpb2N0bCBhbmQgaW5zdGVhZA0KPiB1c2UgaW9fc3VibWl0KCkgYXMgdGhlIHByaW1hcnkg
aW50ZXJmYWNlLg0KPiANCj4gICAgICAgQXJuZA0KDQpJIGNvbmZlc3MgdGhhdCBJIHdhc24ndCBm
YW1pbGlhciB3aXRoIGlvX3N1Ym1pdCgpIHVudGlsIG5vdyBhbmQgd2VudCANCnN0cmFpZ2h0d2F5
IGZvciB0aGUgaW9jdGwoKSBhcHByb2FjaC4NClNvIGZhciwgbXkgdW5kZXJzdGFuZGluZyBpcyB0
aGF0IGlvX3N1Ym1pdCgpIHdpbGwgY2FsbCAud3JpdGUgb3IgLnJlYWQgb2YgDQppM2NkZXYgbW9k
dWxlIGRlcGVuZGluZyBvbiB0aGUgaW9jYiBjb21tYW5kLiBpZiBzbywgd2Ugd29uJ3QgYmUgYWJs
ZSB0byANCmRvIGEgcmVwZWF0ZWQgc3RhcnQgYmV0d2VlbiBhIG11bHRpcGxlIGlvY2IgaW4gdGhl
IHNhbWUgbGlzdCwgcmlnaHQ/DQoNCkFwYXJ0IGZyb20gdGhpcyBwcml2YXRlIHJlYWQvd3JpdGUg
bmVlZCwgYW5vdGhlciByZXF1aXJlbWVudCB0aGF0IGxlYWRzIA0KbWUgdG8gdXNlIHRoZSBpb2N0
bCgpIHdhczoNCi0gV2hlbiB3ZSBzdXBwb3J0IEhEUiBjb21tYW5kIGluIGkzYyBzdWJzeXN0ZW0g
d2UgY2FuIGV4cGFuZCB0aGUgaW9jdGwoKSANCmNvbW1hbmQgdG8gc3VwcG9ydCBpdC4NCi0gRm9y
IG5vdywgZGV2aWNlIEFQSSBkb2Vzbid0IGV4cG9zZSBDQ0MgY29tbWFuZHMgYnV0IHNvbWUgb2Yg
dGhlbSBhcmUgDQp1c2VkIGZvciBhIHByaXZhdGUgY29udHJhY3QgYmV0d2VlbiBtYXN0ZXIgYW5k
IGRldmljZSBhbmQgd2UgbGlrZWx5IG5lZWQgDQp0aGF0IHN1cHBvcnQgaW4gdGhlIGZ1dHVyZSBh
cyB3ZWxsLg0KDQpUaGFua3MsDQpCZXN0IHJlZ2FyZHMsDQpWaXRvciBTb2FyZXMNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtaTNjIG1haWxp
bmcgbGlzdApsaW51eC1pM2NAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWkzYwo=
