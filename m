Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB43D16182A
	for <lists+linux-i3c@lfdr.de>; Mon, 17 Feb 2020 17:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XSiip/Hjt4dzTqUuPY94RftMYAVyWXWUt0BXlOEd0A=; b=fM65S0lURMD8wb
	+2hURTgPp4mA+IaCGJzlH8MtThH8nyzajVJVhXKFc1I4vYAiiFz7TqnJhrcsDjqFIhnSPn63Wg6qS
	z5s3rbFJ5unP028Lk9BLtw1SRZD0AeQgrb2xsoEic9KUECEwEOkajNuh2fSlMLtbf9BH9TJufsXGq
	+bQj7IREawXmZcp83WkH9gCgLGIcsscOED7pKFFjivJVTUF/EBc28DUnZ3NXvJSKWYgoj+7/6pUeC
	4mlb0cHHlvKgUlFVDAXpTb5dauQRV7rc5JcjwF201wqdqlToFZeUEbd0n97gzbgtu9kC9Frlp2iV4
	e/qKC0ESpkgAJTMY5vmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jWj-0005Gh-7Y
	for lists+linux-i3c@lfdr.de; Mon, 17 Feb 2020 16:45:45 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ijp-0000cB-4l
 for linux-i3c@lists.infradead.org; Mon, 17 Feb 2020 15:55:14 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E081EC0501;
 Mon, 17 Feb 2020 15:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1581954912; bh=nhXFS0CLEvAVDUzQmNbDScJl45tjtCFyKY2gP/Hf01w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=mNBtOEsNi0UqkAXkLefPqEyXr90T5+8vXn/78N/xX2oqy/zWaweCpm4J/pzlvrlBe
 u3OlZ7dypZjJSHxxPM/QDdg6eWBr8zRNBm7zTFwzJxW1PgSE3y3UMS+O99Bylhdr9a
 MvOt9bYydbg6BdyMoU9HzOOPnD0E6H6HQqvmlCKw90F3IYRDYvpMBdrIGfRTZtqrGw
 OQFDHgwBLaieI6lfZ/fKFbRs88oIOaMIcI/IQqLOVQreBCuy5tngNUmJudJFh7zLs0
 9ZOpAu3NZQBmHbSoM+K+Ph0+rFyQuaXe9m93v0PuSTaL1+rhsiFzBPY4omXo2KiGoO
 ivAYQFtChzXAw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 07DC5A006A;
 Mon, 17 Feb 2020 15:55:10 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 17 Feb 2020 07:55:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 17 Feb 2020 07:55:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1hnznfvw4LFTBVZGi+pzKFzEKt+x12cxRBB1CdRKqvI2ad220XJUyYGPb7wfSyu4JYFyZz9cIAu1qEWDHOLabsV/MQoIfntzPVQnfgPsmfA1XZoKkn7xBjNyNfI/xs7jjNMwFL6f9JKOPi/Uvw2EWVBRosFWYCrWk01gKy9KC0YqNtfST3ABQJR/vAyPi7YM8TZKSQnYxuyQ1+OJeg9UkXXKlCOMmPNSguIVezkT2LmPD3mXel7MQqHYU/AKtUg8jdR8ngEy4DM7cW8yvI+jMEI6DT7ztd9fxStyqtW8ZLsODBB4DJHWi9aGkh1CbDbLqJwWu2ZfOas7+/SSKm/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoDDW2BumwNooDFAk+QUZcVDk+2/BlCkaa3tiNBAkWc=;
 b=B5YROvcdBreEQKrn6BAkgvl1zmasmtn9ZZBtC7VPuYD/5yvL0j6QdaMciFyyaRit4JBDJzETZMV/JfmDo5Wg7isLxpPDpJlgbTTktiAPwv63J2yT0AYV7tj5yEpfHJgxkdgiyBeRZuInbCRoPhAXooGAd85tD67xCGYa3F2LfVqlnExmWvHz8gkkqIyySMYuOMy2wQOO+ssluIyxBEbgB3+XrA6KjOjbQ4ohXBDFTvGlK9JUtFy6vurIOZsjvKiqFu7vf7rfLUm+la2WAYmS7F5lsjkjxojv1niUFuEd5bj0ZSh+6nqoDxXRk+EXebA5/Jvuai0t0pdPtHWzX1GpSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoDDW2BumwNooDFAk+QUZcVDk+2/BlCkaa3tiNBAkWc=;
 b=GkTi2weNtkr4XaLVyy4IFoBqGPwCGCs7d+gsYqfQjosnD6IiN5yXlKMTWj8r7n+NSMGwqQYUDCl7lSKgghP+ZJI/drMO25yTGXj/LT1Pcz+Irbtjk7bTyqxgb2DaS4ASiXRlULPGFcDTDH8WdGGpXgqtE5dOpLW1k8MHzzbrsRk=
