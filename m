Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D90F16182C
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 17:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2ED+ACqmO81r0kAoGnDtvu+g9pNp/60QJKPgHY/bZs=; b=d6Ol/5ZgH7zFdB
	z6XPDElUrHXSfPI5/EQGmH7Uv5THe5z9LPI0LSr1lAa99jMRk4lz5zPaMMRgsrk8OTzHYzZWUijn0
	PPHyF4dy+oY/X0WdY+7rAG6edIV0Q144nerZL1KL9ySufUwAYV4RgQw27VO/aF6Gab2dLDOLcVjQQ
	QUOKhou6OKANGckI7UqHdiREsTykrVXDxT2P6qmN3HEe/jnVZdiEdqwvn1xjOw78SZ9SgP3pBhTEm
	SM5EZyoZkUuK907jeZxFEcZfG4N749C25o6EflTl9cEQQTpKyH8xKwdStnq63PoH5cYENmVafzTpJ
	qaqfILv1ZbH7teqWbSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jWj-0005HA-OI
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 16:45:45 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3j0l-00076y-Q0
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 16:12:45 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3157DC050E;
 Mon, 17 Feb 2020 16:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1581955963; bh=K1MgltPX8bTaPICLhpteaRO4rs37x9Q1WDAUivgw0Ok=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Vcqv28Ybuj+cOZJjvr7UfiQnBqVb1u4DbSTAyJNVqAXRPWnlOZATgg57shA6CtjkX
 NyqHb1Raq51LmFvWeMWqpT7RuhbWeLZKIalO7NgtlcGb8cu1ZDFWBwVEh5QfdQx4TC
 unzSJbBDXnM7wUO0rGTS9lqw5yg+C6Vo5hPitT43AodPRqQW970k20Q6IloPfjmtkV
 IgcaqdEY8Jgn9y8nU0k1NGPcZgwUYowIqfjUV6JUJLzu4O5+4MO5svECvEzJg4JM5g
 2LbRvxFybxBae9vpX2VsD/GEnXpvjwC/doh0SR9/PvhX/otO6PYCbhVuDYikHJzVhH
 WdR/aq+iI7BRw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 05454A006A;
 Mon, 17 Feb 2020 16:12:43 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 17 Feb 2020 08:12:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 17 Feb 2020 08:12:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E8Vymo49yzoLBbKfwpls0++zsiCg0s+mzYQhWdnIDsf+SXq+XYR+ZoBAGoZnN0ZT/LE4qQTQax25AKFmMize99CmINJtXKHNOlrGKHdrWAI/WprEuLiEZbAOaKaGKsKHI6wNNfKK/QzTQVinVzVSeNXti9oJ8Bhm5V+/s0aDGj/g1+a6YAR4yBVb3hMuhhh21WciGHQZpCNMvu0oQt43C3hHNh1FjRew6gvzFMgl5Prp0StitFSUTzqAYM1TAb5m36vD6aUHe3sGl9XYfeigKwDzw2I1hBVfGTcfVxLlc9r0oCHcLz2C+nOkz+wjzziW0TMhBPal1roqLqJnmJ4WPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1MgltPX8bTaPICLhpteaRO4rs37x9Q1WDAUivgw0Ok=;
 b=P8FjnfEXU71wsYOFASX0P0fRKMybs+ORU7BpwPX0F+hH2gtY7YvhJWMyfI1bVLOm1T3yL7piKEGrGJDPW9jNcNVDlewU/6NSv1jWlnLZ6WXvd/haqhpgQ0DeiW6Xdq9pkovprBxDfa4QMIOh0hp9iZDY7/vE1B2wM10ihRYdv6CqX7O1YNjxzYuv3Yz/c0PMc4O7u093k3vzhDbAdmpK1P2wcWxK8C0MLSAaKJmDItHZH8Mh/IWqO818WFCrp5eQjHlTBonec/Zm0i77CInL8n5WnrgP+WHOkIhMY19X9GOyZq+XY78Mt7ml8qNRmFKunwaoSO1kstUlfiV3iQTb0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1MgltPX8bTaPICLhpteaRO4rs37x9Q1WDAUivgw0Ok=;
 b=gxT38BDrPaEvkyeO6D+PRMzyN9dZQ3p/8SXsi1ejhyly2FZnWOe/ZBwh+MeewksHnMxkpjFmHWWqJPn1MktC0YHN7ZmN2KUW06Q+LY7weCoZS7tGLO4U7KcvUdoSKBrgv46XMpRx/BfJcHTr2qR+hEB0z9p08mYsTYn99Qi955I=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB3959.namprd12.prod.outlook.com (52.132.245.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Mon, 17 Feb 2020 16:12:41 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe%5]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 16:12:41 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: gregkh <gregkh@linuxfoundation.org>
