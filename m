Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2921DAE93
	for <lists+linux-i3c@lfdr.de>; Wed, 20 May 2020 11:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9SYigoxXkUonppMreHPHCR4WXsTxHFiJDH52D9D+jg=; b=nqxoTZvzQi6lCE
	3rOGPnxs6rPix0/HkBRgYyal3uod2bCS2RNX6tWiOK0+wwDBg/SjiaSNXVyS/wJNuiW33fafAiErT
	P4j8O083N47Zr76ymMYcAX9Y0mQfueD265qw75pZ+br9Me+hikHI9dqB2CNlozco0p7a/9httfChp
	tex6lYM3maKU8z3uudx+mPx5qQObeF9TzXiZDLl9NYO5bWQIKJ0ErJCwO4GLcULc2+NauBO9L5GDT
	VYmhkTlEfb5dfWBg0/sqXlSGgRES5QoMYTz8WuYCOhVtXIPr08Iq+G5nt8ZwYhr8Re7rPSu/Jv8Q7
	uPVzdULX5G2d1O52AFxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKu0-0007zc-64
	for lists+linux-i3c@lfdr.de; Wed, 20 May 2020 09:20:40 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKtw-0007z1-SW
 for linux-i3c@lists.infradead.org; Wed, 20 May 2020 09:20:39 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04K9FUwI020252; Wed, 20 May 2020 02:20:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=4LDDn39SzKBsde2EQy+nKB8TD75KA9/iZfFj8qU6YFI=;
 b=gH9x2ETjHn9D88UcWhUx2kpiJNS+n07olFv3rlxMPhHwIvOBUCoTwcWHQgo/YzrivA1S
 6R8miuZJIJIP626sxfZs1k4ywYdpwF/2WGs0z6akpM2kvhI2DHB6zHDNonNRFJl/FFxE
 t3cot+iIJGA26vKb7bMzC7CmtSRwtXQdyYipgwX4IO1aSwbiYMAIO3sW8abH9SnnmoIz
 AydWP2D1kXmHfG7Y/6yGkqibgWSmAk7OzarusPOXqhUd7N66FzEGddRm5Zwdl04UbQfl
 ol12qrxqwpIRDG1CQlt51+wCZ6oFM+vLpYafPl86oJvt9YAzVsYR1mPkJa0ix8TSeD9D Vw== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
 by mx0b-0014ca01.pphosted.com with ESMTP id 312bs0frcy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 May 2020 02:20:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5oNohkHjaM3uE/+qMKgLx7NfGrP5m+/T7bxyUBENHPWjzmqjZW6sMSIu5FZKKydVFlNYWfYtcr4in3FiAClbpMJX4CwxzxpCH7stSMeojP+iQIt3A/wsDGeJkpq+Jx8MGptTI/0nq8Dxl658QwsTbXbJ7hHnRuINswTM3p6xbCiGQDE3NCGxmZg20jbLrWHWXcZvocimc0D7c1ioM8OcND6CboEHYaXbrL/TF9l3GFCmZCUIoDmnUFQgla5vGaymhv7k26SeLVQeCsmMBaegyu4W7oS9i2a+vl4/N8SOyzELslA9dJjd1EEeVz13PaZH7vVebw7WXQ/w6pQ5X62Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4LDDn39SzKBsde2EQy+nKB8TD75KA9/iZfFj8qU6YFI=;
 b=JxQLvjxQ6q1naRv67yvqBBkBZxpg0TIsZ7N7MxHxfGAZsYUgIFNlbZPa6UN8H5w0SI0CHgAVjRqT59Kx+cSfubRgPMY7QLzpPrd5W07+J0wwGLFjnAtIoL056vjBWU7O7N4Iq5uvmdlZjxImrHjJJbsFJ01EcXqGlNk3BpCdWE+fzSpVZykACbCEO7i8LvNIjggCFHdFGyhFZSzRAq6gXYQGkObFMvnBf38A2fb2T+MvKOcpM8gVK7beUUm0/IHqmldsN3f9wy5KPZw2faQTLjqV6a6GZ/9Fdz8IYvOeBW+OVY7tnHB7gCqQKRpDaVatTwqUE6tgWx5bYWxw4RCv5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4LDDn39SzKBsde2EQy+nKB8TD75KA9/iZfFj8qU6YFI=;
 b=laK7b1Ot+VlvixdjawqCOXibkQZgG4wvANc0SNui8JPgXJ2Z63m0G6AHuGfKist0DOW1hcOurxA6m2H1lucUFTUhe9BxB/aiIEe8lObWp6ApumGwnVYEDUt7wcRbAzs8NgxROY4s6sTMCzOc23lfCAY/3jiyU9HtOLZQINysGog=
