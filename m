Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564431CEC36
	for <lists+linux-i3c@lfdr.de>; Tue, 12 May 2020 06:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nXwi4f/U///khKueUU2WcTMH8+kx5y6UHK5fgwwr74=; b=UObP9B8vOatwwT
	EEr48+vkJ1CcXdVMKshr5/3fESQsT0fYGk5hrXcEsq+wF6EAb16a82YOwWO0rCdaZem/+OV4wVxC/
	yvbllWurjkPzPB30F3YLxdgK4BG99cF9Ka+bFf+Pzg6DapuiQ561yl1yxSQW55er7oyk/FQOzV+I/
	/rcAvDzEIoE/yy++gZ4Sa9ajQr3UvW+eRF3tlpcVBylRGWsFYTQNGZ3Pp3DflmOwp9V/v48wx1d68
	yZXU0wED01UxUJQVaKmtMCBFzAcylSKNvL6nFPguEgNRCccSTmTOwa4bkCoOuFAjax3TmLXkI5y/X
	DtBkn3bYj/F6HLLL0U0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYMzK-0006K2-87
	for lists+linux-i3c@lfdr.de; Tue, 12 May 2020 04:57:54 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYMzF-0006JQ-Up
 for linux-i3c@lists.infradead.org; Tue, 12 May 2020 04:57:53 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04C4sJu8012813; Mon, 11 May 2020 21:57:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=euuTC0spb8BL0U5DWEwX7YOB/+Ivz3TNlgXeoiby4sY=;
 b=DO0z3ydC9aV4W+WSJ9AMYIUG/NZiAeevg2YqQHWnZE34pVddwvW+y8vJg7gZwU8JsyQx
 6ZzbZHBr3+j512LDKFrnYnLEt6SO83zu+ekru+49X1WQ1Fzk5O+1TN58svC2K50kdgsX
 0SLgE7q4e/EY0cFeb4gDSdAs3n0W+JFU5ZDIq8P7taIH1qILI7pm5FBWoJNey74fOplz
 JIJ27mkaektSjN4gP4PyzJcw8K83d1utzr8orDoaedsIbQUXLz2fLq/XgjtD0L4Ox8Pj
 nJIve1oAwbezQ80uJHhzkmvljYXD86iBvW/bSNEKROIa0ggNVFpD5qcQBMAboKtD7lsN tA== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
 by mx0b-0014ca01.pphosted.com with ESMTP id 30wr3xhf8t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 21:57:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWOzLsGivY7CobEBNdlR+/je5IOhbENM6QLcYlKFNI/mira5aJU7XvonCZHOv6I2ljkJnSoVKUEowZCTWgvcXzQ/1H9xjFc8UhK/zD/6OHLqwrAJ3m/vkmTxhsygksqj4VZiYmrwn1u0ANh1qe/FD5G2Hsa0pNblXQfnwJQoS+k+PqVxqeS/56jrRBxr0wAqYszjIQeQ3lgIUU1kAQnn+esiSJGpCN2nn0uR6BoU+Qqukt+2aMHVOAazzI9LkxTSiUAbfbLZCTyIg3ciYuQzC/WncwEyy6Qa+xII79Jua9l7OS8mji1FhBtuiG1zddePBc05RG6rfbcDimbRijpKwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=euuTC0spb8BL0U5DWEwX7YOB/+Ivz3TNlgXeoiby4sY=;
 b=gVvZQUG/h+Ez04Njdt7zZ9/MJ63CjAteuAAzVvw1De7gmkb7NTz0TkgLcIzz4nNk11w6QANYMzyRrvlpONGsBx3kod4R4TUR0nI4JGkblbjqpCApcdKN634uzAwdKZnS94ywIDvEYX6hlPm2oZ96C0OXZH3V93xXi5TySwuJIlo3rJkXbmCO+yIXIqYe/bBBjMu9IZVh9otxVJhtHSM+2MuK/WVp42upLRAH0z5KHmFrJmEVRLpvLpHXe4JKQ5Kl5SjLRrbCppuUjMFIBeHCw+GFhGqMhe5xcZT47Ez9pYdmFC6WhZKRTkMGGgrQi0rj3VDla4nfNtET9U8dWymZOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=euuTC0spb8BL0U5DWEwX7YOB/+Ivz3TNlgXeoiby4sY=;
 b=eCFag0nLV6ThRNr3OMplUnB8gV5aSR9dpo5rc9FEvHDxiOJka5lDd3g97h73R6tLRouGlFlK4t266EfsYjH4o/nySmXFjyDfu9/UihDrAhvpSf2mbVT8MCxrX8sc5WETqow7z0XTaMJsvjMI+L+mV4W/LK8vvYdY0rhTcX62cCM=
Received: from DM5PR07MB3196.namprd07.prod.outlook.com (2603:10b6:3:e4::16) by
 DM5PR07MB3909.namprd07.prod.outlook.com (2603:10b6:4:af::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Tue, 12 May 2020 04:57:36 +0000
Received: from DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::19d0:3872:2f5e:220b]) by DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::19d0:3872:2f5e:220b%4]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 04:57:36 +0000
From: Parshuram Raju Thombare <pthombar@cadence.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [PATCH v7 2/7] i3c: master: use i3c_master_register only for main
 master
Thread-Topic: [PATCH v7 2/7] i3c: master: use i3c_master_register only for
 main master
