Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF1E1684B9
	for <lists+linux-i3c@lfdr.de>; Fri, 21 Feb 2020 18:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJ6z9v9X+UWeIdEK+PQg/VPpSG1wh5RWlklHTKmj7MA=; b=VH1m4exAb8B1Ae
	cNBEJsyWSdgaDZRELKuuR23RQRQ7MgeX8r3ywaxDZCoy6E+aKLb3ziw0tK5G91X2X5QPvRT7qYUkN
	iC6ve8eCLDUJS2MMVrblcXe/2QJDn2AXhFMt7eVGibJSb8dzNZhUs40IjcLAt0FZHuBcUTQ6vTZ8E
	E1u/IhvGJCjK5XTKrUUH/r+8hqkue57fMvk0BjMPAWECilcgz2eiC+UdFNwnd17fR+NceCpb4Mgvd
	SH3F7D79yzTpToK/pXF5fxxp6x2J66w1a3UdddKIJaWniDj7+keCYXFkw1aqD79N/3WSSoMyGOpWQ
	+UIz/aIuMvmZbzipbH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Bxb-0004Gq-AM
	for lists+linux-i3c@lfdr.de; Fri, 21 Feb 2020 17:19:31 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BxZ-0004GM-1M
 for linux-i3c@lists.infradead.org; Fri, 21 Feb 2020 17:19:30 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 704BB40609;
 Fri, 21 Feb 2020 17:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582305565; bh=CWL2mEuoKQuqqBYMf3Gx1W6EJg3cl8xE3SXyWyYDX4k=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=axxB3IeA5VdRRU00ndFAwuJtxAHNCAyrtepifSo8UT79PtbkMFOIWeCQ8XrCyDiOv
 zr1H5FV9dQTdOsvveas43cS3LptjdXcwhQELb5DIB9RMV6h350JvGCvqG41j/2eomL
 BMaypoy+GSVSrz5vfRF/MjX2ef0Q8t3wcVzoi64wmngdV4c+LtfMulYlP2WxEZl1qO
 JtGTMGV8esH3Jo5PNAttNOlwPquy8ie6F42FdlKs+0QHdTIIiEFR/Sdi8inrN7I4ro
 0okBBPa36h0RiLQjvM4R8qQ9wqIZDid0n8FJqKavB6esZo0oSEoNkjCCsL/y/y/Rva
 wf2/IIgTj8NMw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E2C46A0069;
 Fri, 21 Feb 2020 17:19:24 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 21 Feb 2020 09:19:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 21 Feb 2020 09:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dJnFDQJJGXW8bT9C5E8MrbJzaDa4FI2GYfCQYLH+qJ4YtQcOiX2dGlHxLwidANgVOsIJxPPVXo0Hex0QpbLg295+1OrBIoiGPc9KK0usLCMMepNGvNbwN21Ld7fAYzHae+CJX4bMa5JYpme6Gk3yTMM3gs3HdPX8BLBIj0+c9pXRfMRFLpld1SYRiZrhP6VZO3BSA1XDkVI0WL09G3qEFtZDvnlY/aIcNppYMFu2ybM+5eXonBXl7iXyTVnBk+mLq1jjOefbgZ5sebpRT/qYQVItGK6iTbRzGz/Q3KzGNKhRTk0fnZQGnv/TtRLXlv+4q15x0ryFZ17zpWWoNCRmxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CWL2mEuoKQuqqBYMf3Gx1W6EJg3cl8xE3SXyWyYDX4k=;
 b=LU/hhyzQKLYArG58Tf9+7WxwSQ7SUkuPW3CojAd/YDMQ5ZqqyE1U5KaRi0oVyjK+hyX/vjYZ8HzRiRtThqMc1ob16UjFMPfAWMlTc9Ixnrink55SOcLNwy6bB/Rq5/gbOPv3d+3fY+8g2L3Z3FzKfNpbv3zeOSEv4AzxFcF7/RknD0YgbFahKWpQO8rnsx1sqeP3KCLXfFvtssO83MjxOsLkvxe6QWqe9IOzc716RyBf41oh+c5M+2GMwVjZQmZgLsGNAwIEqD6TwMzGg0UWhLyHPgONmrQ+xsf1aj2LlR28bCq0d+u8UR5oYZSVqZhOB/XRg9RTWY8slLdkPT5JCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CWL2mEuoKQuqqBYMf3Gx1W6EJg3cl8xE3SXyWyYDX4k=;
 b=Sl3xKmRbl0/+w/gUF/DImOEybycEWfAKxNrgII4Em+zAeZw6zxifSl0odYyU4ou8/UO1J8rpbbKHlVAZR+Odb7wocHdkLN3wBgmBZ27G5Dn6rIgqOxw+SHVXo+h+QwHV3qTuXrmKJpv/JhUwpE+uxyco1IAHr/k8TGu80z0K5yE=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (2603:10b6:610:a8::23)
 by CH2PR12MB4151.namprd12.prod.outlook.com (2603:10b6:610:78::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Fri, 21 Feb
 2020 17:19:22 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe%5]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 17:19:22 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Greg KH
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH v3 3/5] i3c: master: add i3c_for_each_dev helper
Thread-Topic: [PATCH v3 3/5] i3c: master: add i3c_for_each_dev helper
Thread-Index: AQHV5rqGpGTZr3HbTkKTz+n225moYqgiIPIAgANW2RCAABWIgIAAEqOAgAA+8gCAAAiHMA==
Date: Fri, 21 Feb 2020 17:19:22 +0000
Message-ID: <CH2PR12MB42162A8329EDD6A565F0A759AE120@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1582069402.git.vitor.soares@synopsys.com>
 <868e5b37fd817b65e6953ed7279f5063e5fc06c5.1582069402.git.vitor.soares@synopsys.com>
 <20200219073548.GA2728338@kroah.com>
 <CH2PR12MB4216D5141E562974634430B8AE120@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20200221115229.GA116368@kroah.com>	<20200221135911.1300170b@collabora.com>
 <20200221174428.77696ab6@collabora.com>
