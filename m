Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B001A2497
	for <lists+linux-i3c@lfdr.de>; Wed,  8 Apr 2020 17:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYa2rO2W1Pw5bGW5RTeZK1IjxZ+Jeahe2DLAZUTade8=; b=ePImHPFBJgpuJi
	D7qwzONRzZxFfdqXskfCdeeru0Ll5M9I5icEtJ1V1SCsMBXHzkj4stiMbBhsoHfjjDdrFSlNHDSnz
	j4BE9SxnHLQmRuF2xYFv4CrpBaRDoNWFiJgmWljX6VHZCrr+iTe827+KWmIJhjs9uU1jxx+gIBYat
	0xlT4GuFtmfrOQwP3gKsI98oDDg7FzRdLa+kijaZxRV+59WOXto/amgPKTqIZsjKPT1950K+exl07
	mTJGXdoihAt0j/LLQWQAnJ73MCUSR5Vzf0at/QQv/KITigy7G9Vf7MuMsGqRDSMh8pKrCpAp0HmjB
	c+MBE4vqUURYO+ijS0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCI5-0001La-Dq
	for lists+linux-i3c@lfdr.de; Wed, 08 Apr 2020 15:06:57 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCI1-0001JQ-IX
 for linux-i3c@lists.infradead.org; Wed, 08 Apr 2020 15:06:56 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 038EnQtD010020; Wed, 8 Apr 2020 08:06:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=6FqK81lcdJrG8Q0+087s3mTedOrurTRbGSpKQZjSatc=;
 b=LRwRjfEMLCkLjAH4g4O3Lh4cQ1+uwBo+BMyTvRPN0CtA3ABJAoaZIRXxdUFe3TJ3IUPe
 LsPHI1sNm02m9tWtntAFid3+mzR/sc2+gdS8/XrzuRZBTusUd3Sh85xHHGpxixZxLpiq
 ysbyNOcWQunniSS+cAWtsR8GuyVciSC4F0j4LtOpx5BqsdSaHvI/Ea5o+8SYEfbY9Ctg
 vlfmcpH9A089XfMkqQ9vAZYcdsrQ8koQLFHqrVhXbwpY541xJIv9811IX+FKsKenhxLV
 NpgnMaEQ5jbucNcxM8+QWunwv2eOb5VTboyFsMM3ei9AHM9ET51WodCVNfVjKJMmPHZl xQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
 by mx0b-0014ca01.pphosted.com with ESMTP id 3091ny3ffv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Apr 2020 08:06:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CA5sssOR+Jktc55znH7uQf4yMvpy2fcdCUPXHsYd6m+8GDc1Jdy9fNmyIqjt91BRCYGqi6ER7ydcukITeePGA1gnusRRiwCjt3S8AJdpTmc6TBHkJANZVGNhbHCNe200AliyQuPneUB0I/HjlvSdNK0ZqH2BSCxIjRDPs3Z9kykjyFZQc4MJkNMqqgzO+8+ElgiS+O5sXOKHS13bpqOVzVZP1lRTPFMfUEgZKceRbN5gEzUp0M8SYnp5UedbPTdjzqlUMEqckqCeDVf5k/Ygn8IccmqwBe4tQ0v5XOg5x4KLdaavFM8G/Q9BPIUd9/I0bY0wydKUEA9n5Dh0l2QHCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FqK81lcdJrG8Q0+087s3mTedOrurTRbGSpKQZjSatc=;
 b=LnxbiphF8uhvhJvGiJ9eLudASnGMpx+BXk1zb7eeRM+vIesk7/1LJzw4JOyt3xosbmNtuTVkMkxBXaYCLYQhbecnwKs3KI9Cg07yxlRBGzxZEJbqaLXnf4D0wF0uvfhh8Axy3UszkDnTIXg5Yufl6gdodCxbAJHiIuxHlAu7rGYjfLukO68p398LVjVlTiG24Nf1UPqrS8Id5MW8n6Bq+W9R/CffR3ckA7u4+n+6o3dLc6rR0DdpGupQV42rsvn0crcbIv29AQ4JZ3CufZtLKiPDDtzxoy5hcP+a1JWnEiZLcE3CiXQhtkmqL1F2hJOokyKwLlp3xB7oAuNIJS8tKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FqK81lcdJrG8Q0+087s3mTedOrurTRbGSpKQZjSatc=;
 b=h8iBHbrWgurYQ4lbaaH0YNvOrfGfx6MLJBe8pzjA3aA/XoVO7KDIoe4OD2+oxWwcO3Gs3xaX9xyiQOUtByB/YIhiyPew/DNH9ff4QO5y4WobFUfJI0T34FK8NZRoG5mVx2PyZvnXnt3vGVWj/bL8ihh6IPI30Zge80R9M5lUjAA=
Received: from DM5PR07MB3196.namprd07.prod.outlook.com (2603:10b6:3:e4::16) by
 DM5PR07MB4119.namprd07.prod.outlook.com (2603:10b6:4:b4::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Wed, 8 Apr 2020 15:06:23 +0000
Received: from DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::34c3:e7f8:a178:a38c]) by DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::34c3:e7f8:a178:a38c%12]) with mapi id 15.20.2878.018; Wed, 8 Apr 2020
 15:06:23 +0000
