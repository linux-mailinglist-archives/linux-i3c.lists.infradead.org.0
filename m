Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035FB163F90
	for <lists+linux-i3c@lfdr.de>; Wed, 19 Feb 2020 09:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oW7eC23ulfNLHC4RsmOddxkYud+WcJ27v2z72bHRYCo=; b=S2miBYAIuyULMg
	8K6B+bdbHbNZaPFeH1oLCSm+6QIZEsipqBCrQwESU2MNDWeTdZcHlT/jDETbVS8Q/Wy3oAKISmwgd
	EoaT3FJqdt6AtFjP+FZIul64EmhBf8UQejKeNBnshTxjIgjFxtQVqUhbv7HRyR5ZDbz0sE+6kSiwV
	oKIySS4QM68bKt6RO++n54lPo0hKRAVEwEs022S9EJyRJR570N2qs8PYLevrPgXpsnLaGphApJRUO
	vWTdNDBQRBcxVyrDsRwjwDu9xrIVDwsvXSHyoH4J4Yes7BskUMMw3DrAtKC+JMDGWdr345SElknj7
	LjgrlrIFtExuPS5srGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Kzc-0002uJ-N8
	for lists+linux-i3c@lfdr.de; Wed, 19 Feb 2020 08:46:04 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KzY-0002od-SV
 for linux-i3c@lists.infradead.org; Wed, 19 Feb 2020 08:46:03 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 03C41C009D;
 Wed, 19 Feb 2020 08:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582101959; bh=1l4A2TdCEpz8HeG8U8Puj+FjfJohwQ7pRsG+8bQ1Jds=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=K89q23lbkYHqi4PvegzKtEThYkrTXkt46tI9g+982HQssi4bujDhj9U/EtKXIobeA
 RqW+0cz58dOB7JBGGo/92sQPWWyuzvM2x1TybC6DA68WC9OQCBS/hKzLMI4pJfWUNQ
 yQF9tkeSHz9r/FGx6LmLzgTHgAOwzGGoqsiLJf1LCvbxBJ1RJkYkdq4CZkGA1hTx1S
 0V95CJaWMsDGq6YEfzVZgG5zSLfO/T+5B7Br5dmww/Cuf2IUhdzmZVc7RwIIOUXJvM
 qzFT5D4TSdPikTHHZUyO6z9fH1goW5xDmQ4UW8pJusUeecCl86kxOVDCotDFw7GvIx
 refHIfYJ3y2wg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B1B96A0079;
 Wed, 19 Feb 2020 08:45:57 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 00:45:57 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 19 Feb 2020 00:45:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATXOD4pq4H6RvzX9vG+gIV6c6K+ToNK7tyTa/uNif8oPDZ1zcxFl+/qQ5NjM90GOEGNoFOH/gVhY7edW2iTD7d6KWszOiy17lJ+I9Cl4kNVoeCFroKuAAOqXaP3wsw62PhrJ0gLvM+tY+HHE9EOMc/G3A33tZuExHYbRZFvQTtQ419J2o0m51xU+8IztiOxgDqvPckSQyOW34osX/lzots7cvqGQ6hXo39rtt+OIjdBvcl7XFgr1hoXUkBul9MFYJVRdq03Y3LMUMmg2urZwJSqUC7X8Fmg9VY52/FsQca8dMaRc9fO23fzsTDBEQ2kbu6Z5TzPazn1a+gdHxkDIUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bxjEyV7vD3Qxt1xfOQ5liVkqiqkDLuTrBrPB3kSX0pw=;
 b=ivp5bIl1cDUj2FVW/h1/v5pPTAuMkw/QY1M60Po1mu6QloqxOjb84CYCAcj+8isexvljEpo8p46VI8g16OS1kxecIR8ynZdrqEkeFh6Bz16HUhA4qZY74nD6KwO4c+fMhTefDT5dlFJj4EpOo9SWaANQbntu4Q+hZxq2cBKyMgH7+OhISMxcNpag8K6J8c+5K0GhzTcTY4Hnut4PRDSktNh6etetPwUjuRwv6nlB9mDcWTqPxG3+PnZgOktG4Yh9WaoJVhtQoGLR+Qir96ZrRESXiNnKLDfHQX14hoSCzvEP90zsyp6u0faAZCZt9qyui3haczWij5nzUxSlqL7ozA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bxjEyV7vD3Qxt1xfOQ5liVkqiqkDLuTrBrPB3kSX0pw=;
 b=ih7ihSMIT0k0qlm55yyl7uDBfTQdeJE6nRTW3eiYquieUt/gcMx0kTNaCiRA5pqEfoSzNAtiBu91Y4xmboOMHtZNVcNydLb5nU0xCcoj7cD6IugrGSWu0xUDimny5fSNbmG23duO/Z211YSLKYKV8T/KIOBifKXPq+5wXw8O6Fo=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB4246.namprd12.prod.outlook.com (20.180.6.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Wed, 19 Feb 2020 08:45:55 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe%5]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:45:55 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH v3 4/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Topic: [PATCH v3 4/5] i3c: add i3cdev module to expose i3c dev in /dev
