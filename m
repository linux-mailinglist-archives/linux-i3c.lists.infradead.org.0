Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F53C1CEC43
	for <lists+linux-i3c@lfdr.de>; Tue, 12 May 2020 07:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6H9sy55hksefw5BoAK8+cMtTGZB2Lo6/iO/zZ1Fu1vY=; b=SNyJ6ldVvfdtfW
	bzVfBSji1FD/0dD/IhmxQpx419V7zgEYqD2mNES8yhaZZZS+3AnvjISHsBnM48x/WaOyWwt14P2WM
	HHZHLBRFdClXsZSZnyoC2PEfcYK286EXnEK5U1M4jPela6ACiwbu7hhD4DbSO59gXeICicnRCLCrm
	PWBrL6wNbKIUuYuxYSZhGN8GPnIOljqgKpXRNrq46udaxb5zPKwOFistDj2o7rNARasDjmayCzcqC
	EdSF9Ol/1zJICGPsd1Mx1CXgD9iC6xS2KK8bw4vDyrBPs2OaES0Bh/ncuK1PftWYW+b5HV4z95mZs
	N/UWURtMb8FLbSyTicNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYN4v-0000fz-T6
	for lists+linux-i3c@lfdr.de; Tue, 12 May 2020 05:03:41 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYN4s-0000fZ-P8
 for linux-i3c@lists.infradead.org; Tue, 12 May 2020 05:03:40 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04C50kAK019824; Mon, 11 May 2020 22:03:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=c/Aj1oJ4Y+Jz5KJ9u5unNNgPdvWK/m+/Xv3LLiUzgJA=;
 b=sTUxrZxn8Lb8nfW2HC1WwnObKQgEPdxVfeOjAtPaCcZZXKmyA+E9x9qO3DLJeL9vUOok
 13Uk4aWkCkrFeRCyTcqyYtqYQLXYO42acINf/CXQdlNm2iOYtGZJIcoH0L6cXzxA3FKU
 GYdR0E1s31AHusqI1uWdlFKnMTIin80gKaUNhhXwzimrjqZd8cqEgzG1MC8+eWq8GH3i
 m2YfgiiccrTotIY5xSMg2u3hEKyDyUyAu4vrxoECnjVBc+FIKhT5O0b/8jBDqosTgTwe
 qcM8550/6pfxvmcL7OUKLvIsW+X0VPFrGWwjrs3TdzOFdz2hBDQMDXyF/6g4GhiNK3/T eg== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
 by mx0b-0014ca01.pphosted.com with ESMTP id 30wr3xhftf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 22:03:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBJALGEWdS4inCMXVKmf1XW4QvyDS8f+uCUOTVjXlCu5GFbLcMrBqATBoR4OqVUvOnsUQVISTniB+cyrfcSsmTYCzNr9uMOuYsCZz6lTscyQJ1AqxwvYY1O0h6ZZmK/hZLt9y3QKLYUgUet74I8k+yBVKsb6nmYS/BEEo9kgn1ov6hajkpc0VWrLNwzvsKS/7gA+9yDf1AsuSM4+oR0Pv+BzfNr0BLSOzK0AkiKspMUfujDbuIOiDSuFQNqct/1XI5hzozFytG6aqEjFxoM/DSkBBhxH5cTEjWPXLB7R4gHg8f6XfTotHvHN0exayt7uGTz2J7DNuetJkDszFrXaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/Aj1oJ4Y+Jz5KJ9u5unNNgPdvWK/m+/Xv3LLiUzgJA=;
 b=j4rTRYR900w3cWwo6MHjbBKhPukNoT4+m/0vreVygDk43iTaDZuK65KEr9jBoXCi8P73iuXhYoR1Gepl9L7PUO5zfxAQ1IUGmwUQg5PTSVk2X8EJVW2VSDk17r1O+5oVfG9Bcjj92UtuiLa3csEpAqFJUx8goaFgm6BaKPTyQi9zYUhSE4HPsgGcN0rW9ITatC8DDvBrmWEZYKa9pmU0ARTBvLb+kRKXSW4iWVQBSyA3ZKRhLrIizuznrc/67kJ/3BTg/tEoP0ltr3OE7RwQbCkTuLsiuohQJj9NX7Dvjhi1/SCG2gJiEskfnEdorsIGkj+icqHE21HyAbJNSe5bOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/Aj1oJ4Y+Jz5KJ9u5unNNgPdvWK/m+/Xv3LLiUzgJA=;
 b=QVDP7MTYDMIHf7GbRP9DQyRAA/GN488AVF2TKrvWW4NxK81dvXWlG3W8vryaCmNj6QQnZGmFnpSEPt7jVwng4cywrNy65x8G3yLwmtnkFKHJ26a1KTMjh0yDi3zABgubhG3n0yAM66874zzjdqxZGW2Fjy0pBslZh4Q1Lk2DmAg=
