Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C431E960E
	for <lists+linux-i3c@lfdr.de>; Sun, 31 May 2020 09:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hFgSEod53P/upN8ysrNPDWpKm/+LDwKCRJRz52Kocw=; b=ReEV1hXcANtnYw
	dw5l4ayK2IukG1ptn86bToyByB6OIpi7xhWpjnIbjqAfGbyv7c2aNnVvTtXbAnT9CSIUzxV1vm6kn
	vnZjrD8eXgBknBXe270e1VyRXCvJBsXrfK2zTEVJBHIGhPr9BWPp6MMn168+r5FPfU5tlu8KEweyw
	sFzgufh8JJ6oKifqSzqOqCbslp2A2Ki0LeYVNA6gLwYHNtcPjQj4lanmz+K32FBO/IopaxbPRVNUp
	eIHjZLZ31gYpeT01F26D32i83dZITW2q/C5Aetn9H0kmGCH93bivKBLe7NbD58ZSmyCjmI8xJkNG2
	DVCFkmj/VYm/vMuB1b1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfI9N-0001C7-3R
	for lists+linux-i3c@lfdr.de; Sun, 31 May 2020 07:12:53 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfI9J-0001Be-UX
 for linux-i3c@lists.infradead.org; Sun, 31 May 2020 07:12:51 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04V79owl012583; Sun, 31 May 2020 00:12:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=7evfyXCzRvtKDBLIC1ue7XWqVmtQQW2dIOnm+0PHfmU=;
 b=GZkFNYnWREPfC3r3X+PZMByV7NxGjq6c5X2Gmn6jsnnRyfGZyLYwHw9I+lJCHoPb24wh
 RFMF1nu2BNYlu+H/TdN+gd1+Xw0OftKMSnabaMTsmaJnPw4vTBJPUl5FI5ebr/51eiYc
 wBJMOgOZDXOuT32AZb8VYQSqRe5yTpU/FS1J99+B7hR0DPpqhqeQ8NaBb9soqE0BTvft
 DnDKW2n3f1zgPkipPwRgDGLxSoecpr1y0aglQktMXDtfNrvOZgTC99n6Bc9SkLb6YQxW
 5X2aw9rZTbgLo3B5hrJYBL9GiOR1aY5iXrTTL7sCBG8dY+2tzqUuFk4P5G1K+lAPlFNf cQ== 
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2058.outbound.protection.outlook.com [104.47.44.58])
 by mx0b-0014ca01.pphosted.com with ESMTP id 31bk2xangw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 31 May 2020 00:12:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kifWNhaLcyZUHbfgTOq55e20Nuz6zANx5LLeqUDGxMYQ7vno3zYx/QgTO+h1OvZkEWtgv3cHKzWq0QbNCH833ETRE5fLorgH7AC66H8UNFER20O4s+J32H/kP3KavYesofQ6i/QoWBO1TDBT5uMtG2D9/7q9bGah0UB5AhyG/LrpMPqaQvuVTgASLKzABUnsi0trCQFOhYN/bczHkv52F6EVrsDVSdCKybapczFC7gia+MJ+8XIvG4VfAqogbV2gJniwd6+fPBAv7oHMjhrayepwOaxS2elrWpx9EnGujO0qOJngPMqEV67PM9YsXappe3b7x8Sk4getXbAzs+KnXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7evfyXCzRvtKDBLIC1ue7XWqVmtQQW2dIOnm+0PHfmU=;
 b=EQdQwkZgoAxrZB5b+Xsc483mNwaT/ZRUKvRGts8Pd8L2OQdkdiNn1XSr4WZUblSKR6TxfvW8zDC1b5JlmWB+epgCnmnajmge/ZOSfo2f+8atNzOesNoCaRR6Bm9NqK59nvWYZx9mcnSfwV9LyD6hiHD41HYCkSWVeOo8/3Vfyz0P2BSVCqzzqOHr6Q77SHPS/KrgTqXV/rnxmqsE/kg10PNmiRg1P/NfI00ACittYDcLPMECWfx/g1V6Zz/VC9x6l3CXx6Q1U7L5wITKRjOTdtq8jDOhJ3tabkUPh+mvpbhPGP+j75KrrQYUytx9JnpFnmGbHClwB3iyleT5DGSpRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 64.207.220.244) smtp.rcpttodomain=synopsys.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7evfyXCzRvtKDBLIC1ue7XWqVmtQQW2dIOnm+0PHfmU=;
 b=TGZfpGNfEw1oXUUdVphoagCLTE+cPh5bYTx9+GQO93jMKG05C4NnXnjOvYqCfF8o70Q8hTQM+mtxhwTJGfVZJ62pkB35pBmSG9g6waJ8MJgGE2DsBfrX89/2QwSjhg855cdtd+wJv1YaP5sQCIocYO4Bfaxa2pbCqkfyvI7rwc4=