From: Parshuram Raju Thombare <pthombar@cadence.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [PATCH v1 0/3] I3C mastership handover support
Thread-Topic: [PATCH v1 0/3] I3C mastership handover support
Thread-Index: AQHWDGGkJ2c7JAPQnkCuagmae7dgMKhvAV4AgABNf1A=
Date: Wed, 8 Apr 2020 15:06:22 +0000
Message-ID: <DM5PR07MB31968BA9407E114EBE193C1BC1C00@DM5PR07MB3196.namprd07.prod.outlook.com>
References: <1586211645-8065-1-git-send-email-pthombar@cadence.com>
 <20200408120418.0d5235a6@collabora.com>
In-Reply-To: <20200408120418.0d5235a6@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNccHRob21iYXJcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy03ZThiYTM5My03OWFhLTExZWEtODU2MS0wNGQzYjAyNzc0NGFcYW1lLXRlc3RcN2U4YmEzOTQtNzlhYS0xMWVhLTg1NjEtMDRkM2IwMjc3NDRhYm9keS50eHQiIHN6PSIyMjU2IiB0PSIxMzIzMDgzMTk3NzQwODM1ODYiIGg9IjRjWDl5SDZpZjRNMUE2RHhrQjFtaURFQzBnZz0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 349310e1-85da-48ee-75ae-08d7dbce66d6
x-ms-traffictypediagnostic: DM5PR07MB4119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR07MB4119ADF0C1850ACE53E00A83C1C00@DM5PR07MB4119.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0367A50BB1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR07MB3196.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(36092001)(55016002)(26005)(8676002)(81156014)(4326008)(9686003)(8936002)(66556008)(86362001)(66946007)(66476007)(66446008)(6916009)(64756008)(81166007)(76116006)(2906002)(478600001)(186003)(54906003)(52536014)(7696005)(316002)(71200400001)(6506007)(33656002)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: cadence.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IsqfPf1TGqtPFkF25ebzMCntgG/iIrOPN879aBD4vmVgISFNwiUfyKB+R1xKi8sf3kDfIGtFaOaMFfu1Pzqt8vlX3Ug3NvjoX3qJm6K+b4ylfXCdM0ko8AcX99BPUkpT0C1DNWvKEzPLzprvqV4lKLcb0bWOTApPYiM4TUSUSXuXRs4buIDXcIHB1A0O6qPrzthwnshZnem524C4GO8ZtBIKKXml1UmHyIn/iDQbO0sgxiVNVeafG7r3beCfGyBcgM1X+/4PBCfY1ZA0qnPwpFrEy6m0b8KeeTwQsMtTbiDRzetQaY0yvqS2QdqaUDoGdBIAvgX0ZtAiVdMPt5Q93l6YFQX+XdbqDw15GElv4hOmsYIOSBZFkRWzVUliinG43VK70+AsatkqXM/wH1zKp0lzWD6T3o72RrTr/kSnaHiGPBp+QO0uD8R+IIVBaQvTmFSULA7EUsQe+16lexe66hmpniZ+4KF4Mfz0DfKSmCwmJOvq2VufF5hVfTOluVor
x-ms-exchange-antispam-messagedata: p5SyNpIWnhSG6TmmZUur5BXdaHZomy6VxLwiDIIIdfgHpJIJHWAnvE6+HZ6cPKZeh519AbwSha3nEKO1DTNcd5vcU9shiNyaumrq18CVo8rpZJtXpd0Tawyebr4i17HtqQuv4x3w3aoDR5uYfr/Mmw==
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 349310e1-85da-48ee-75ae-08d7dbce66d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2020 15:06:22.9612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QQ+IAdKA+Rr6CvB9EFBEPnO2ltUz9DBNtaHwE3n6WsBpntuMNMFu5iGUvX1t++1SzWXma+sKZSYO6GqwffOKEKuM+7IWu9R2WORJeWd0t4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR07MB4119
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-07_10:2020-04-07,
 2020-04-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 mlxlogscore=943 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1011 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004080122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_080654_108378_1A016D74 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vitor.soares@synopsys.com" <vitor.soares@synopsys.com>,
 Przemyslaw Gaj <pgaj@cadence.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi Boris,

>It's definitely not the first version (as implied in the subject), and
>I'd like a proper changelog detailing what has changed since the last
>version (the one sent by Przemek).

Sure, I will resend patches with updated version and change log.

But just to summarize, main changes are
1. Secondary master deferring initialization i.e. registering devices
     representing other device as well as master itself, until bus
     ownership is achieved.
2. Moved bus request from slave and bus handover from current 
    Master to separate state machines. This is to assist any further
    changes in mastership request/handover procedures. e.g. MIPI
    v1.1 specify additional features likes bus yield at the will of current
    master to sec master selected by current master, group address 
    functionality, multi lane support etc which requires additional
    steps in handover procedure. This structure will help to extend 
    the functionality further.
3. We don't really need secondary master to be aware other devices
    on the bus through mechanism like device tree, since main master
    broadcast this information through DEFSLVS. And receiving this
    information does not require sec. master driver to be loaded, at 
    least in case of CDNS I3C controller .DEFSLVS information is stored
    by HW inside a table which is later accessed by controller driver,
    to be passed to I3C master subsystem. Sec master initialization 
    state machine make sure it has active dynamic address (this may
    seems repetitive, but it is to handle case of RSTDAA CCC), and 
    DEFSLVS is received at least once. And IMO we don't really need
    to process DEFSLVS for a sec master until it want to become current
    master.
4. Another important change is setting main master and sec master 
    In pure bus mode during enumeration (DAA), this is to avoid need
    of sec. master having device information through device tree, and at  
    the same time allowing enumeration to happened successfully.
    Both main master and sec master change bus mode once enumeration
    is done.

Regards,
Parshuram Thombare



_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