Received: from DM5PR07MB3196.namprd07.prod.outlook.com (2603:10b6:3:e4::16) by
 DM5PR07MB2827.namprd07.prod.outlook.com (2603:10b6:3:c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Wed, 20 May 2020 09:20:29 +0000
Received: from DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::6dd1:88b3:ffcc:72f5]) by DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::6dd1:88b3:ffcc:72f5%4]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 09:20:28 +0000
From: Parshuram Raju Thombare <pthombar@cadence.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [PATCH] i3c: master: fix for SETDASA and DAA process
Thread-Topic: [PATCH] i3c: master: fix for SETDASA and DAA process
Thread-Index: AQHWKgz+88gnAmL4TkiR0l1R8HfhWKiwta6AgAAA/dA=
Date: Wed, 20 May 2020 09:20:28 +0000
Message-ID: <DM5PR07MB3196ACBCC6128E6C87CF0B7DC1B60@DM5PR07MB3196.namprd07.prod.outlook.com>
References: <1589473809-16708-1-git-send-email-pthombar@cadence.com>
 <20200520105855.71db98d1@collabora.com>
In-Reply-To: <20200520105855.71db98d1@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNccHRob21iYXJcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy0yMjY4NDM4YS05YTdiLTExZWEtODU4OC0xMDY1MzBlZjIyZjVcYW1lLXRlc3RcMjI2ODQzOGMtOWE3Yi0xMWVhLTg1ODgtMTA2NTMwZWYyMmY1Ym9keS50eHQiIHN6PSIyMDUwIiB0PSIxMzIzNDQ0MDAyNDc0Mzk2NDQiIGg9ImkvS24zTk9abXhaMnA0a1hodFZqZmFxQjBXZz0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=cadence.com;
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c399b694-cccb-46e8-7980-08d7fc9f09b2
x-ms-traffictypediagnostic: DM5PR07MB2827:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR07MB28278F3DF6C317A031F82FE8C1B60@DM5PR07MB2827.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pAY/AO3xWIqBDUZQv5SiGYuKJKUTrwUkF1KWVkY46dkj2TY9BPLB0+IUgc2G678BSIR4qAKrumrabn6UU/81Dv5sHuHNr4kRmjbm7dcVaLIcwl/rZcvWWuODQ6INH0vrcu9cCV/7YUoYgcUebzIEdkwcV6vLHOjEiz+QEKeY4/j8P16g5CApEDz3z7dDMTTxrYXdxW/UJHevbIRzJfgFg9cW0I/iMp4Yh1QAVe2jsMN/WzLL/NKLO3a2s4dJb5IsJgJIzAjnZa2u4DWnSCJV7feGs9ho6CdO1Ylrm4hcbgtebjFklKeOMK6qc55PP0AKs60ik0VQ9TXSjQxZjENt/1tTln6KOdoMWOAwvR5qJ0AMCKODhbL1g4qa9aHkr1jGSXaf3Dhft6hrrew47376B7B60NP4n5KMk47ttqXVfmcv6dKozzwuQ/Y7/bG65YHOGrxj7bVTfWRYqZjzgbbLc41QThQUK2m0lbmMxG1R4R63nTuLM+Nx8STj0ovgl3YF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR07MB3196.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(36092001)(186003)(52536014)(6916009)(478600001)(66556008)(8676002)(33656002)(8936002)(7696005)(5660300002)(66946007)(66476007)(76116006)(71200400001)(26005)(54906003)(6506007)(55016002)(4326008)(86362001)(9686003)(2906002)(64756008)(316002)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DF7YWFX52SYgGNcks/+GS1aIeitJuodxYWN7rqAvZZWStjrrzEPjh7oHvXk+hmIKUJDt/Zu3r6g+OMiAyvgVu6H3kG66SHh4xqKnJTvRw1X4arhO1wbp3Kag2nJ3CAdJRv3YOSPfD+74eUGaYYEGkvuBG7veHQCbZl/KV6srR3Fl0mTLL14QiOhvUz78KBpi8L1nU6OEb2KfAAY3KQtbwaGyxGFD+MfyITGF3qtaF2QOY9o+cI62wZLENziK1yXWL3KKgGBzQabNh3FluIONANd56aorLBEm0HDmm9nSrMo6nvNOHqsxdhzlCN4fvGDZM8LBVm0w/qrBqPZNQk+aKNa53i73N5ECguC8x5Nmjd0u1A4581u4sKVLRsL0/la0r27SqjAQVLfY9cK/A4Df3/bQvsWEWcgD0EzuMPBQxQWgDEOhcmPfZoq5pG2wdmjhUdJ7PB0fQQcQxPu+l133Kq2KKceKirXRy9ql1ks9U0A=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c399b694-cccb-46e8-7980-08d7fc9f09b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 09:20:28.7446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pztQJTWJh2clmanggn+aLZPMkMGExq1HP/TZN9+uXFupTNrxalf3XYxQ1QQbS+pe00LgAdK45A5sQZ/19pb8Tnk2fZN82qN1QUlAY2BJ3AQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR07MB2827
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-20_03:2020-05-19,
 2020-05-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 mlxlogscore=814
 cotscore=-2147483648 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 malwarescore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_022037_934594_91659CB1 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Milind Parab <mparab@cadence.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "praneeth@ti.com" <praneeth@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vitor.soares@synopsys.com" <vitor.soares@synopsys.com>,
 Przemyslaw Gaj <pgaj@cadence.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