In-Reply-To: <20200221174428.77696ab6@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzI5aGNtVnpYR0Z3Y0dSaGRHRmNjbTloYldsdVoxd3dPV1E0TkRsaU5p?=
 =?utf-8?B?MHpNbVF6TFRSaE5EQXRPRFZsWlMwMllqZzBZbUV5T1dVek5XSmNiWE5uYzF4?=
 =?utf-8?B?dGMyY3ROR0UzTmpRd056Z3ROVFJqWlMweE1XVmhMVGd5T0dVdFlqZ3dPR05t?=
 =?utf-8?B?TlRsa04yWmpYR0Z0WlMxMFpYTjBYRFJoTnpZME1EZGhMVFUwWTJVdE1URmxZ?=
 =?utf-8?B?UzA0TWpobExXSTRNRGhqWmpVNVpEZG1ZMkp2WkhrdWRIaDBJaUJ6ZWowaU5E?=
 =?utf-8?B?TTVOeUlnZEQwaU1UTXlNalkzTnpreE5UZzNOemswTlRNd0lpQm9QU0kzZFM5?=
 =?utf-8?B?R1RuVk1TMGgxWlRWRFNuQmxXRFJDZVZoSFltMVNXVVU5SWlCcFpEMGlJaUJp?=
 =?utf-8?B?YkQwaU1DSWdZbTg5SWpFaUlHTnBQU0pqUVVGQlFVVlNTRlV4VWxOU1ZVWk9R?=
 =?utf-8?B?MmRWUVVGQ1VVcEJRVUpwTTNSQlRUSXJhbFpCVVV4Q2JHMXNOMkp4Wm05QmMw?=
 =?utf-8?B?ZFhZVmgwZFhBclowOUJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
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
x-ms-office365-filtering-correlation-id: 957217db-bd75-4d26-2f95-08d7b6f231c5
x-ms-traffictypediagnostic: CH2PR12MB4151:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB41518EB97848AB5C669F5A12AE120@CH2PR12MB4151.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(55016002)(9686003)(316002)(71200400001)(5660300002)(4326008)(26005)(186003)(81166006)(2906002)(86362001)(6506007)(66446008)(64756008)(66556008)(66946007)(66476007)(81156014)(33656002)(8676002)(7696005)(478600001)(76116006)(54906003)(110136005)(52536014)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4151;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NPtXPRwOjWjuAqscF98jaE0pJVvl7YkA8SMCiDtWCeoOVrENjBX3xjIOpP3uoPP/ptVp7vo1Gr7s9Qi8ZU/wiBCoLFw5n0kag3Ww2jZHMStyrEtZS0JPFWgRdFQy8OsZu9+GWNyTWBBNp7xaZp1c2E+c7TUaLBxHkyMLRfkxDs0ewauMk1R1RLo6apL3nNnDoU4X8KT9XmMy+ylsC4henrCAbya4XCa/TWPgO9pMpEMW1851ZfsNy1/1QSY7bIlSSXgK7scTdUY4UHH2fb8MBkHQSM7oiACck3nQZ3D5TVJsgqs4rS2iAQ7EpaRT0nhASQOmBu2sPO8mZo1+DkZuQiPbz2wF856H9cTqbvPckoyQjKBSZoQ8cSCJ6BByVHrTPpYAxF1PjR+ECqd28x6XZWWwH7WWaiHoD0JYnbeZWRq9xdY6tGIL4ppZZU4AWYbC
x-ms-exchange-antispam-messagedata: AuNzly7Qm+hzqxx5Uu+bo8jLFh5ep8h7dAeC/akzcO11xVb9PyJ3HRfWpuaikEJbM34uocuAK12f0lJ62v99P3qFhGD1anoqSz+4cto//i/Eds6YjDPvxZEEVdVO/XO820zh0z6Fgt7U0KowMk6jSw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 957217db-bd75-4d26-2f95-08d7b6f231c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 17:19:22.6923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sl1p52zmcJCB6YqfKqfQfPiEQflmhrE+vYe/3bZ3QAaV53BWnEQcgYMmKjz3KBhKccSHoxYkzdeemFHFP9Fgeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4151
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_091929_094008_9E7CA7DA 
X-CRM114-Status: UNSURE (   8.64  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Joao Pinto <Joao.Pinto@synopsys.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

SGkgQm9yaXMsDQoNCkZyb206IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxh
Ym9yYS5jb20+DQpEYXRlOiBGcmksIEZlYiAyMSwgMjAyMCBhdCAxNjo0NDoyOA0KDQo+IE9uIEZy
aSwgMjEgRmViIDIwMjAgMTM6NTk6MTEgKzAxMDANCj4gQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5i
cmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+IA0KPiA+IE9uIEZyaSwgMjEgRmViIDIw
MjAgMTI6NTI6MjkgKzAxMDANCj4gPiBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
Zz4gd3JvdGU6DQo+ID4gDQo+ID4gPiBPbiBGcmksIEZlYiAyMSwgMjAyMCBhdCAxMTo0NzoyMkFN
ICswMDAwLCBWaXRvciBTb2FyZXMgd3JvdGU6ICANCj4gPiA+ID4gSGkgR3JlZywNCj4gPiA+ID4g
DQo+ID4gPiA+IEZyb206IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KPiA+
ID4gPiBEYXRlOiBXZWQsIEZlYiAxOSwgMjAyMCBhdCAwNzozNTo0OA0KPiA+ID4gPiAgICAgDQo+
ID4gPiA+ID4gT24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMDE6MjA6NDFBTSArMDEwMCwgVml0b3Ig
U29hcmVzIHdyb3RlOiAgICANCj4gPiA+ID4gPiA+IEludHJvZHVjZSBpM2NfZm9yX2VhY2hfZGV2
KCksIGFuIGkzYyBkZXZpY2UgaXRlcmF0b3IgZm9yIHVzZSBieSBpM2NkZXYuDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpdG9yIFNvYXJlcyA8dml0b3Iuc29hcmVz
QHN5bm9wc3lzLmNvbT4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvaTNj
L2ludGVybmFscy5oIHwgIDEgKw0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvaTNjL21hc3Rlci5jICAg
IHwgMTIgKysrKysrKysrKysrDQo+ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2kzYy9pbnRlcm5hbHMuaCBiL2RyaXZlcnMvaTNjL2ludGVybmFscy5oDQo+ID4gPiA+ID4gPiBp
bmRleCBiYzA2MmU4Li5hNmRlZWRmIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9p
M2MvaW50ZXJuYWxzLmgNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvaTNjL2ludGVybmFscy5o
DQo+ID4gPiA+ID4gPiBAQCAtMjQsNCArMjQsNSBAQCBpbnQgaTNjX2Rldl9lbmFibGVfaWJpX2xv
Y2tlZChzdHJ1Y3QgaTNjX2Rldl9kZXNjICpkZXYpOw0KPiA+ID4gPiA+ID4gIGludCBpM2NfZGV2
X3JlcXVlc3RfaWJpX2xvY2tlZChzdHJ1Y3QgaTNjX2Rldl9kZXNjICpkZXYsDQo+ID4gPiA+ID4g
PiAgCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpM2NfaWJpX3NldHVwICpyZXEpOw0KPiA+ID4gPiA+
ID4gIHZvaWQgaTNjX2Rldl9mcmVlX2liaV9sb2NrZWQoc3RydWN0IGkzY19kZXZfZGVzYyAqZGV2
KTsNCj4gPiA+ID4gPiA+ICtpbnQgaTNjX2Zvcl9lYWNoX2Rldih2b2lkICpkYXRhLCBpbnQgKCpm
bikoc3RydWN0IGRldmljZSAqLCB2b2lkICopKTsNCj4gPiA+ID4gPiA+ICAjZW5kaWYgLyogSTND
X0lOVEVSTkFMX0ggKi8NCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kzYy9tYXN0
ZXIuYyBiL2RyaXZlcnMvaTNjL21hc3Rlci5jDQo+ID4gPiA+ID4gPiBpbmRleCAyMWM0MzcyLi44
ZTIyZGEyIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9pM2MvbWFzdGVyLmMNCj4g
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvaTNjL21hc3Rlci5jDQo+ID4gPiA+ID4gPiBAQCAtMjY0
MCw2ICsyNjQwLDE4IEBAIHZvaWQgaTNjX2Rldl9mcmVlX2liaV9sb2NrZWQoc3RydWN0IGkzY19k
ZXZfZGVzYyAqZGV2KQ0KPiA+ID4gPiA+ID4gIAlkZXYtPmliaSA9IE5VTEw7DQo+ID4gPiA+ID4g
PiAgfQ0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gK2ludCBpM2NfZm9yX2VhY2hfZGV2KHZv
aWQgKmRhdGEsIGludCAoKmZuKShzdHJ1Y3QgZGV2aWNlICosIHZvaWQgKikpDQo+ID4gPiA+ID4g
PiArew0KPiA+ID4gPiA+ID4gKwlpbnQgcmVzOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4g
KwltdXRleF9sb2NrKCZpM2NfY29yZV9sb2NrKTsNCj4gPiA+ID4gPiA+ICsJcmVzID0gYnVzX2Zv
cl9lYWNoX2RldigmaTNjX2J1c190eXBlLCBOVUxMLCBkYXRhLCBmbik7DQo+ID4gPiA+ID4gPiAr
CW11dGV4X3VubG9jaygmaTNjX2NvcmVfbG9jayk7ICAgIA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IEljaywgd2h5IHRoZSBsb2NrPyAgQXJlIHlvdSBfc3VyZV8geW91IG5lZWQgdGhhdD8gIFRoZSBj
b3JlIHNob3VsZA0KPiA+ID4gPiA+IGhhbmRsZSBhbnkgbGlzdCBsb2NraW5nIGlzc3VlcyBoZXJl
LCByaWdodD8gICAgDQo+ID4gPiA+IA0KPiA+ID4gPiBJIHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQg
bm8gbmV3IGRldmljZXMgKGVnOiBIb3QtSm9pbiBjYXBhYmxlIGRldmljZSkgYXJlIA0KPiA+ID4g
PiBhZGRlZCBkdXJpbmcgdGhpcyBpdGVyYXRpb24gYW5kIGFmdGVyIHRoaXMgY2FsbCwgZWFjaCBu
ZXcgZGV2aWNlIHdpbGwgDQo+ID4gPiA+IHJlbGVhc2UgYSBidXMgbm90aWZpY2F0aW9uLg0KPiA+
ID4gPiAgICAgDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSBkb24ndCBzZWUgYnVzLXNwZWNpZmlj
LWxvY2tzIGFyb3VuZCBvdGhlciBzdWJzeXN0ZW0gZnVuY3Rpb25zIHRoYXQgZG8NCj4gPiA+ID4g
PiB0aGlzIChsaWtlIHVzYl9mb3JfZWFjaF9kZXYpLiAgICANCj4gPiA+ID4gDQo+ID4gPiA+IEkg
YmFzZWQgaW4gSTJDIHVzZSBjYXNlLiAgICANCj4gPiA+IA0KPiA+ID4gQ2hlY2sgdG8gc2VlIGlm
IHRoaXMgaXMgcmVhbGx5IG5lZWRlZCwgZm9yIHNvbWUgcmVhc29uIEkgZG91YnQgaXQuLi4gIA0K
PiA+IA0KPiA+IENhbiB3ZSBwbGVhc2UgdHJ5IHRoZSBzcGlkZXYgYXBwcm9hY2ggYmVmb3JlIGZp
eGluZyB0aG9zZSBwcm9ibGVtcy4gTm9uZQ0KPiA+IG9mIHRoYXQgd291bGQgYmUgbmVlZGVkIGlm
IHdlIGRlY2xhcmUgdGhlIGkzY2RldiBkcml2ZXIgYXMgYSByZWd1bGFyDQo+ID4gaTNjX2Rldmlj
ZV9kcml2ZXIgYW5kIGxldCB1c2VyIHNwYWNlIGJpbmQgZGV2aWNlcyBpdCB3YW50cyB0byBleHBv
c2UNCj4gPiB0aHJvdWdoIHRoZSBzeXNmcyBpbnRlcmZhY2UuIEFzIEkgc2FpZCBlYXJsaWVyLCB3
ZSBldmVuIGhhdmUgYWxsIHRoZQ0KPiA+IHBpZWNlcyB3ZSBuZWVkIHRvIGF1dG9tYXRlIHRoYXQg
dXNpbmcgYSB1ZGV2IHJ1bGUsIGFuZCB0aGUgcmVzdWx0aW5nDQo+ID4gcGF0Y2hzZXQgd291bGQg
YmUgJ2xlc3MgaW52YXNpdmUnL3NpbXBsZXIgZm9yIHByZXR0eSBtdWNoIHRoZSBzYW1lDQo+ID4g
cmVzdWx0Lg0KPiANCj4gU28sIEkgd2VudCBhaGVhZCBhbmQgaW1wbGVtZW50ZWQgaXQgdGhlIHdh
eSBJIHN1Z2dlc3QuIFRoZSBkaWZmc3RhdCBpcw0KPiBub3QgcmVwcmVzZW50YXRpdmUgaGVyZSAo
dGhvdWdoIGl0J3Mgc3RpbGwgaW4gZmF2b3Igb2YgdGhpcyBuZXcgdmVyc2lvbikNCj4gc2luY2Ug
SSBhbHNvIGNoYW5nZWQgdGhlIHdheSB3ZSBleHBvc2UvaGFuZGxlIFNEUiB0cmFuc2ZlcnMuIFdo
YXQncw0KPiBtb3N0IGltcG9ydGFudCBJTU8gaXMgdGhlIGZhY3QgdGhhdA0KPiANCj4gKiB3ZSBu
byBsb25nZXIgbmVlZCB0byBhY2Nlc3MgdGhlIGludGVybmFsIEkzQyBBUEkNCj4gKiB3ZSBubyBs
b25nZXIgbmVlZCB0byBjYXJlIGFib3V0IHRyYW5zaXRpb25zIGJldHdlZW4gaTNjZGV2IGFuZA0K
PiAgIG90aGVyIGRyaXZlcnMgKHRoZSBjb3JlIGd1YXJhbnRlZXMgdGhhdCBhIGRldmljZSBpcyBh
bHdheXMgYm91bmQgdG8gYXQNCj4gICBtb3N0IG9uZSBkcml2ZXIpDQo+ICogdGhlIHJlZ2lzdHJh
dGlvbi91bnJlZ2lzdHJhdGlvbiBwcm9jZWR1cmUgaXMgc2ltcGxpZmllZA0KPiANCj4gTm90IGFs
bCBwcm9ibGVtcyBoYXZlIGJlZW4gYWRkcmVzc2VkICh3ZSBzdGlsbCBuZWVkIHRvIHB1dCBhIGxp
bWl0IG9uDQo+IHRoZSBudW1iZXIgb2YgeGZlcnMgYW5kIHRoZSBtYXggc2l6ZSBwZXIgdHJhbnNm
ZXIgd2UgYWxsb3csIGFuZA0KPiBwcm9iYWJseSBwbGVudHkgb2Ygb3RoZXIgdGhpbmdzIHBvaW50
ZWQgYnkgR3JlZywgQXJuZCBhbmQgb3RoZXJzKSwgYnV0DQo+IEknZCByZWFsbHkgbGlrZSB0byBz
dGFydCBmcm9tIHRoZXJlIGZvciB0aGUgbmV4dCB2ZXJzaW9uLg0KDQpPaGgsIEkgc2VuZCB0aGUg
b3RoZXIgZW1haWwgd2l0aG91dCBzZWUgdGhpcyBvbmUg4pi5Lg0KDQpWZXJ5IG11Y2ggYXBwcmVj
aWF0ZWQg8J+Yii4gSSB3aWxsIHRlc3QgYW5kIGNoYW5nZSB0aGUgdG9vbCBhbmQgbGV0IHlvdSAN
Cmtub3cuDQoNCkJlc3QgcmVnYXJkcywNClZpdG9yIFNvYXJlcw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtaTNjIG1haWxpbmcgbGlzdApsaW51
eC1pM2NAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWkzYwo=
