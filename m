Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8411D3BF
	for <lists+linux-i3c@lfdr.de>; Thu, 12 Dec 2019 18:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CeXA+NAEyxdKFgxm9Hm2qFPyZL7cSX4vlh+5tAhLlk=; b=f5UpJtmV7XkhZI
	41+jesIA3P7so7SH149cgueby1U973h8qlObBle2bOu+6hODPdY2B+CgrLtZwTYEqaUfWnmZ2rnUS
	LDoANFaRHJrk/Rtv+nm7mo9yzmF+n7G+J5Eow8ftCPJStHjJvo9LHjgHEaP9/YVYadBL6ieD9byJB
	rvuNqM1r02hqtnoXZlBXzcTxA11Lo4S2+uvnt5rs6JIc/e5/Bjmd4HN/yw7OH6a522cyGxibjHhF9
	bkSsHgDX4kNHz+51iFanLt/SREMv4TKRXKE7FvPyNb5VZda40t4nrpPI/rp3q/WuCvW7jChwDDRMA
	xOuyYQC/p9B1OJH9IEhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSDh-0003rA-O1
	for lists+linux-i3c@lfdr.de; Thu, 12 Dec 2019 17:25:45 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSDf-0003qX-7b
 for linux-i3c@lists.infradead.org; Thu, 12 Dec 2019 17:25:44 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7D7824061C;
 Thu, 12 Dec 2019 17:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576171540; bh=7D7MRyeG8cwMDtwUdRzRkwr/1NmDCVDnwv8X0aBNnxs=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=i1XXG3haTxh9F9phAY6S7I1/v9fVgY6m2LjtO4exAHd2SyUfCoInxxVgaqaa+Bfa6
 qSlj9vFI/xQdCreDFfsh0XtKTocQG4PPHHuv+Mp+j4hXhEJRXWPDvz0dj4d6cYbBRu
 ej5TKDWlE827NPWkMnHHS15FPnCzY7M/dR+hyI8MSkKWSDZX1AyrxIcF3HTkub3/uS
 6ROJnwYMeG7Gi0yPKT0kjKknkIpLOrtILzRqkjCEdMIWtKAQ0pB24RLTGBConVTPjf
 aaLmrG1CgHxYT2ITep6l3WimjruLgqdbtopzAt1d5+sCErwFUYDfL01LBVF28l+aXu
 MoXcfQW/6oLjA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 01D8AA0087;
 Thu, 12 Dec 2019 17:25:37 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 12 Dec 2019 09:25:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 12 Dec 2019 09:25:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xyf2vsvOWaVngpRxAavvNGMOVNhqroyCtIPFlFPFbF2Muo3yV19wgS/592WyFWE8Z+WX9FXaDbOT2lDfMt+eztEi05JooQHaHnq9h43DIvWMBGcEXZh6jaSsuyEe2dTbpOvl+dWeXYp8ewJwrnVIyFYhnMLMLRZOqbHFG48YkXlouG74K6WC+IRVdOkOTFD5lemhSdL/EadnsqTrlMXArtCyQojk16OGxSvo/7w5KTCH6UABwPPisVZ5TcCMBP/gpiCo8ILtgT0DSOs2qyb1h7qjZX+UkuUY+l+RvSMfjvgJQLjg3xdrXlG/K2u6CbAemzUtu91Mg+uh9ssQ9wStKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBnLsE6nSQOfujOtYOppBvSy2Nmc4eW1rVBdXIX7/oQ=;
 b=fP6OwnHyVGl3zsh8sHe9XK9ua/lWsrLAWxS56Y1yek/F7oi7fomD8TzlyyhYpvrkaiOnyiGIjqdPCk6ekEUoJMdyaCkylwOs8XbX7xTBRlpuQCU3eAJxwmMrPOB4Q+zk0ekOeFPxfZAaCvMjf/6CRzhAc5yOQga4O+kvk7I+ufEW5AuSMNqSNo9xWBHOFvMm4DmiDlPdD36XZ0eF+jVUu9rthwdNYCdQHa1JODCACcQkH5sKjv6D0rrIy4yzk2CZQhTXhn9WU64+XqUqh/ghoKAQAwnOtzrg0WfLPtJ+9cm/u5geaLke29H0NcRxq6OJe7xDppum3bMXZ6/tD0r4ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBnLsE6nSQOfujOtYOppBvSy2Nmc4eW1rVBdXIX7/oQ=;
 b=J6TsMxNI77z9MxaMLf2LBqLXGiQvbn1w4QHo8cZxJ8S5Gv97wmG0aN+SrKZbHzmv+lWzm6eyOynfTOzCuefr+AwjYwt/dD+CCZYirtXKbv5YnGvgBgH0J2G2Ve9MPHW1Qan8Yn7etyJGZJrKqwKQ/iBQUiRzrVMn7AwHvhxh9sE=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB3798.namprd12.prod.outlook.com (52.132.244.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 17:25:28 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::81fc:ad3e:6315:c6ff%7]) with mapi id 15.20.2516.018; Thu, 12 Dec 2019
 17:25:28 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [RFC 5/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Topic: [RFC 5/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Index: AQHVr2/iKIpGMGLN70aN99S9k54hW6e2lpSAgAABfqCAABOtgIAAB2Hw
Date: Thu, 12 Dec 2019 17:25:28 +0000
Message-ID: <CH2PR12MB4216CB1D650A543A635CC67FAE550@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1575977795.git.vitor.soares@synopsys.com>
 <f9f20eaf900ed5629dd3d824bc1e90c7e6b4a371.1575977795.git.vitor.soares@synopsys.com>
 <20191212144459.GB1668196@kroah.com>
 <CH2PR12MB421658E00DF331400728DB6CAE550@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191212160045.GA1672362@kroah.com>
In-Reply-To: <20191212160045.GA1672362@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctNjIzYjFlNDUtMWQwNC0xMWVhLTgyNzQtYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XDYyM2IxZTQ2LTFkMDQtMTFlYS04Mjc0LWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iMTU0NyIgdD0iMTMyMjA2NDUxMjY4ODYz?=
 =?us-ascii?Q?MDEwIiBoPSJ3QnFiYjZXWWQ2a2trK2V2bzQraENSUDQ0elE9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUFp?=
 =?us-ascii?Q?Uk9Va0ViSFZBZmgvZFBrUi9PY24rSDkwK1JIODV5Y09BQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBSEFBQUFDa0NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBUUFCQUFBQWt4V29sUUFBQUFBQUFBQUFBQUFBQUo0QUFBQm1BR2tBYmdC?=
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
x-ms-office365-filtering-correlation-id: bc210b81-51d0-4e12-a5cf-08d77f28486f
x-ms-traffictypediagnostic: CH2PR12MB3798:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB3798278145AE1C296011793FAE550@CH2PR12MB3798.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(346002)(39850400004)(366004)(199004)(189003)(33656002)(7696005)(8676002)(66446008)(81156014)(9686003)(55016002)(2906002)(8936002)(6916009)(64756008)(4326008)(81166006)(26005)(66946007)(186003)(66476007)(5660300002)(316002)(76116006)(54906003)(71200400001)(478600001)(6506007)(66556008)(52536014)(86362001)(42413003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB3798;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e2nL20ua1jcPBxys2iDPtVvJ9IXIqJk/msUD1WKLKykiJz9UFwnLmyzXNRXeLyjrqKDpXMSg7DJmemitDKm2U+dgRqmIxOrfQABBXOIMhHozEANAhnGyr937w1N3G3QG5e3wGkqxG6UNVvPjzU7yAkfPvOgDzJPslZ8Z4mJqyiSwBmA9w6u9lAp8S6Ks974wvAXGYxpRAsZ/pj+FG0eMrBQJKgHM5kF1bogJ1/qToYbpx4Cku9e8KlLOFXaJSH6IDpvzTKPPrAAhbjToRgeasVWuWgRR1PO11/+900Njcpx7etJjgHTp8xCqLKfrsx5cCHb+lmV0rHTAIv3KEb5s/Qy6h/95X4bRqykfk3IkzMCKj4tWG9InBz7XDlbugWGNel30rEy0nKJrumwnU9q5zs+q+EDAF8WV3sWI52BryEnyYXprcMecrQ6QYYlorlM1GgEN85Z1OOpOSYy8ZZEA/gwX/8OJd8obt2AugbGzUFMdriBYu3S/dnYk3PqNKEUy2JlxFBXoItPUrKrICwviCw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc210b81-51d0-4e12-a5cf-08d77f28486f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 17:25:28.5267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SRyO/la1rIA5aaT8mc3nQvGCPVkf/7oPIvrBf4cJ9eSn2UMgV+DXMDPP9YaS0oiA/5J8OfbaimmIk6A7JDvZRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3798
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092543_308930_3DD11FAE 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

From: Greg KH <gregkh@linuxfoundation.org>
Date: Thu, Dec 12, 2019 at 16:00:45

> On Thu, Dec 12, 2019 at 02:56:56PM +0000, Vitor Soares wrote:
> > Hi Greg,
> > 
> > From: Greg KH <gregkh@linuxfoundation.org>
> > Date: Thu, Dec 12, 2019 at 14:44:59
> > 
> > > On Tue, Dec 10, 2019 at 04:37:33PM +0100, Vitor Soares wrote:
> > > > +static int __init i3cdev_init(void)
> > > > +{
> > > > +	int res;
> > > > +
> > > > +	pr_info("i3c /dev entries driver\n");
> > > 
> > > Please remove debugging information, kernel code should be quiet unless
> > > something goes wrong.
> > 
> > I will remove it.
> > 
> > > 
> > > > +	/* Dynamically request unused major number */
> > > > +	res = alloc_chrdev_region(&i3cdev_number, 0, N_I3C_MINORS, "i3c");
> > > 
> > > Do you really need a whole major, or will a few minors work?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > I'm reserving one per device. What do you suggest?
> 
> How many devices do you have in a system?

According to MIPI I3C spec, the maximum number of devices on a bus will 
depend on trace length, bus load, and clock requirements.

Frankly, I don't know what is the best compromise because it depends from 
system to system and the end-use of it. In my case, I started developing 
this to help me during the HC controller driver development.
Even If I choose a fixed major, I wouldn't know in which one i3c fits.

Best regards,
Vitor Soares



_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