Thread-Index: AQHV5rqGCzs/XZoBrU+kjYi0pz6mk6giIVOAgAATCIA=
Date: Wed, 19 Feb 2020 08:45:55 +0000
Message-ID: <CH2PR12MB42169E22641024B57E78CFF2AE100@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1582069402.git.vitor.soares@synopsys.com>
 <e093ae9da81e7702c188a20d1e8b9d7f8024bfeb.1582069402.git.vitor.soares@synopsys.com>
 <20200219073709.GB2728338@kroah.com>
In-Reply-To: <20200219073709.GB2728338@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctM2I5NTA4MjgtNTJmNC0xMWVhLTgyOGQtYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XDNiOTUwODJhLTUyZjQtMTFlYS04MjhkLWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iMTA1MyIgdD0iMTMyMjY1NzU1NTIzNjIw?=
 =?us-ascii?Q?MDU2IiBoPSJIQUIxT2k0TDhPOS9mK0t4YU5IbmNkTldqMWM9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQURZ?=
 =?us-ascii?Q?SE8vOUFPZlZBWnEwOWZNYWpqTlltclQxOHhxT00xZ09BQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBSEFBQUFDa0NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBUUFCQUFBQXNQcFJHUUFBQUFBQUFBQUFBQUFBQUo0QUFBQm1BR2tBYmdC?=
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
x-originating-ip: [2.83.222.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c95bb62-fde9-424d-3f7f-08d7b5182274
x-ms-traffictypediagnostic: CH2PR12MB4246:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB42464540E1C49D4CE1092B57AE100@CH2PR12MB4246.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(54906003)(478600001)(2906002)(7696005)(4744005)(5660300002)(33656002)(8676002)(8936002)(81156014)(86362001)(4326008)(6506007)(81166006)(52536014)(66556008)(55016002)(71200400001)(6916009)(64756008)(66476007)(26005)(186003)(76116006)(66946007)(66446008)(9686003)(316002)(42413003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4246;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M3Uc8qrP+o55jMCu2L002gTYUflFTIa8c6ysEWHOnFdEHV72qRHZW9BloSv34ABnEy/xoNZShLCdZGC2+BkelR95r/hU99fZPDWEqQspBZXLlUwsLiQCN244ML2w44g38YUobAc+OSFb1cpnHy/oNaLDyKwWRQShyfxTseMdZOiB6HdmuF9LIQy4dNVFbo20UB6wBI+5fCPkDJ7+U3ZfoB1VK7hPXWTGkX1uhzS96DAYQHZKtKBUg9LoViAJQ7wEy+POnXHkdBIHHvKZC4LE+AdDn/m3p1Rh9Mpu17QLQide/zc04adkVLxJLDTqL8jnLXsPwyMHiL2X/h9wREms2S4DEGFF+h2h3IKzAOCGPJqbou7Yy4BBwbsW9+e3kNsoi0RGZv6ZvYoRZpIEQVQMmNUhrIMG/xuReiaVHR3zrBYIKriRSbNDxpyJluToryKycNz9U3KRATbHJawXkhmD9diIKfIjteaCxCxmTF6VFW5TEpvNAdHyTW5c6fuHKcLpRZsKfCDVXZb0EnVqhYmJuQ==
x-ms-exchange-antispam-messagedata: irSYoXi4Jrj4iLoq8DiL/KM2EssjkAwYOB6zCCwYCv5QRw8wImp4ekgjc0Zq8P8RpPaaLvfhDJJtJrEw8TKefuQgNKoUOJ9lo9yivDDomWt/G0i3M1w+EGTB+IUiqOrGXhWffAEeh9keMDjLheXSbw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c95bb62-fde9-424d-3f7f-08d7b5182274
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 08:45:55.6786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDmKcx/2EBanB7vDkFoTtCzSk0zR4AM0IErqzsdOBL9I5SZQJxXjgbyVzLZkNV07UFmVXNjQ6kPKNW7LIy/c6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4246
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004601_059746_35B4B45D 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Joao Pinto <Joao.Pinto@synopsys.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Greg,

From: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, Feb 19, 2020 at 07:37:09

> On Wed, Feb 19, 2020 at 01:20:42AM +0100, Vitor Soares wrote:
> > +config I3CDEV
> > +	tristate "I3C device interface"
> > +	depends on I3C
> > +	help
> > +	  Say Y here to use i3c-* device files, usually found in the /dev
> > +	  directory on your system.  They make it possible to have user-space
> > +	  programs use the I3C devices.
> > +
> > +	  This support is also available as a module.  If so, the module
> > +	  will be called i3cdev.
> > +
> > +	  Note that this application programming interface is EXPERIMENTAL
> > +	  and hence SUBJECT TO CHANGE WITHOUT NOTICE while it stabilizes.
> 
> Hah, no, we don't get to say stuff like that.  It's hard to write good
> apis, but once this is merged, we need to support what is there, right?
> 
> kernel programming is hard :(

I will remove this part.

Best regards,
Vitor Soares

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