Subject: RE: [RFC v2 0/4] Introduce i3c device userspace interface
Thread-Topic: [RFC v2 0/4] Introduce i3c device userspace interface
Thread-Index: AQHV1p4wiafUt0giokeVAyQbyadp7qgflkqAgAAENoCAAAhGAIAAAN0wgAAGyoCAAADAwA==
Date: Mon, 17 Feb 2020 16:12:41 +0000
Message-ID: <CH2PR12MB421610BDA54B7292BB439824AE160@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <20200217155141.08e87b3f@collabora.com>
 <CAK8P3a0jAbevb6mjy7Q=C-TFGn7uHRvshHNEO8XrDPRvRoAiTA@mail.gmail.com>
 <20200217163622.6c78fa3f@collabora.com>
 <CH2PR12MB42166ED8E84503B53340F80DAE160@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20200217160345.GA1501229@kroah.com>
In-Reply-To: <20200217160345.GA1501229@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzI5aGNtVnpYR0Z3Y0dSaGRHRmNjbTloYldsdVoxd3dPV1E0TkRsaU5p?=
 =?utf-8?B?MHpNbVF6TFRSaE5EQXRPRFZsWlMwMllqZzBZbUV5T1dVek5XSmNiWE5uYzF4?=
 =?utf-8?B?dGMyY3ROR1k0WW1GbU5UUXROVEZoTUMweE1XVmhMVGd5T0dRdFlqZ3dPR05t?=
 =?utf-8?B?TlRsa04yWmpYR0Z0WlMxMFpYTjBYRFJtT0dKaFpqVTFMVFV4WVRBdE1URmxZ?=
 =?utf-8?B?UzA0TWpoa0xXSTRNRGhqWmpVNVpEZG1ZMkp2WkhrdWRIaDBJaUJ6ZWowaU16?=
 =?utf-8?B?WTNOaUlnZEQwaU1UTXlNalkwTWprMU5Ua3dOVFU0TVRjeElpQm9QU0pVZFhF?=
 =?utf-8?B?d1NVeGlPRU5TUm5SaVl6UjZaVEpWTVRGeFRsWTJjSE05SWlCcFpEMGlJaUJp?=
 =?utf-8?B?YkQwaU1DSWdZbTg5SWpFaUlHTnBQU0pqUVVGQlFVVlNTRlV4VWxOU1ZVWk9R?=
 =?utf-8?B?MmRWUVVGQ1VVcEJRVVJpWlZOUlZISmxXRlpCWkVsV2RXNDFiMmh0YXpJd2FG?=
 =?utf-8?B?YzJabTFwUjJGVVdVOUJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlNFRkJRVUZEYTBOQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UlVGQlVVRkNRVUZCUVhOUWNGSkhVVUZCUVVGQlFVRkJRVUZCUVVGQlFVbzBR?=
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
x-ms-office365-filtering-correlation-id: 049e1160-2d0f-468a-a663-08d7b3c43700
x-ms-traffictypediagnostic: CH2PR12MB3959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB39595AD2AD43C7280A95D2D8AE160@CH2PR12MB3959.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(39860400002)(346002)(396003)(136003)(189003)(199004)(71200400001)(66946007)(186003)(5660300002)(9686003)(2906002)(66446008)(86362001)(55016002)(316002)(478600001)(64756008)(66556008)(66476007)(4326008)(7696005)(8936002)(6506007)(26005)(76116006)(53546011)(54906003)(81166006)(81156014)(6916009)(52536014)(8676002)(33656002)(42413003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB3959;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pu0Al0Hk3aSykrWIpfJPAxBDN2xOdimyCL6BXG1T7M/Tc3wNexhM2iWzTtDwTXuzvVCzFWGkRGz6vI45lE1R3IRa4415eU6AHsmtTipMZdBrKDoA7mKgGkqtf+MHEpzvwibAe7TWna3OkeNbuhjBFQX/pOcEtcmnG61GoKOhiHN9pKZ8RG+QcH7PEXwalrViU7eZvLH/2qr5TqKu6bNu839ToUhh303toD7BrRuzLuiHlzfxz72dZFTE9mpA+4LbFbRdktWz5DMjDfMmkwVrWfw1r+A/9n98q27QkFwGaT52/N8VFXrQR4gQQK2gvxNvoUldY+xOxY7QutqPMk2x+IvcPAYOxZX79yc+VbekFiaYaj7Fdp5G40XZraliH3LGqBLbKBD5u/TcOV/hm4nXwPXwxZJp45caq89ITfZWGxYl0V20yvnIHmTkxl6ET+I4MKZWT4rkwm90E4CFy4fSlvav5UBnzSs95Sy8PNE5WUT7pSwBxxRF1sMFMdzBOjct
x-ms-exchange-antispam-messagedata: q38KQN8jpUeeLvLwBjXAGl9yMGMVDOFpwnFHanYk5iHumiLhX+MKavvw5n3qVUluYsg2n52OU2xE7oHqVo8tOM6OeVgqzkwCz2gV0VgWYgqqTvE10H2IF45lF3VH6YTl+rlsoRPubmpFg96WgILLaA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 049e1160-2d0f-468a-a663-08d7b3c43700
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 16:12:41.2532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Js8Bh2SyF4TEbrHWRzu8Ni5EYmu5CZZM37/PD+eh8CaHcY3DLgxHr6u5aVStg/5kv4Fm9MHHeDEYlNfCodQcbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3959
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_081243_980446_93B0E8A8 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao  Pinto <Joao.Pinto@synopsys.com>,
 Arnd Bergmann <arnd@arndb.de>, Wolfram Sang <wsa@the-dreams.de>,
 Mark Brown <broonie@kernel.org>, Boris  Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

RnJvbTogZ3JlZ2toIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCkRhdGU6IE1vbiwgRmVi
IDE3LCAyMDIwIGF0IDE2OjAzOjQ1DQoNCj4gT24gTW9uLCBGZWIgMTcsIDIwMjAgYXQgMDM6NTU6
MDhQTSArMDAwMCwgVml0b3IgU29hcmVzIHdyb3RlOg0KPiA+IEhpLA0KPiA+IA0KPiA+IEZyb206
IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQo+ID4gRGF0
ZTogTW9uLCBGZWIgMTcsIDIwMjAgYXQgMTU6MzY6MjINCj4gPiANCj4gPiA+IE9uIE1vbiwgMTcg
RmViIDIwMjAgMTY6MDY6NDUgKzAxMDANCj4gPiA+IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+IHdyb3RlOg0KPiA+ID4gDQo+ID4gPiA+IE9uIE1vbiwgRmViIDE3LCAyMDIwIGF0IDM6NTEg
UE0gQm9yaXMgQnJlemlsbG9uDQo+ID4gPiA+IDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNv
bT4gd3JvdGU6DQo+ID4gPiA+ID4gU29ycnkgZm9yIHRha2luZyBzbyBsb25nIHRvIHJlcGx5LCBh
bmQgdGhhbmtzIGZvciB3b3JraW5nIG9uIHRoYXQgdG9waWMuDQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiBPbiBXZWQsIDI5IEphbiAyMDIwIDEzOjE3OjMxICswMTAwDQo+ID4gPiA+ID4gVml0b3IgU29h
cmVzIDxWaXRvci5Tb2FyZXNAc3lub3BzeXMuY29tPiB3cm90ZToNCj4gPiA+ID4gPiAgDQo+ID4g
PiA+ID4gPiBGb3IgdG9kYXkgdGhlcmUgaXMgbm8gd2F5IHRvIHVzZSBpM2MgZGV2aWNlcyBmcm9t
IHVzZXIgc3BhY2UgYW5kDQo+ID4gPiA+ID4gPiB0aGUgaW50cm9kdWN0aW9uIG9mIHN1Y2ggQVBJ
IHdpbGwgaGVscCBkZXZlbG9wZXJzIGR1cmluZyB0aGUgaTNjIGRldmljZQ0KPiA+ID4gPiA+ID4g
b3IgaTNjIGhvc3QgY29udHJvbGxlcnMgZGV2ZWxvcG1lbnQuDQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4gVGhlIGkzY2RldiBtb2R1bGUgaXMgaGlnaGx5IGJhc2VkIG9uIGkyYy1kZXYgYW5kIHll
dCBJIHRyaWVkIHRvIGFkZHJlc3MNCj4gPiA+ID4gPiA+IHRoZSBjb25jZXJucyByYWlzZWQgaW4g
WzFdLg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IE5PVEVTOg0KPiA+ID4gPiA+ID4gLSBUaGUg
aTNjZGV2IGR5bmFtaWNhbGx5IHJlcXVlc3QgYW4gdW51c2VkIG1ham9yIG51bWJlci4NCj4gPiA+
ID4gPiA+DQo+ID4gPiA+ID4gPiAtIFRoZSBpM2MgZGV2aWNlcyBhcmUgZHluYW1pY2FsbHkgZXhw
b3NlZC9yZW1vdmVkIGZyb20gZGV2LyBmb2xkZXIgYmFzZWQNCj4gPiA+ID4gPiA+ICAgb24gaWYg
dGhleSBoYXZlIGEgZGV2aWNlIGRyaXZlciBib3VuZCB0byBpdC4gIA0KPiA+ID4gPiA+DQo+ID4g
PiA+ID4gTWF5IEkgYXNrIHdoeSB5b3UgbmVlZCB0byBhdXRvbWF0aWNhbGx5IGJpbmQgZGV2aWNl
cyB0byB0aGUgaTNjZGV2DQo+ID4gPiA+ID4gZHJpdmVyIHdoZW4gdGhleSBkb24ndCBoYXZlIGEg
ZHJpdmVyIG1hdGNoaW5nIHRoZSBkZXZpY2UgaWQNCj4gPiA+ID4gPiBsb2FkZWQvY29tcGlsZWQt
aW4/IElmIHdlIGdldCB0aGUgaTNjIHN1YnN5c3RlbSB0byBnZW5lcmF0ZSBwcm9wZXINCj4gPiA+
ID4gPiB1ZXZlbnRzIHdlIHNob3VsZCBiZSBhYmxlIHRvIGxvYWQgdGhlIGkzY2RldiBtb2R1bGUg
YW5kIGJpbmQgdGhlIGRldmljZQ0KPiA+ID4gPiA+IHRvIHRoaXMgZHJpdmVyIHVzaW5nIGEgdWRl
diBydWxlLiAgDQo+ID4gPiA+IA0KPiA+ID4gPiBJIHRoaW5rIHRoYXQgd291bGQgcmVxdWlyZSBt
YW51YWwgY29uZmlndXJhdGlvbiB0byBlbnN1cmUgdGhhdCB0aGUgY29ycmVjdA0KPiA+ID4gPiBz
ZXQgb2YgZGV2aWNlcyBnZXQgYm91bmQgdG8gZWl0aGVyIHRoZSB1c2Vyc3BhY2UgZHJpdmVyIG9y
IGFuIGluLWtlcm5lbA0KPiA+ID4gPiBkcml2ZXIuDQo+ID4gPiANCj4gPiA+IEhtLCBpc24ndCB0
aGF0IHdoYXQgdWRldiBpcyBzdXBwb3NlZCB0byBkbyBhbnl3YXk/IFJlbWVtYmVyIHRoYXQNCj4g
PiA+IEkzQyBkZXZpY2VzIGV4cG9zZSBhIG1hbnVmYWN0dXJlciBhbmQgcGFydC1pZCAod2hpY2gg
YXJlIHNpbWlsYXIgdG8gdGhlDQo+ID4gPiBVU0IgdmVuZG9yIGFuZCBwcm9kdWN0IGlkcyksIHNv
IGRlY2lkaW5nIHdoZW4gYW4gSTNDIGRldmljZSBzaG91bGQgYmUNCj4gPiA+IGJvdW5kIHRvIHRo
ZSBpM2NkZXYgZHJpdmVyIHNob3VsZCBiZSBmYWlybHkgZWFzeSwgYW5kIHRoYXQncyBhDQo+ID4g
PiBwZXItZGV2aWNlIGRlY2lzaW9uIGFueXdheS4NCj4gPiA+IA0KPiA+ID4gPiBUaGUgbWV0aG9k
IGZyb20gdGhlIGN1cnJlbnQgcGF0Y2ggc2VyaWVzIGlzIG1vcmUgY29tcGxpY2F0ZWQsDQo+ID4g
PiA+IGJ1dCBpdCBtZWFucyB0aGF0IGFueSBkZXZpY2UgY2FuIGJlIGFjY2Vzc2VkIGJ5IHRoZSB1
c2VyIHNwYWNlIGRyaXZlcg0KPiA+ID4gPiBhcyBsb25nIGFzIGl0J3Mgbm90IGFscmVhZHkgb3du
ZWQgYnkgYSBrZXJuZWwgZHJpdmVyLg0KPiA+ID4gDQo+ID4gPiBXZWxsLCBJJ20gbW9yZSB3b3Jy
aWVkIGFib3V0IHRoZSBleHRyYSBjaHVybiB0aGlzIGF1dG8tYmluZGluZyBsb2dpYw0KPiA+ID4g
bWlnaHQgY3JlYXRlIGZvciB0aGUgY29tbW9uICdvbi1kZW1hbmQgZHJpdmVyIGxvYWRpbmcnIHVz
ZSBjYXNlLiBBdA0KPiA+ID4gZmlyc3QsIHRoZXJlJ3Mgbm8gZHJpdmVyIG1hdGNoaW5nIGEgc3Bl
Y2lmaWMgZGV2aWNlLCBidXQgdXNlcnNwYWNlDQo+ID4gPiBtaWdodCBsb2FkIG9uZSBiYXNlZCBv
biB0aGUgdWV2ZW50cyBpdCByZWNlaXZlcy4gV2l0aCB0aGUgY3VycmVudA0KPiA+ID4gYXBwcm9h
Y2gsIHRoYXQgbWVhbnMgd2UnZCBmaXJzdCBoYXZlIHRvIHVuYmluZCB0aGUgZGV2aWNlIGJlZm9y
ZQ0KPiA+ID4gbG9hZGluZyB0aGUgZHJpdmVyLiBBRkFJQ1QsIG5vIG90aGVyIHN1YnN5c3RlbSBk
b2VzIHRoYXQuDQo+ID4gDQo+ID4gSSdtIGFib3V0IHRvIGZpbmlzaCB2MyAodG9kYXkgb3IgdG9t
b3Jyb3cpIGFuZCBJIHRoaW5rIEkgZml4ZWQgYWxsIA0KPiA+IGNvbmNlcm5zIHJpc2UgZHVyaW5n
IHYyLiBJIHdvdWxkIGxpa2UgeW91IHRvIHNlZSB0aGF0IHZlcnNpb24gYmVmb3JlIGFueSANCj4g
PiBjaGFuZ2UuDQo+IA0KPiBXaHkgYXJlIHRoZXJlIHNvIG1hbnkgIlJGQyIgc2VyaWVzIGhlcmU/
ICBJIHRyZWF0ICJSRkMiIGFzICJJIGRvbid0DQo+IHJlYWxseSBsaWtlIHRoaXMgcGF0Y2ggYnV0
IEknbSB0aHJvd2luZyBpdCBvdXQgdGhlcmUgZm9yIG90aGVycyB0byBsb29rDQo+IGF0IGlmIHRo
ZXkgY2FyZSIuICBObyBSRkMgc2hvdWxkIGV2ZXIgZ28gb24gYmV5b25kIGEgdjEgDQoNCk15IGJh
ZCDimLkuDQoNCj4gYXMgb2J2aW91c2x5IHlvdQ0KPiB0aGluayB0aGlzIGlzIGdvb2QgZW5vdWdo
IGJ5IG5vdywgcmlnaHQ/DQoNClllcyBhbmQgSSByZWFsbHkgYXBwcmVjaWF0ZSB0aGUgZmVlZGJh
Y2sgdGhhdCBsZWFkcyBtZSB0byB0aGlzIHYzLg0KDQo+IA0KPiBBbHNvLCBJIGFsbW9zdCBuZXZl
ciByZXZpZXcgUkZDIHBhdGNoZXMsIHdlIGhhdmUgZW5vdWdoICJyZWFsIiBwYXRjaGVzDQo+IHRv
IHJldmlldyBhcyBpdCBpcyA6KQ0KPiANCj4gdGhhbmtzLA0KPiANCj4gZ3JlZyBrLWgNCg0KVGhh
bmtzIGZvciB5b3VyIGFkdmljZS4NCg0KDQpCZXN0IHJlZ2FyZHMsDQpWaXRvciBTb2FyZXMNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtaTNj
IG1haWxpbmcgbGlzdApsaW51eC1pM2NAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWkzYwo=
