Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1675E118C67
	for <lists+linux-i3c@lfdr.de>; Tue, 10 Dec 2019 16:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PIs/aq8/gIO1vaE9jzQv9MrNDlCQi5hTrTxvmYTz3g=; b=VETEqNAJdRUYyS
	LOFe73NoY1ptl03s8rqFu8D9JHlu66TuKPF/mynXnFcbDQlgcbEPgqF23N6d7RIgkaBAREfjUlFFB
	v484T8hxHBCFJ0ST4An7OWxoa+axrks7kmc++MGpriL49MfkEkwCsbZ1pSEgI1e4KhfgK9gO94A5M
	IKe1TGpakr405vOKhGvApShreJtk3YCbmMKhVF8lIR226c1J+3qd0/ZnF7d348NHQdJ3aTtohPVNV
	CppNKDwdZAWb4SKVToBfYqNTegzSgCljfR0abDuw8noYxcyQZ1NZ4eRsZ8ckhF3nPqzvtsLoWFu34
	r8O7vjEBZE+mX8KLV7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehMX-00069D-RD
	for lists+linux-i3c@lfdr.de; Tue, 10 Dec 2019 15:23:45 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehMT-00068n-Vt
 for linux-i3c@lists.infradead.org; Tue, 10 Dec 2019 15:23:43 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B9ED9405E0;
 Tue, 10 Dec 2019 15:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1575991420; bh=xSYsNn6AiuMITZ9JFz5V56x0hUS832IvcGLYxrAFeDE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Is3SYC2adT5AkV29mXNB2YnMhSIdWRC7dZ3KeGMcS4BLarRLcxyXvCRZxQM0arZiq
 A5NLq7mW269HwP1/vbRg4cSDCgVybTa8lI8dgp6bx8Axc3hiaJ8o8vsb3ASrQTMs2+
 wckhlAcHgI4UFm8OB+kFvxJn9u5HCFpr9o4r8J7JZtbgdMgrHY486wPXJUx4XFqyZm
 QeKTpY3JY9OuQ3Rg5q100WeILWo89CKI5oJeSLen93bXqIetGs8GDXLMTvrP+fX+b7
 w3HbRANQvswUSRZNmcF8JbZP2u2jOpvn+uyU22CqqdkjM/9dC3J9T8FOGiRHjHdKFw
 wPH1RZLJS/WQg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 636A9A0093;
 Tue, 10 Dec 2019 15:23:40 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Dec 2019 07:23:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 10 Dec 2019 07:23:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GCYtT52f1bxRlMPm31aXwNWYnj9KAVhX6YPfpsiVrIf7GocsErOhYjHIHC/KWiQgaTChBfy6x4i/CUKPUJRNNH8lfE6xHtW8K1obHbqQRsfCSGKafoNcqm+DEEanyrsAAhz+Q4S6SL+bl7XIRENV7opZcUTspKJZAf5GQTcYU+krNWGtAhQxk7Fqjkbf8ogFWFBcD+k5YCm2CQRINMNUYRKXysGbcGHnJDHhKdru1Vg3labDm8Xxp9BKIUsSLyCgskrplnwMvX0mzihxCOTQquN6se7J9NyvIN03EoR7VcqI1pV0Ewq/bWNmkHdC2jUtxt8YWhgQWRjxauLtZU6jlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSYsNn6AiuMITZ9JFz5V56x0hUS832IvcGLYxrAFeDE=;
 b=EiRppOHDiYOjsmmyXBRkKAp7gBKSbcg1GEMWaEAkTGcXBLR5/CyR52oxB/s4jw4uhEBXzQ8LewDKq+/Ecj1KuJ5B1uajBhiFPevEZBE5P0KkwGObZQKDbW1xMzB/S59UwscZ5H19AiKArm9eVFQzcxZ6y+YFRr2LYoE/8F5IAVN6/cGwzCZjEweak9nSDAsIKQeiJEsF5B2uKjtzR51zN5NxgixR+jSW2GFGOipfTfZcsH1CbpSVIIdQ61zrkrnyUPEL2MGAHl5bDDxRNq6HLeB2CfTML9LQQSp3hqsu8cQFBnaj1nBUXdn/miYSOc0JFQNqRTC98jcaUfPkpug2WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSYsNn6AiuMITZ9JFz5V56x0hUS832IvcGLYxrAFeDE=;
 b=ZqtgDZCJiFKbR/caZ9qu+98aB5jZgbbGSf01RtAc7ugpHGjWX0uQ5wjWxB68jLTQl21ElqGGCsFwfFineOZoUnA/i0aAitFGv3zYIZb/pUkw7mus9Zt18LsuDyMMKNKBqy68OzO1o2BqJ7kWZ/JBcdKJDOfaaHjUHe5i+A8eG5k=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB4327.namprd12.prod.outlook.com (20.180.17.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Tue, 10 Dec 2019 15:23:37 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 15:23:37 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: =?utf-8?B?UHJ6ZW15c8WCYXcgR2Fq?= <pgaj@cadence.com>
Subject: RE: [PATCH] i3c: make sure the PID is set before registering the
 device
Thread-Topic: [PATCH] i3c: make sure the PID is set before registering the
 device
Thread-Index: AQHVrdJ4nZAaAnrnDUGcf9+6qEb26aexj5yAgAAmgfCAAAXyAIABrJRwgAAL1ICAAABzQA==
Date: Tue, 10 Dec 2019 15:23:37 +0000
Message-ID: <CH2PR12MB42165CB07AB08627BC0477BBAE5B0@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <20191208141834.10310-1-pgaj@cadence.com>
 <20191209104711.5a549d31@collabora.com>
 <CH2PR12MB42164BC8E6A616AF111D45B1AE580@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191209132616.22ba009c@collabora.com>
 <CH2PR12MB4216B9AF8D7BDD7E3A950E9CAE5B0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191210144232.GA31515@global.cadence.com>
In-Reply-To: <20191210144232.GA31515@global.cadence.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzI5aGNtVnpYR0Z3Y0dSaGRHRmNjbTloYldsdVoxd3dPV1E0TkRsaU5p?=
 =?utf-8?B?MHpNbVF6TFRSaE5EQXRPRFZsWlMwMllqZzBZbUV5T1dVek5XSmNiWE5uYzF4?=
 =?utf-8?B?dGMyY3RNRFZpWmpReVpHUXRNV0kyTVMweE1XVmhMVGd5TnpJdFlqZ3dPR05t?=
 =?utf-8?B?TlRsa04yWmpYR0Z0WlMxMFpYTjBYREExWW1ZME1tUmxMVEZpTmpFdE1URmxZ?=
 =?utf-8?B?UzA0TWpjeUxXSTRNRGhqWmpVNVpEZG1ZMkp2WkhrdWRIaDBJaUJ6ZWowaU5U?=
 =?utf-8?B?QTFNeUlnZEQwaU1UTXlNakEwTmpVd01UVTNNamd6TkRNMUlpQm9QU0p3WVRS?=
 =?utf-8?B?c00yZDRVMEp2UTJwVE5XRktTRzFzYkZwdU0yZGphMEU5SWlCcFpEMGlJaUJp?=
 =?utf-8?B?YkQwaU1DSWdZbTg5SWpFaUlHTnBQU0pqUVVGQlFVVlNTRlV4VWxOU1ZVWk9R?=
 =?utf-8?B?MmRWUVVGQ1VVcEJRVUp5YlVWbVMySmhMMVpCWVZwa05sVjFWbUpQS3k5d2JE?=
 =?utf-8?B?TndVelZXY3pjM09FOUJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
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
x-ms-office365-filtering-correlation-id: 0948172f-41ab-49b7-2428-08d77d84edf8
x-ms-traffictypediagnostic: CH2PR12MB4327:
x-microsoft-antispam-prvs: <CH2PR12MB4327F2FD3CDF2F60F50AAF4EAE5B0@CH2PR12MB4327.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(189003)(199004)(6506007)(81156014)(26005)(64756008)(71200400001)(33656002)(966005)(81166006)(2906002)(498600001)(55016002)(76116006)(186003)(8936002)(5660300002)(54906003)(6916009)(86362001)(4326008)(66946007)(66446008)(66476007)(66556008)(8676002)(7696005)(52536014)(9686003)(66574012);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4327;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9DAqm45fUS6jOUaP4MRmCIebGPhsV+pLJNl1+xnI4PYrOLHj0ZeTue0fHS4dgNYi0YTk2W1ysLITrdPaa5SqFL49FHo4+mtVhMOYlVL4gQNWhdy8Fou6CUWW6h1QrntfF5uzz7KMG1tb0l0OgXSinfmc0tdms/bcya2a5G8+UaOVXocNQ5iayTdcpCmfG62xD+YSWaqoOGQB+LSva7IR9hOoSzItUb1ebU3qlXaA2q4Hm3ugufpYlUfdlEiTQvVhXA9NHxQmj8chIsMUvXiSpUdVBySa8PJwXeiWBzhxROVRj8yvsjpKkoHrPKIRqZpssTDZApDaFOuteBbZ9ban6g1XkqKHUNIdv46fsPmON5cN9ZkNdzjgJWReoRQN3ZApIxBOIEeAD9WoXG/5whQcnNuoVXJIfbzmkLyQbLZKI6ziVmq0nVhDC2GqAn9KI0MoLesgtVWfKJxHM0Zxw04tYKEHpsaG8Wo/XkbosiCDD1s=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0948172f-41ab-49b7-2428-08d77d84edf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 15:23:37.7224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V/D9GN/k7ct0r7X+e1uoW4ysKc1XLZX+/LdiSBZbFosWUZMn7fmGE6hAGSwNx7SZDjLByZXJ9ZIgCYOiPRCxnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4327
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_072342_110951_F41B3893 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "rafalc@cadence.com" <rafalc@cadence.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

SGkgUHJ6ZW15c8WCYXcsDQoNCkZyb206IFByemVteXPFgmF3IEdhaiA8cGdhakBjYWRlbmNlLmNv
bT4NCkRhdGU6IFR1ZSwgRGVjIDEwLCAyMDE5IGF0IDE0OjQyOjMzDQoNCj4gSGkgVml0b3IsDQo+
IA0KPiBUaGUgMTIvMTAvMjAxOSAxNDoyOCwgVml0b3IgU29hcmVzIHdyb3RlOg0KPiA+IA0KPiA+
IEhpIEJvcmlzLA0KPiA+IA0KPiA+IEZyb206IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemls
bG9uQGNvbGxhYm9yYS5jb20+DQo+ID4gRGF0ZTogTW9uLCBEZWMgMDksIDIwMTkgYXQgMTI6MjY6
MTYNCj4gPiANCj4gPiA+IE9uIE1vbiwgOSBEZWMgMjAxOSAxMjoyMDowMyArMDAwMA0KPiA+ID4g
Vml0b3IgU29hcmVzIDxWaXRvci5Tb2FyZXNAc3lub3BzeXMuY29tPiB3cm90ZToNCj4gPiA+IA0K
PiA+ID4gPiBIaSBCb3JpcywNCj4gPiA+ID4gDQo+ID4gPiA+IEZyb206IEJvcmlzIEJyZXppbGxv
biA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQo+ID4gPiA+IERhdGU6IE1vbiwgRGVj
IDA5LCAyMDE5IGF0IDA5OjQ3OjExDQo+ID4gPiA+IA0KPiA+ID4gPiA+IE9uIFN1biwgOCBEZWMg
MjAxOSAxNToxODozNCArMDEwMA0KPiA+ID4gPiA+IFByemVteXPFgmF3IEdhaiA8cGdhakBjYWRl
bmNlLmNvbT4gd3JvdGU6DQo+ID4gPiA+ID4gICANCj4gPiA+ID4gPiA+IEZyb206IFByemVteXNs
YXcgR2FqIDxwZ2FqQGNhZGVuY2UuY29tPg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBQcm92
aXNpb25lZCBJRCAoUElEKSBpcyB0aGUgdmFsdWUgd2l0aCB3aGljaCBkZXZpY2UgZHJpdmVycyBh
cmUNCj4gPiA+ID4gPiA+IG1hdGNoZWQuIEkgY2hlY2sgdGhlIHZhbHVlIGJlZm9yZSByZWdpc3Rl
cmluZyB0aGUgZGV2aWNlLg0KPiA+ID4gPiA+ID4gICANCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBD
YW4gdGhpcyBzaXR1YXRpb24gKGhhdmluZyBhIGRldmljZSB3aXRoIGEgREEgYnV0IHdpdGhvdXQg
YSB2YWxpZCBQSUQpDQo+ID4gPiA+ID4gaGFwcGVuIHJpZ2h0IG5vdyBvciBpcyB0aGlzIHNvbWV0
aGluZyB5b3UgbmVlZCB0byBzdXBwb3J0IHNlY29uZGFyeQ0KPiA+ID4gPiA+IG1hc3RlcnMgd2hv
IHJlY2VpdmUgZGV2aWNlIERBICh0aHJvdWdoIERFRlNWTFMpIHdpdGhvdXQgYmVpbmcgYWJsZSB0
bw0KPiA+ID4gPiA+IHF1ZXJ5IGV4dHJhIGluZm9ybWF0aW9uIHVudGlsIHRoZXkgb3duIHRoZSBi
dXM/ICANCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgaXMgdGhlIHVzZSBjYXNlIHdoZXJlIGEgZGV2
aWNlIGZhaWxzIHRoZSANCj4gPiA+ID4gaTNjX21hc3Rlcl9wcmVfYXNzaWduX2R5bl9hZGRyKCkg
YW5kIEkgYWxyZWFkeSBtZW50aW9uIGl0IG9uIFsxXS4NCj4gPiA+ID4gSSBzdGlsbCB0aGluayB0
aGUgYmVzdCB3YXkgaXMgdG8gZGV0YWNoL2ZyZWUgdGhlIGRldmljZXMgdGhhdCBmYWlscyANCj4g
PiA+ID4gZHVyaW5nIGkzY19tYXN0ZXJfcHJlX2Fzc2lnbl9keW5fYWRkcigpLg0KPiA+ID4gDQo+
ID4gPiBBbmQgSSBkaXNhZ3JlZSAoSSBnYXZlIG15IGFyZ3VtZW50cyBhbHJlYWR5LCBzbyB3b24n
dCByZXBlYXQgdGhlbQ0KPiA+ID4gaGVyZSkuDQo+ID4gDQo+ID4gU29ycnkgQm9yaXMsIGRpZCB5
b3UgZ2l2ZT8gSSBhc2sgeW91IHNldmVyYWwgdGltZXMgd2h5IHRvIGtlZXAgbm9uIERBIA0KPiA+
IGRldmljZXMgYXR0YWNoZWQgdG8gdGhlIGJ1cywgeWV0IHlvdSB3YXNuJ3QgYWJsZSB0byBnaXZl
IG1lIGEgdGVjaG5pY2FsIA0KPiA+IHJlYXNvbi4gRXZlbiBmcm9tIGRldmljZSBtb2RlbCB5b3Ug
c2hvdWxkIGtlcHQgdGhlbS4NCj4gDQo+IEkgdGhpbmsgd2Ugc2hvdWxkIGtlZXAgdGhlbSBiZWNh
dXNlIGZyYW1ld29yayBzaG91bGQgc3RpbGwgaGF2ZSB0aGUNCj4gaW5mb3JtYXRpb24gYWJvdXQg
YWxsIHRoZSBkZXZpY2VzLiBXZSBhbHJlYWR5IGRpc2N1c3NlZCB0aGF0LCByaWdodD8NCj4gRXNw
ZWNpYWxseSwgd2hlbiB3ZSBoYXZlIHRvIGRlYWwgd2l0aCBncm91cCBhZGRyZXNzZXMgc29vbiwg
aXQncyBiZXR0ZXINCj4gdG8ga2VlcCB0aGVtLg0KDQpDb3VsZCB5b3UgcGxlYXNlIHBvaW50IG1l
IHdoZXJlIGRvIHdlIG5lZWQgaXQ/IFdlIHN0aWxsIGhhdmUgdGhlIA0KYm9hcmRpbmZvIHRoYXQg
aG9sZCBEVCBpbmZvcm1hdGlvbiB3aGljaCBpcyB3aGF0IHdlIG5lZWQuDQoNCklmIGEgZGV2aWNl
IGRvZXNuJ3QgaGF2ZSBEQSwgd2h5IGRvIHdlIG5lZWQgaXQ/IEJ5IGRlZmluaXRpb24gdGhlIGkz
YyBkZXYgDQpkZXNjIGlzIHRoZSBkaXNjb3ZlcmVkIGRldmljZXMsIGlmIGl0IGRvZXNuJ3QgaGF2
ZSBhbiBEQSBpc24ndCBkaXNjb3ZlcmVkIA0KeWV0Lg0KDQo+IA0KPiA+IEhvbmVzdGx5LCBJJ20g
c3RhcnRpbmcgYXNrIG15c2VsZiBpZiB0aGlzIGlzIHNvbWV0aGluZyBhZ2FpbnN0IGJlY2F1c2Ug
DQo+ID4gZXZlcnkgdGltZSB0aGF0IEknbSB0cnlpbmcgdG8gaW1wcm92ZSBzb21ldGhpbmcgSSBq
dXN0IHNlZSBkaWZmaWN1bHR5IA0KPiA+IGZyb20geW91ciBzaWRlLg0KPiANCj4gRG9uJ3QgZm9y
Z2V0IHRoYXQgbXkgcGF0Y2hlcyBhcmUgYWNjZXB0ZWQgYWZ0ZXIgNnRoLCA3dGggdmVyc2lvbnMu
IEkNCj4gdGhpbmsgdGhhdCBpdCBqdXN0IHNob3VsZCB3b3JrIGxpa2UgdGhhdC4gVGhpcyBtYWtl
cyB0aGluZ3MgYmV0dGVyIDopDQoNCkkgZG9uJ3QgaGF2ZSBpc3N1ZSBpbiBzZW5kIG11bHRpcGxl
IHZlcnNpb25zIG9mIG15IHBhdGNoZXMgYXMgbG9uZyBhcyANCnRoZXkgYXJlIGltcHJvdmVkLiBJ
biB0aGlzIGNhc2UsICBJIGRvbid0IGFncmVlIHdpdGggQm9yaXMncyByZXF1aXJlbWVudHMgDQpi
ZWNhdXNlIGluIG15IHRlc3RzIEkgc3RpbGwgaGF2ZSBpc3N1ZXMuDQpQbGVhc2UgbWFrZSB0aGUg
ZXhlcmNpc2UgYW5kIGNoZWNrIHdoYXQgbmVlZHMgdG8gYmUgZG9uZSB3aGVuIGEgZGV2aWNlIA0K
ZmFpbHMgaW4gaTNjX21hc3Rlcl9wcmVfYXNzaWduX2R5bl9hZGRyKCkgc28gZXZlcnl0aGluZyBn
b2VzIG9rIGFuZCB3aGF0IA0KaXQgaXMgdGhlIGFkdmFudGFnZSBvZiBrZXB0IGkzY19kZXZfZGVz
YyBmcm9tIHRob3NlIGRldmljZXMuDQoNCkFuZCBzdGlsbCBJIGhhdmUgaXNzdWUgb24gbXkgc2lk
ZS4gDQoNCkRpZCB5b3UgdGVzdCB0aGUgcHJldmlvdXMgcGF0Y2g/IERpZCB5b3UgZmluZCBhbnkg
aXNzdWU/IElmIHNvLCB5b3UgDQp3b3VsZG4ndCBuZWVkIHRoZSBmaXggdGhlIGkzY19tYXN0ZXJf
cmVnaXN0ZXJfbmV3X2kzY19kZXZzKCkgd2hpY2ggaXMgdGhlIA0KbGFzdCBpbnN0YW5jZSBvZiBy
ZWdpc3RlcmluZyBhbiBpM2MgZGV2aWNlLg0KSSB3b3VsZCBhc2sgeW91IHRvIHZlcmlmeSBpbiB2
MS4xIHNwZWMgdGhlIENDQ3MgdGFibGUgYW5kIHZlcmlmeSBpZiBmaXggDQp0aGUgaTNjX21hc3Rl
cl9yZWdpc3Rlcl9uZXdfaTNjX2RldnMoKSBpcyBjb3JyZWN0IGFjY29yZGluZyB3aGF0IGlzIA0K
dGhlcmUuDQoNCj4gDQo+ID4gDQo+ID4gPiBDYW4gd2UgbW92ZSBvbiBwbGVhc2U/DQo+ID4gDQo+
ID4gSSB0aGluayB5b3Ugc2hvdWxkIHN0YXJ0IGxlYXJuaW5nIHRvIGxpc3RlbiB0aGUgb3RoZXIg
YW5kIGhhdmUgdGhlIA0KPiA+IGdyZWF0bmVzcyB0byBhY2NlcHQgdGhlIG90aGVycyBleHBlcmll
bmNlIGFuZCBvcGluaW9ucy4gV2l0aCB5b3VyIA0KPiA+IGV4cGVyaWVuY2UgeW91IHNob3VsZCBh
bHJlYWR5IGxlYXJuIHRoYXQuDQo+ID4gVGhlIHByZXZpb3VzIHBhdGNoIG1ha2VzIGFsbCB0aGUg
c2Vuc2UgeWV0IHlvdXIgcmVzcG9uc2Ugd2FzIC0gSSBhbSBub3QgDQo+ID4gY29udmluY2VkLiBD
b3VsZCB5b3UgcGxlYXNlIGdpdmUgYSBwcm9wZXIganVzdGlmaWNhdGlvbj8gQXQgbGVhc3QgdGVz
dCANCj4gPiB3aGF0IEkgc3BlbmQgdGltZSB0byBkbz8NCj4gPiANCj4gPiA+IENhbiB5b3Ugc2Vu
ZCBhIG5ldyB2ZXJzaW9uIHRoYXQgZG9lcyB3aGF0DQo+ID4gPiBJIHN1Z2dlc3QsIG9yIHNob3Vs
ZCBJIGFzayBQcnplbWVrIHRvIGRvIGl0Pw0KPiA+IA0KPiA+IERvZXMgdGhlIGV0aGljcyBhcHBy
b3ZlIHN1Y2ggYXR0aXR1ZGU/IERvbid0IHlvdSBzZWUgd2l0aCBraW5kIG9mIA0KPiA+IGF0dGl0
dWRlIHlvdSBhcmUganVzdCBwdXR0aW5nIHBlb3BsZSBhd2F5IG9mIHRoaXMgc3Vic3lzdGVtPw0K
PiA+IA0KPiA+ID4gDQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiA+ID4gbGludXgtaTNjIG1haWxpbmcgbGlzdA0KPiA+ID4gbGludXgtaTNj
QGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiA+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50
LmNvbS92Mi91cmw/dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGlu
Zm9fbGludXgtMkRpM2MmZD1Ed0lHYVEmYz1EUEw2X1hfNkprWEZ4N0FYV3FCMHRnJnI9cVZ1VTY0
dTl4NzdZMEtkMFBoREtfbHB4RmdnNlBLOVBhdGVId2piX0RZMCZtPWNYeVBDSE8ydmhjeUQzYU4t
TG5xT3F6b2RiQjlnLXV0SlhlV09RUmtKbWsmcz1vZHJ0WWhiLUlhSy1kZlR6aTFwN1R3SDJZSmNu
WjNSU2ROTnJLSmpYRmRNJmU9IA0KPiA+IA0KPiA+IEJlc3QgcmVnYXJkcywNCj4gPiBWaXRvciBT
b2FyZXMNCj4gPiANCj4gDQo+IC0tIA0KPiAtLSANCj4gUmVnYXJkcywNCj4gUHJ6ZW1law0KDQpI
b25lc3RseSwgSSB0aGluayBpdCBpcyBub3QgcmlnaHQgeW91IGJlaW5nIGludm9sdmVkIGluIHRo
aXMgZXNwZWNpYWxseSANCmJ5IHRoZSBjb21wYW5pZXMgd2UgcmVwcmVzZW50Lg0KQXMgSSBhbHJl
YWR5IHNhaWQgYmVmb3JlIEkgaGVyZSB0byBjb250cmlidXRlIGFuZCBpZiBJIHRoaW5rIG15IHNv
bHV0aW9uIA0KaXMgYmVuZWZpY2lhbCBmb3IgZXZlcnlvbmUgYW5kIGRvZXNuJ3QgaGF2ZSBhIG5l
Z2F0aXZlIGltcGFjdCBvbiBvdGhlcnMgDQpkcml2ZXJzLCBJIGNhbid0IGFjY2VwdCB1bmp1c3Rp
ZmlhYmxlIHJlcXVpcmVtZW50cy4NCg0KQmVzdCByZWdhcmRzLA0KVml0b3IgU29hcmVzDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1pM2MgbWFp
bGluZyBsaXN0CmxpbnV4LWkzY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtaTNjCg==