Received: from MWHPR03CA0003.namprd03.prod.outlook.com (2603:10b6:300:117::13)
 by BN7PR07MB4676.namprd07.prod.outlook.com (2603:10b6:406:f2::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sun, 31 May
 2020 07:12:45 +0000
Received: from MW2NAM12FT030.eop-nam12.prod.protection.outlook.com
 (2603:10b6:300:117:cafe::7b) by MWHPR03CA0003.outlook.office365.com
 (2603:10b6:300:117::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.18 via Frontend
 Transport; Sun, 31 May 2020 07:12:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 64.207.220.244)
 smtp.mailfrom=cadence.com; synopsys.com; dkim=none (message not signed)
 header.d=none;synopsys.com; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 64.207.220.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.207.220.244; helo=wcmailrelayl01.cadence.com;
Received: from wcmailrelayl01.cadence.com (64.207.220.244) by
 MW2NAM12FT030.mail.protection.outlook.com (10.13.181.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.8 via Frontend Transport; Sun, 31 May 2020 07:12:44 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id
 04V7CdSk236261
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Sun, 31 May 2020 00:12:40 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Sun, 31 May 2020 09:12:38 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Sun, 31 May 2020 09:12:38 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 04V7CcLF006551;
 Sun, 31 May 2020 09:12:38 +0200
Received: (from pthombar@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 04V7CcYa006550;
 Sun, 31 May 2020 09:12:38 +0200
From: Parshuram Thombare <pthombar@cadence.com>
To: <bbrezillon@kernel.org>, <vitor.soares@synopsys.com>
Subject: [PATCH v8 2/7] i3c: master: use i3c_master_register only for main
 master
Date: Sun, 31 May 2020 09:12:37 +0200
Message-ID: <1590909157-6510-1-git-send-email-pthombar@cadence.com>
X-Mailer: git-send-email 2.2.2
In-Reply-To: <1590909063-6013-1-git-send-email-pthombar@cadence.com>
References: <1590909063-6013-1-git-send-email-pthombar@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:64.207.220.244; CTRY:CN; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:wcmailrelayl01.cadence.com; PTR:unused.mynethost.com;
 CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(136003)(39850400004)(36092001)(46966005)(83380400001)(356005)(70206006)(5660300002)(26005)(2616005)(8676002)(42186006)(4326008)(54906003)(478600001)(36906005)(81166007)(110136005)(2906002)(316002)(47076004)(426003)(82740400003)(336012)(8936002)(186003)(82310400002)(70586007)(86362001)(36756003)(107886003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e8905de9-bbab-4d7c-3691-08d8053203c7
X-MS-TrafficTypeDiagnostic: BN7PR07MB4676:
X-Microsoft-Antispam-PRVS: <BN7PR07MB46767428D266736FBEC5A955C18D0@BN7PR07MB4676.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0420213CCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kZ10XorpxtLNPuNQxdWa3fCKIF4nQqJkPY5+KjqkaprtSfyV8+gMr0JuVm3ExJc57GT2YrbartjT9x0SSIYv892G8Xpg20kcyslTf5sDMB/RY47cYK4Mw8asgfOy+C3hsh7NMjUf+YVLZ33/1wK1/ILm60NqW0IJWw+HrVs+3PBltBBMc9ffUqRD/LwtmvkEhZzlyoTtPlBC0+7nvn4yiL3cDeQuvdCrmh1BM7nqGE7MUTt5WdpdLhJoh02DiAes2SMAly12lIuPDZoEqCoq888KKlohKainT+qCftkxAydJAHlyoSE3oHl2mWI4w6PiTCKDj8ZzRy/RTDoRpWqfjep6o459bQiZ/UPAYDkmY2q0te5CWfQcGetTL3007YblPInMhJ+Okj7M0T5TWzxw/4bvENKwCC0Mc1PTwKA/rMU=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2020 07:12:44.2286 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8905de9-bbab-4d7c-3691-08d8053203c7
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.244];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB4676
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-31_01:2020-05-28,
 2020-05-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 adultscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 impostorscore=0
 bulkscore=0 cotscore=-2147483648 mlxscore=0 clxscore=1015 spamscore=0
 phishscore=0 suspectscore=2 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005310056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_001250_105888_3F739993 
X-CRM114-Status: GOOD (  17.55  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mparab@cadence.com, Parshuram Thombare <pthombar@cadence.com>,
 praneeth@ti.com, linux-kernel@vger.kernel.org, pgaj@cadence.com,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Removed last argument 'secondary' and restructured
i3c_master_register to move code that can be common
to i3c_secondary_master_register to separate function
i3c_master_init.

Signed-off-by: Parshuram Thombare <pthombar@cadence.com>
---
 drivers/i3c/master.c                 | 74 +++++++++++++++++-----------
 drivers/i3c/master/dw-i3c-master.c   |  4 +-
 drivers/i3c/master/i3c-master-cdns.c |  4 +-
 include/linux/i3c/master.h           |  7 ++-
 4 files changed, 51 insertions(+), 38 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5f4bd52121fe..574c3603db38 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1613,7 +1613,7 @@ static void i3c_master_detach_free_devs(struct i3c_master_controller *master)
 }
 
 /**
- * i3c_master_bus_init() - initialize an I3C bus
+ * i3c_primary_master_bus_init() - initialize an I3C bus
  * @master: main master initializing the bus
  *
  * This function is following all initialisation steps described in the I3C
@@ -1642,7 +1642,7 @@ static void i3c_master_detach_free_devs(struct i3c_master_controller *master)
  *
  * Return: a 0 in case of success, an negative error code otherwise.
  */
-static int i3c_master_bus_init(struct i3c_master_controller *master)
+static int i3c_primary_master_bus_init(struct i3c_master_controller *master)
 {
 	enum i3c_addr_slot_status status;
 	struct i2c_dev_boardinfo *i2cboardinfo;
@@ -2391,31 +2391,10 @@ static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
 	return 0;
 }
 
-/**
- * i3c_master_register() - register an I3C master
- * @master: master used to send frames on the bus
- * @parent: the parent device (the one that provides this I3C master
- *	    controller)
- * @ops: the master controller operations
- * @secondary: true if you are registering a secondary master. Will return
- *	       -ENOTSUPP if set to true since secondary masters are not yet
- *	       supported
- *
- * This function takes care of everything for you:
- *
- * - creates and initializes the I3C bus
- * - populates the bus with static I2C devs if @parent->of_node is not
- *   NULL
- * - registers all I3C devices added by the controller during bus
- *   initialization
- * - registers the I2C adapter and all I2C devices
- *
- * Return: 0 in case of success, a negative error code otherwise.
- */
-int i3c_master_register(struct i3c_master_controller *master,
-			struct device *parent,
-			const struct i3c_master_controller_ops *ops,
-			bool secondary)
+static int i3c_master_init(struct i3c_master_controller *master,
+			   struct device *parent,
+			   const struct i3c_master_controller_ops *ops,
+			   bool secondary)
 {
 	struct i3c_bus *i3cbus = i3c_master_get_bus(master);
 	enum i3c_bus_mode mode = I3C_BUS_MODE_PURE;
@@ -2478,10 +2457,46 @@ int i3c_master_register(struct i3c_master_controller *master,
 		goto err_put_dev;
 	}
 
-	ret = i3c_master_bus_init(master);
+	ret = i3c_primary_master_bus_init(master);
 	if (ret)
 		goto err_put_dev;
 
+	return 0;
+
+err_put_dev:
+	put_device(&master->dev);
+
+	return ret;
+}
+
+/**
+ * i3c_primary_master_register() - register an I3C master
+ * @master: master used to send frames on the bus
+ * @parent: the parent device (the one that provides this I3C master
+ *	    controller)
+ * @ops: the master controller operations
+ *
+ * This function takes care of everything for you:
+ *
+ * - creates and initializes the I3C bus
+ * - populates the bus with static I2C devs if @parent->of_node is not
+ *   NULL
+ * - registers all I3C devices added by the controller during bus
+ *   initialization
+ * - registers the I2C adapter and all I2C devices
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int i3c_primary_master_register(struct i3c_master_controller *master,
+				struct device *parent,
+				const struct i3c_master_controller_ops *ops)
+{
+	int ret;
+
+	ret = i3c_master_init(master, parent, ops, false);
+	if (ret)
+		return ret;
+
 	ret = device_add(&master->dev);
 	if (ret)
 		goto err_cleanup_bus;
@@ -2511,12 +2526,11 @@ int i3c_master_register(struct i3c_master_controller *master,
 err_cleanup_bus:
 	i3c_master_bus_cleanup(master);
 
-err_put_dev:
 	put_device(&master->dev);
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(i3c_master_register);
+EXPORT_SYMBOL_GPL(i3c_primary_master_register);
 
 /**
  * i3c_master_unregister() - unregister an I3C master
diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 1d83c97431c7..47d47aa97569 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1157,8 +1157,8 @@ static int dw_i3c_probe(struct platform_device *pdev)
 	master->maxdevs = ret >> 16;
 	master->free_pos = GENMASK(master->maxdevs - 1, 0);
 
-	ret = i3c_master_register(&master->base, &pdev->dev,
-				  &dw_mipi_i3c_ops, false);
+	ret = i3c_primary_master_register(&master->base, &pdev->dev,
+					  &dw_mipi_i3c_ops);
 	if (ret)
 		goto err_assert_rst;
 
diff --git a/drivers/i3c/master/i3c-master-cdns.c b/drivers/i3c/master/i3c-master-cdns.c
index 8889a4fdb454..c7db02543e33 100644
--- a/drivers/i3c/master/i3c-master-cdns.c
+++ b/drivers/i3c/master/i3c-master-cdns.c
@@ -1614,8 +1614,8 @@ static int cdns_i3c_master_probe(struct platform_device *pdev)
 	writel(MST_INT_IBIR_THR, master->regs + MST_IER);
 	writel(DEVS_CTRL_DEV_CLR_ALL, master->regs + DEVS_CTRL);
 
-	ret = i3c_master_register(&master->base, &pdev->dev,
-				  &cdns_i3c_master_ops, false);
+	ret = i3c_primary_master_register(&master->base, &pdev->dev,
+					  &cdns_i3c_master_ops);
 	if (ret)
 		goto err_disable_sysclk;
 
diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
index f13fd8b1dd79..a19d0ad4de8a 100644
--- a/include/linux/i3c/master.h
+++ b/include/linux/i3c/master.h
@@ -531,10 +531,9 @@ int i3c_master_do_daa(struct i3c_master_controller *master);
 int i3c_master_set_info(struct i3c_master_controller *master,
 			const struct i3c_device_info *info);
 
-int i3c_master_register(struct i3c_master_controller *master,
-			struct device *parent,
-			const struct i3c_master_controller_ops *ops,
-			bool secondary);
+int i3c_primary_master_register(struct i3c_master_controller *master,
+				struct device *parent,
+				const struct i3c_master_controller_ops *ops);
 int i3c_master_unregister(struct i3c_master_controller *master);
 
 /**
-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