Thread-Index: AQHWJ5XsWXz3qDTE/0W6yV3eibAfRaijBvqAgADcVjA=
Date: Tue, 12 May 2020 04:57:36 +0000
Message-ID: <DM5PR07MB31965A4D52023AE50A26A0DEC1BE0@DM5PR07MB3196.namprd07.prod.outlook.com>
References: <1589202702-4879-1-git-send-email-pthombar@cadence.com>
 <1589202785-6174-1-git-send-email-pthombar@cadence.com>
 <20200511174437.1a886231@collabora.com>
In-Reply-To: <20200511174437.1a886231@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNccHRob21iYXJcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy0xNjg3YzQ2Zi05NDBkLTExZWEtODU4NC0xMDY1MzBlZjIyZjVcYW1lLXRlc3RcMTY4N2M0NzEtOTQwZC0xMWVhLTg1ODQtMTA2NTMwZWYyMmY1Ym9keS50eHQiIHN6PSI4OTIiIHQ9IjEzMjMzNzMzMDUzMjAwNzE1NCIgaD0ieFliRnY4bytpelgxQkNldDFTUGJNdi9HQmpJPSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
authentication-results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=cadence.com;
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a83499fb-a79e-4dde-d11d-08d7f630fd5a
x-ms-traffictypediagnostic: DM5PR07MB3909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR07MB390925E41EFB0C5D7C51B2E9C1BE0@DM5PR07MB3909.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pb4MqAH2Yw5ym0E1AOV4PVglQ3ysNWyqT4FUk+lbQX3S95KNi8icOwDByDKdFCNFK7CFardxuqosrqu/DabFQ4+ZZEkdJL7Hc/dGMt04HcDVSbFq1pD7Ac0F9CCYeOxUAaoe5I5yjqUeeTprlQu06EsMiJI36UwemK5a0uy9+/GdhkFQSMLDIrMWfLNGI2YkVJbgHQC1CztFQxXZBI821m3iqzYd2aq5A0/JxehguLGgi4G9QYrh0tgyhxHW/nk8GcYpsrGMlFgCVU1PULzdkkLqvw+57ebIWoeEaCJTh7QpC96L/kDwUtvrKrcC1m5fOgHBhOVBevSAFOxCMCe6FhiDIoAJjG6aaoaj6807m9GaSgl/Ha55yh+dkd3jwBuVUJDwwXZ1NpswzFe6GnPvjgPsTr33XSER6KpQkUL9yEhTIg8o0S8A1dYejTKGtMg/ZjsBq0sQO2zTJceSbqOxAqARetUekjnxNFHFYEZZcCLATwhQbdiLZQ43p9y1NApQAmdnDBJ0YvkPB0oC0yvnTh7wUQ8JvokDb878ecQwpoqDpmogLECquYiX8T6iXptY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR07MB3196.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(36092001)(33430700001)(33656002)(478600001)(2906002)(9686003)(54906003)(316002)(7696005)(6506007)(55016002)(52536014)(66556008)(66476007)(66946007)(76116006)(8936002)(8676002)(66446008)(64756008)(26005)(4326008)(186003)(86362001)(5660300002)(71200400001)(4744005)(6916009)(33440700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 91z1WUzGOXIgpdF7xyjalH3SP6gKYEFNdK7ekiRByNyUjDEQipjv+I8KtUaS9M5nJ+7G8JcW/4XgKOHZAp2V1I5Z9KchouOKmyEAp8pHTMx1Rt8KTiJF4RXamjv354dhQj2i7iEvWAP5A7WNyPfVMKea6PoZvkU8DyUc0S2M08qqG3UlWS/L99jPDpULqt8qb11WYCaPjnZjmhnu/tqMPEnR6PZxirtZ0SD7kQhznJ2gtVQfdVXiPn/jKPw/9xJcnspikVnrEg+mLgdCHQ7zwxyAummeZg0Nv/2vDN8cMbBWzA2RqL8LJSm9AmgY12uFgZQEIWRCxJMFfrgRufC89BrBRQmUYe4QSJXDskYBact0lkD10+omXEoL3pP+HeZ3ydYkPdUO8tGECNsKYlx9sCfP2zBq2zYXcOXb8mXGKK63jf4ELw+DYjVIyke+4RfKq4F8+ErKkLAxjxzDMkD5DY03hO8HwoxQmiPiI7uqCOk=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a83499fb-a79e-4dde-d11d-08d7f630fd5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 04:57:36.4205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AgulMOZEPrjGa94GJa7B/cHNoh/gq/RZDBpx4o55e2PLD4/FK+IhL2rUhMWHo/RDZ7usRqYyYL+t8ClEdn78piU+N3GLTkBq3NcVyAi5ww8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR07MB3909
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-12_01:2020-05-11,
 2020-05-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=890 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005120043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_215751_012575_D10201BC 
X-CRM114-Status: GOOD (  11.65  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

>> +/**
>> + * i3c_master_register() - register an I3C master
>
>The function should be renamed and the doc updated to reflect the fact
>that it only works for primary masters:
>
>i3c_primary_master_register() - register a primary I3C master

Sure, I will do that.

>> + * @master: master used to send frames on the bus
>> + * @parent: the parent device (the one that provides this I3C master
>> + *	    controller)
>> + * @ops: the master controller operations
>> + * @secondary: true if you are registering a secondary master. Will return
>> + *	       -ENOTSUPP if set to true since secondary masters are not yet
>> + *	       supported
>
>This argument no longer exists.

Thanks, I missed that comment. It should be removed.

Regards,
Parshuram Thombare



_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