>> This patch fix following issues.
>> 1. Controller slots blocked for devices with static_addr
>>    but no init_dyn_addr may limit the number of I3C devices
>>    on the bus which gets dynamic address in DAA. So
>>    instead of attaching all the devices with static_addr,
>>    now we only attach the devices which successfully
>>    complete SETDASA. Remaining devices are handled in DAA.
>> 2. Since we alreay handled devices with init_dyn_addr, removed
>>    it's handling from i3c_master_add_i3c_dev_locked().
>>    Now only case handled is devices already with dyn_addr
>>    participated in DAA, and again got new dyn_addr with an
>>    extra slot in the master controller.
>
>I don't get that one.

I mean retry  to assign requested init_dyn_addr in i3c_master_add_i3c_dev_locked().
Since we handle devices with init_dyn_addr in i3c_master_pre_assign_dyn_addr,
we should have assigned dynamic address to all devices with both static_addr and
init_dyn_addr. Unless SETDASA failed or device only have init_dyn_addr but no static_addr, 
in those cases dyn_addr is allocated in DAA.

>I think we should fix re-attach instead, which is what we discussed
>with Przemek if I remember correctly.

Sorry, I was not aware of that. But, yes I agree to fix driver re-attach instead of removing 
re attach here. But we should keep in mind about potential failure here.
Currently reattach only update dyn_addr, but IMO it should update other fields as well.
Also I see re attach have a unused argument, which I suppose we can get rid of.
For now I will keep reattach here and post reattach fix in separate patch.

>Can you please split the patch accordingly (one fix per commit)
I think only extra changes are releasing the old address in reattach API
and removal of reattach call in i3c_master_add_i3c_dev_locked()
after a scan for duplicate I3C device. 
I will remove those changes and repost rest.

Regards,
Parshuram Thombare

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
