Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DA1CDAD7
	for <lists+linux-i3c@lfdr.de>; Mon, 11 May 2020 15:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tecWhoEkyqUrSz7uPTyBbEGb7P0tTRxPre5lpeL83DU=; b=t2fLQnCdIgbGBM
	I1VleFclN4/uedh/QFRzcnGEuY3dwWLgsy6EEtAclaGUWsnQ8Pr/VHahvYhpAG2SfednR87QltPN1
	C881XHIB2JcGgasIQJdUq6Xze3Ze14+WgmH9Q/D/24BlrtgKuQrHuoNX310URGd9vWV/GTw+WwxOg
	QkDCmCKrFgTI5e0o2qLI8USUMm12CkdEOjCZC8rwYO3XkHqAYE/N3X69VobORnpUnHCc56n3nAqQ3
	InFVzaa17cG8jLH1JW90r1XpUfjFZTan9oF7UnaAr5TelSwGvCpYiBRDo7wkS/dyFFs4TjqakB/Af
	l3tFV83PQbUW5g9xRFsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8E0-0006A1-Jv
	for lists+linux-i3c@lfdr.de; Mon, 11 May 2020 13:12:04 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8Dy-00069C-38
 for linux-i3c@lists.infradead.org; Mon, 11 May 2020 13:12:03 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04BD8IpH016681; Mon, 11 May 2020 06:11:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=MhvVjEgxe+UGjlw4uK04Rkr9TwqRBGlAdE7TbcbFFEI=;
 b=BGuOyqIdLTMzsOoooG5Y8Re5ThKV/wLSN4i4ndCv3ka6IgYJVcFo4sDpeunvVEAG2zSf
 c9HI41hwLtMNu26sc+xzi5mgnKHqqHjqo2GFSBImtFwljguUNvo6DH8FgOUk3Lk1g2Fg
 4is1pvb4wmCDOcWh3EmpAERl7h+UHqb5Um33bgHiLy6ON/y+EfspgUGyMMJFPyA4/ED2
 vXGVQ1U/JERD/RzZLhATmZSad3jagZ4GXxRC5OSS/L7eUr+30gGs/NLQzSVYlI7MGZaO
 wmQJV+euMxuyBWz+amRulBF8oWk7RC+DQAj6FftUkaQngWbwmbJ1tD6kgt6r+2AKmfZ3 6w== 
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
 by mx0a-0014ca01.pphosted.com with ESMTP id 30ws2xx3pj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 06:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/LXuVtqCF4kK/8M97FumnZ553YaLeBT46rNPVdoUF8wxzLvrxkXoxBzmtYmvVRBazDOQx1Ez+3F5NzQmqTiaP2TgpeCKedOEHV198ZhcTfCV72fpWbfH5ep/t5J2/q1ZXzG5hkq7XADYGpJRjMz405282feSW6YzxkkiACMohPHGacVnzWbwX7P0ZzG24uhY9xZ8NMZFz3HlsJ8l1rEepMyO4myDyIh8FrTUNQmm2JAgyPD2GCR64zkbyMCugAO9z0iwENFxj9eM5VOXeHON4HAWhEOpbrbefQODEqdABrprs1Hmv0C0o24q36FLqpsL7ZJmxV0hv7GJMe+LxTodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MhvVjEgxe+UGjlw4uK04Rkr9TwqRBGlAdE7TbcbFFEI=;
 b=KMDANHhsAAEi0fn+ME5pXG7YW7WxNKJ63DamwaSGLmrO2kBSNQ+wBETfcxQFEeRVSnvSlBpzKwUS50bq9uSEuscT8HQhPNrIt1m4h8ibS7ZMQV6zAGDnQRJmWe2g1XIDDMZmY0Z4bjRQGEZOFd1EkbjY0INxCV+TeoB8B3Gdl0PPa3I3CdlOuawWMDyDBZkc3OF2Dwl8vvzZoxAvqOM0icDcNoFKp22PABqEBSAF2bf3V/eyo81vNty9bGtIPt8DLhy6geH1bRlUCSrKAGVXF98/LZsxUFfPVvI31+ZwBTfE+NX8lYBejLvV/EYjX0ivkaJWUrdXrFNnrVBhTNv/Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 199.43.4.23) smtp.rcpttodomain=synopsys.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MhvVjEgxe+UGjlw4uK04Rkr9TwqRBGlAdE7TbcbFFEI=;
 b=3pZVoCtx2M9jzKLHmN72djf4j8jfq2kgb3V3l7XCxJ9kW1QbcYcy0G4zgQ67afu/u3Ql9RI3Iv7YXG+yeAW0zlprsaEU5hdTalsyEr8eGMzDQKl5zx1c3jSXY/9EBM+YYcIDt5AAJPKK/0EepdrZe/n0ClfYIbdY063RwFi77Og=