Received: from DM5PR07MB3196.namprd07.prod.outlook.com (2603:10b6:3:e4::16) by
 DM5PR07MB3909.namprd07.prod.outlook.com (2603:10b6:4:af::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Tue, 12 May 2020 05:03:33 +0000
Received: from DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::19d0:3872:2f5e:220b]) by DM5PR07MB3196.namprd07.prod.outlook.com
 ([fe80::19d0:3872:2f5e:220b%4]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 05:03:33 +0000
From: Parshuram Raju Thombare <pthombar@cadence.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [PATCH v7 1/7] i3c: master: secondary master initialization
 document
Thread-Topic: [PATCH v7 1/7] i3c: master: secondary master initialization
 document
Thread-Index: AQHWJ5Xdp1p7GypmlkGN/TuO2SBczKijDKwAgADX4VA=
Date: Tue, 12 May 2020 05:03:32 +0000
Message-ID: <DM5PR07MB3196C4B887D5D4720971BF11C1BE0@DM5PR07MB3196.namprd07.prod.outlook.com>
References: <1589202702-4879-1-git-send-email-pthombar@cadence.com>
 <1589202759-5677-1-git-send-email-pthombar@cadence.com>
 <20200511180500.6e1c4453@collabora.com>
In-Reply-To: <20200511180500.6e1c4453@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNccHRob21iYXJcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy1lYzM5NDdmZi05NDBkLTExZWEtODU4NC0xMDY1MzBlZjIyZjVcYW1lLXRlc3RcZWMzOTQ4MDEtOTQwZC0xMWVhLTg1ODQtMTA2NTMwZWYyMmY1Ym9keS50eHQiIHN6PSI1NjMiIHQ9IjEzMjMzNzMzNDExNzA0NDA2MSIgaD0iNUhzbTFBYzUwMVFTeER2TFBxc2ZnREwwamVrPSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
authentication-results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=cadence.com;
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ebd17dc-ba51-43d7-d87c-08d7f631d1d2
x-ms-traffictypediagnostic: DM5PR07MB3909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR07MB3909BB26AB1CAFBAED64D376C1BE0@DM5PR07MB3909.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ipym0Q+dPvdjI2fXV2NnbqvQkjOtwfUKWUDYNnG9/Kh6VgWs74kjIt85eAuwFgn8CDVIrRfKFwD1sIAxUOYbBQ9tw1aCBklmBppqsVgK9HfQRMtopPOXP4OAIO0nRwFBUVFCuwOr8n7REKEH785dRyexwwGoxqlilFzcLIeoimUDyYV01aXrYP/6kPX/gjoAWO7915GhxoxamHK5wco4lW5+/P1rzxQH1rH75ygrfEw01GyvoptryUiInpVoYv7wTsg3vS38XkicC0OtRMuaAZCPTTOd6jJgy1fnH+djCcFCsyhsWPKQy8t+Jpft7OUoWvmCZB5s4MGrTo4NCVfjDpgj0s3BzVYZ2q8n5mW8J3qEvs0PQZ3d+qt20bGvVo7sjTWBVBl8vANCHxEvMavbOMzJEKpdMNjB0dV3E6qMfWxhI3WxserQ9D8aqMbxeRJR+EDvOGfV9du7ty3sUNSF9gpjUENGJ616xe8ZvHQ3OAEMLJGgZYkyizxk3XTV8mzwFHHsXJmek2nTgNpxKpqtv8uD5qQwdzun+NLQPSXHJFFTPCzhS+bylKML0ookfPCK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR07MB3196.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(376002)(366004)(346002)(36092001)(33430700001)(8676002)(66446008)(64756008)(66556008)(66946007)(76116006)(8936002)(66476007)(6916009)(33440700001)(4744005)(186003)(86362001)(26005)(4326008)(71200400001)(5660300002)(9686003)(2906002)(54906003)(316002)(478600001)(33656002)(7696005)(6506007)(55016002)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Tjz5skwv0ya6ekKDiIT5Ruf5l9qPSFxXAprWY8rbBNUyo6RqZ/mTrO7rYJw9bTEEPNCvOl9hybNM//TvfnzQufWD+ZYRn7RxJpkZTTfkeGNIcFg8FuGLujxVqZ6+oCC25c8dcW6/VCdYnaqE7tvV3dnSHzQI2GODEvTEIWJSItaV3Rq6yqo1p7K9aPNLNJAGg9v+GBm+dNIgykN4kOgR1Zvr1mGvY1mloT5ME+Qbybdu0kTirwF8pvxflpqKslx2tSJPpO8ULxRlpmSDl+JjFvCBAOe/mmZmlPoqZNEiW++u1dLy7T/XWSTpLa9zyiviM5KnoXZ6WD2JwFruM/D0tufsAxYmfr5znbIhpzxh9rGy4f0QUHCOiz14NakN7lv3Bb+/qxGpz6HMon/7JchwBars4jr+7gnfkAmx29jzk5RCy7twOVCf5Fi4j6Z5aTzbjrniktjW9qg01NiKXimwR5A9LKP49Txth//qCLvdVAk=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebd17dc-ba51-43d7-d87c-08d7f631d1d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 05:03:32.8681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dA5xVqJJSefAxRyHTgQYRXPhSZ9B0fXBVyHAq+gvSQSCOmkL2Ty3w1zk0XEq0Int1z/igrh/yOhCWZ14bzCAa1oTiw3RY8vaxTgLBeMhm90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR07MB3909
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-12_01:2020-05-11,
 2020-05-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=493 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005120044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_220338_940139_FC2AD604 
X-CRM114-Status: GOOD (  10.16  )
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

>> Document describing secondary master initialization,
>> mastership handover and DEFSLVS handling processes.
>
>Thanks for doing that, but you probably didn't try to compile the doc
>(the formatting is all messed up).
>
># make htmldocs

Yes, it looks messed in email but I built html format of doc and formatting was ok.
May be because some tab/space issue it is looking  messed up in email.
I will check that.

Regards,
Parshuram Thombare



_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