Received: from CH2PR12MB4216.namprd12.prod.outlook.com (20.180.6.151) by
 CH2PR12MB4151.namprd12.prod.outlook.com (20.180.16.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Mon, 17 Feb 2020 15:55:08 +0000
Received: from CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe]) by CH2PR12MB4216.namprd12.prod.outlook.com
 ([fe80::c8d1:bea7:c855:bcfe%5]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 15:55:08 +0000
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Arnd Bergmann
 <arnd@arndb.de>
Subject: RE: [RFC v2 0/4] Introduce i3c device userspace interface
Thread-Topic: [RFC v2 0/4] Introduce i3c device userspace interface
Thread-Index: AQHV1p4wiafUt0giokeVAyQbyadp7qgflkqAgAAENoCAAAhGAIAAAN0w
Date: Mon, 17 Feb 2020 15:55:08 +0000
Message-ID: <CH2PR12MB42166ED8E84503B53340F80DAE160@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <cover.1580299067.git.vitor.soares@synopsys.com>
 <20200217155141.08e87b3f@collabora.com>
 <CAK8P3a0jAbevb6mjy7Q=C-TFGn7uHRvshHNEO8XrDPRvRoAiTA@mail.gmail.com>
 <20200217163622.6c78fa3f@collabora.com>
In-Reply-To: <20200217163622.6c78fa3f@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc29hcmVzXGFw?=
 =?us-ascii?Q?cGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEy?=
 =?us-ascii?Q?OWUzNWJcbXNnc1xtc2ctZGMxYTkyMmYtNTE5ZC0xMWVhLTgyOGQtYjgwOGNm?=
 =?us-ascii?Q?NTlkN2ZjXGFtZS10ZXN0XGRjMWE5MjMwLTUxOWQtMTFlYS04MjhkLWI4MDhj?=
 =?us-ascii?Q?ZjU5ZDdmY2JvZHkudHh0IiBzej0iMjc3MyIgdD0iMTMyMjY0Mjg1MDU5NTYy?=
 =?us-ascii?Q?NzAzIiBoPSJuRFVvODFYOEFoeHVTUXd5S3Z3M1hMM0s3dU09IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQURQ?=
 =?us-ascii?Q?UEhLZnF1WFZBVWJDSHorQkNKYnRSc0lmUDRFSWx1ME9BQUFBQUFBQUFBQUFB?=
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
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00e11ed4-d86e-4df0-3d00-08d7b3c1c349
x-ms-traffictypediagnostic: CH2PR12MB4151:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB415101E1A8146B84F6EE8050AE160@CH2PR12MB4151.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(39850400004)(376002)(366004)(346002)(189003)(199004)(7696005)(5660300002)(81156014)(54906003)(81166006)(4326008)(86362001)(8676002)(6506007)(110136005)(66476007)(53546011)(66556008)(64756008)(186003)(66446008)(76116006)(26005)(8936002)(66946007)(52536014)(55016002)(9686003)(2906002)(33656002)(71200400001)(316002)(478600001)(42413003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4151;
 H:CH2PR12MB4216.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ++Z9KI+xvLVkzjgmV8kbxP9GmAV42izjDDHrAysLWTKPGueVwf5CyudS8Lo/auHV67JIvbf+v2+7ujzksY/efVyWsHRb5Ydjw3Pe5qBqaYIp1Ym16jl5Z1//UklqYX+PYIZEQ54lg89je1WLlX0OeAoQUe0JvCqdBNPLR2Jb0QfqayKPI6KoYvh6+Px/l6J535X1jrt2e/4GIEAiwKVCKmVeJ6Wk6cemW3P12IS6SmC4LbbWcWjbDZfFbh394GaKGS/6YeQRJvDIt8g6ZzLcrmUJE5566PYZtohaXqAGijMNfhSCnkf8+dxl7ylRM8R9bCaBZBpv+H4Q1Ts9S0NFQNMdzYa7bT/q5/wjZw7mBOdS3hlbxka9x04ssS3pUZXbc3mnvPnYGMGHC8xW/kMzQXku2I59GPcM25Q5zRVCOPzAjuEpJQhQ9HoTX1ZykyZJVf9I+NvsG04dgCMuLLaMyJ8I6jYS6h3Ioc15wyJa/ygEliHgcYGdHVQVLIjI22ra
x-ms-exchange-antispam-messagedata: qQCq/DA1eD/DvVZtOUYm62kNuPvFBCzZLvXLLMJIfH5w/qitQLofvrdWtIQCJSK54KG+6NV5+7Efu7bYNomgD3+vbh9QrjxYmyJIH9aZOlGcgahgQGL1nwhHlHHcrYpI3peXSD+Pot4SHAcfIk5pFg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e11ed4-d86e-4df0-3d00-08d7b3c1c349
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 15:55:08.0869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kuo4DCzvXX0tc8TFFKxcW3PXNwS3DviRwUsgZMYctUzPuTZ34Nz2UMIbvZtJERgE7bE4JnmvWhNW926y/kCEUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4151
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_075513_259489_98B6DF77 
X-CRM114-Status: GOOD (  24.34  )
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Wolfram Sang <wsa@the-dreams.de>, gregkh <gregkh@linuxfoundation.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi,

From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Mon, Feb 17, 2020 at 15:36:22

> On Mon, 17 Feb 2020 16:06:45 +0100
> Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > On Mon, Feb 17, 2020 at 3:51 PM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > > Sorry for taking so long to reply, and thanks for working on that topic.
> > >
> > > On Wed, 29 Jan 2020 13:17:31 +0100
> > > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > >  
> > > > For today there is no way to use i3c devices from user space and
> > > > the introduction of such API will help developers during the i3c device
> > > > or i3c host controllers development.
> > > >
> > > > The i3cdev module is highly based on i2c-dev and yet I tried to address
> > > > the concerns raised in [1].
> > > >
> > > > NOTES:
> > > > - The i3cdev dynamically request an unused major number.
> > > >
> > > > - The i3c devices are dynamically exposed/removed from dev/ folder based
> > > >   on if they have a device driver bound to it.  
> > >
> > > May I ask why you need to automatically bind devices to the i3cdev
> > > driver when they don't have a driver matching the device id
> > > loaded/compiled-in? If we get the i3c subsystem to generate proper
> > > uevents we should be able to load the i3cdev module and bind the device
> > > to this driver using a udev rule.  
> > 
> > I think that would require manual configuration to ensure that the correct
> > set of devices get bound to either the userspace driver or an in-kernel
> > driver.
> 
> Hm, isn't that what udev is supposed to do anyway? Remember that
> I3C devices expose a manufacturer and part-id (which are similar to the
> USB vendor and product ids), so deciding when an I3C device should be
> bound to the i3cdev driver should be fairly easy, and that's a
> per-device decision anyway.
> 
> > The method from the current patch series is more complicated,
> > but it means that any device can be accessed by the user space driver
> > as long as it's not already owned by a kernel driver.
> 
> Well, I'm more worried about the extra churn this auto-binding logic
> might create for the common 'on-demand driver loading' use case. At
> first, there's no driver matching a specific device, but userspace
> might load one based on the uevents it receives. With the current
> approach, that means we'd first have to unbind the device before
> loading the driver. AFAICT, no other subsystem does that.

I'm about to finish v3 (today or tomorrow) and I think I fixed all 
concerns rise during v2. I would like you to see that version before any 
change.

Best regards,
Vitor Soares


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