Received: from MWHPR2001CA0018.namprd20.prod.outlook.com
 (2603:10b6:301:15::28) by DM6PR07MB6460.namprd07.prod.outlook.com
 (2603:10b6:5:149::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 13:11:55 +0000
Received: from MW2NAM12FT054.eop-nam12.prod.protection.outlook.com
 (2603:10b6:301:15:cafe::70) by MWHPR2001CA0018.outlook.office365.com
 (2603:10b6:301:15::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28 via Frontend
 Transport; Mon, 11 May 2020 13:11:54 +0000
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 199.43.4.23 as permitted sender) receiver=protection.outlook.com;
 client-ip=199.43.4.23; helo=rmmaillnx1.cadence.com;
Received: from rmmaillnx1.cadence.com (199.43.4.23) by
 MW2NAM12FT054.mail.protection.outlook.com (10.13.180.197) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.11 via Frontend Transport; Mon, 11 May 2020 13:11:54 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by rmmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 04BDBnCi019666
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 11 May 2020 09:11:51 -0400
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Mon, 11 May 2020 15:11:49 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 11 May 2020 15:11:49 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 04BDBnTv005005;
 Mon, 11 May 2020 15:11:49 +0200
Received: (from pthombar@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 04BDBkL3004975;
 Mon, 11 May 2020 15:11:46 +0200
From: Parshuram Thombare <pthombar@cadence.com>
To: <bbrezillon@kernel.org>, <vitor.soares@synopsys.com>
Subject: [PATCH v7 0/7] I3C mastership handover support
Date: Mon, 11 May 2020 15:11:42 +0200
Message-ID: <1589202702-4879-1-git-send-email-pthombar@cadence.com>
X-Mailer: git-send-email 2.2.2
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.43.4.23; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:rmmaillnx1.cadence.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(36092001)(46966005)(33430700001)(82740400003)(81166007)(8676002)(70586007)(86362001)(5660300002)(336012)(8936002)(36906005)(54906003)(36756003)(107886003)(82310400002)(70206006)(110136005)(33440700001)(2616005)(47076004)(6666004)(2906002)(42186006)(316002)(426003)(26005)(4326008)(356005)(478600001)(186003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 212dc181-a1a6-4248-3b61-08d7f5ace05d
X-MS-TrafficTypeDiagnostic: DM6PR07MB6460:
X-Microsoft-Antispam-PRVS: <DM6PR07MB64600FDEE10FA03E21B190D4C1A10@DM6PR07MB6460.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H+4UF2/0q2Cd1fh7Oebk1Qbz7BA8VVuKqk2EMXn1arugrCiNf/ubxWU++2Zi7Oj6xfYHJg97Noj66zumSJelnRW/g25V/Hx/HMQOYD4/f+G0dh4z4W7/aJe2F1fKoEnqfATu9x19RITX+7cmIWX5D2LQovDTK7Q5mxt5oZhq2fu3XBJsaphxLD76yVJ3zEcCIkJ5vdEpg6TvJg8jQLd1Hv7ZM4fq2PAVxr0hUHNNPy+/2gi8LgiEQDuNv8z+WQV73iucU8vdZ8bF6LmXpcJSECRRfp7tV/IQ1v8SNHNrRJ8rwxYMQxxdwV+R1x2lZaPYai5OmA7WCXjM+iLwT3hn4mA/rdZD/Dpd+7FJwPa0EyQaGdSQMgJjYUbxgzwkt/QcwQRGE7CWql+ZLSWTncOUANfauIi8Z1olDVbQJvoG9EdEwv+wBphpfJLwLhZMgKgzG/PDdFYZGXxjWOEbME+XbsZkC1WKNcR9Ja6dAiRXJrkhHm3ABrajGfHN0ShuP/WyC65xsYokUFCgSWj0b+fwawEOTMsVfOvXubVspRuTT4j+oOUAPkutYbblOtCdr8PbLZU07kZ0hSezQVvFm6UOHPvIrd0hpQ/hvSQj0VgjA3A=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:11:54.2081 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 212dc181-a1a6-4248-3b61-08d7f5ace05d
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[199.43.4.23];
 Helo=[rmmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB6460
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_05:2020-05-11,
 2020-05-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 spamscore=0
 phishscore=0 priorityscore=1501 mlxscore=0 suspectscore=2 impostorscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1011 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005110109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_061202_423380_6D4FEB6F 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
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
Cc: mparab@cadence.com, Parshuram Thombare <pthombar@cadence.com>,
 praneeth@ti.com, linux-kernel@vger.kernel.org, pgaj@cadence.com,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Hi,

As per the discussion with Boris sending v7 of 
patchset with changes mentioned in below changelog v6->v7.

Main changes between v6 and v7 are:
- Added separate functions for main and secondary
  master initialization
- Secondary master initialization don't wait for
  DEFSLSVS.
- Change to use I2C device information from DTS,
  and corresponding changes in controller driver
  and I3C core DEFSLVS processing to ignore I2C
  devices received in DEFSLVS
- Reverted bus_init split
- Fixed formatting issues in document

Main changes between v5 and v6 are:
- Moved populate_bus() hook to master subsystem code.
- For secondary master initialization i3c_master_register
  spawan separate threads, as secondary master may have to
  wait for DEFSLVS and bus mastership.
- Populate bus info is based on DEFSLVS data and take care
  of hot plugged / unplugged I3C devices.
- Split bus_init into bus_init and master_set_info callbacks
- Moved mastership aquire and handover to separate state 
  machines.
- Added DEFSLVS processing code.
- Moved back all locks in side the subsystem code.
- Secondary mastership support to Cadence I3C master
  controller driver
- Sysfs key 'i3c_acquire_bus' to acauire bus.
- NULL check for pool pointer in i3c_generic_ibi_free_pool.

Main changes between v4 and v5 are:
- Add populate_bus() hook
- Split i3c_master_register into init and register pair
- Split device information retrieval, let add partialy discovered devices
- Make i3c_master_set_info private
- Add separate function to register secondary master
- Reworked secondary master register in CDNS driver
- Export i3c_bus_set_mode

Main changes between v3 and v4 are:
- Reworked acquire bus ownership
- Refactored the code

Main changes between v2 and v3 are:
- Added DEFSLVS devices are registered from master driver
- Reworked I2C registering on secondary master side
- Reworked Mastership event is enabled/disabled globally (for all devices)

Main changes between initial version and v2 are:
- Reworked devices registration on secondary master side
- Reworked mastership event disabling/enabling
- Reworked bus locking during mastership takeover process
- Added DEFSLVS devices registration during initialization
- Fixed style issues

Regards,
Parshuram Thombare

Parshuram Thombare (7):
  i3c: master: secondary master initialization document
  i3c: master: use i3c_master_register only for main master
  i3c: master: add i3c_secondary_master_register
  i3c: master: add mastership handover support
  i3c: master: add defslvs processing
  i3c: master: sysfs key for acquire bus
  i3c: master: mastership handover, defslvs processing in cdns
    controller driver

 Documentation/driver-api/i3c/index.rst        |   1 +
 .../i3c/secondary-master-initialization.rst   | 118 ++++
 drivers/i3c/master.c                          | 566 ++++++++++++++++--
 drivers/i3c/master/dw-i3c-master.c            |   2 +-
 drivers/i3c/master/i3c-master-cdns.c          | 377 +++++++++++-
 include/linux/i3c/master.h                    |  36 +-
 6 files changed, 1038 insertions(+), 62 deletions(-)
 create mode 100644 Documentation/driver-api/i3c/secondary-master-initialization.rst

-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
