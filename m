Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952E71E9613
	for <lists+linux-i3c@lfdr.de>; Sun, 31 May 2020 09:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyYLlorsJzPsOdqE/3z+JY2yrzGXKfhd1UCwOS3KYX4=; b=brUcPoRM+ZxnEq
	0hY9++p2vCVoYc8MZUh9A/7Liix4dWGMsj7tNRVWPoWUAGnOIfOErQTismMTbvIxGYI6bDnrNI08X
	SfQ8QLJYAAY1VaXxf2t9bvAy7ZAgm9sjDeexEoINsOXGfOOvnvSqUevHCPGKjNsH/7phqV0LZbZsy
	WMoL9QvLmw9GFmvTdYa2aKIsTmAU7WC4OBq1f7hhi5aWy5a52dJa5UaqvS0yfUvbl/jgdPhi/hU+K
	v+JAiOW2Wa0k5pe8hH++q/bb4a59vO3B6fz15KGE4HmPNfMfgDcHZTRVQo6V5aitQvX8hFpNcEoyU
	h38P6xeTO/B7EHXX55Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfI9y-0001FS-BI
	for lists+linux-i3c@lfdr.de; Sun, 31 May 2020 07:13:30 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfI9w-0001F5-1k
 for linux-i3c@lists.infradead.org; Sun, 31 May 2020 07:13:29 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04V7CfCw011509; Sun, 31 May 2020 00:13:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=pULOn66Q1RwhbilaMJYQxajY6i0dVIMkT4Mj//eyClA=;
 b=Pagymx2xQIxTMGsVKuruwmOIbWtf8G/CjKBK38bfdpsf53b3a/jJ0R2muccHCYU3x8d0
 Nk1rIQjlW+Qmlzz79mn8eGunb29rGUIXIl6LwYhsn9gNhjMno1cQkgyBb7P1j/kWogoH
 7HrZ/xlwRI0WmWKhJDmbMkOznYrehtN2XdKFzY34RT/jDvP3DK7rTn45NjLGKxomuTxO
 4jyxKEaDh8LxW2mE6YfICzHiKpJghzkderousVLDDcTZcuimbmj3COal9lNYVhTkzTOF
 n2TGlX9Uu1JqsaFJmMrAuE+4z/lOTeUYg1QmOYnCP9L7A3UMIP0P21lHQQeP3Lb9/6Zd 9A== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
 by mx0a-0014ca01.pphosted.com with ESMTP id 31bm1wjfvk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 31 May 2020 00:13:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+ebMjjvB/nNENTiNL+hfMNuIbUT5U9Ir14334Bc8WTN9qZi90NVpjwrtj0Fk01atUD/W1W/OmDLr1AubFxzOst8vRpBOyx6OLX5MYT42b4lrW70UiPLBK3/mb8KldRbNNDSllGBRc8FcX6uUI5Xcf/j2jRGSxYFDC4T80oMa88bnKdVzWidM7LzE6STX6kFrAVkqgytdTREHwg1l85117KQBnd0YAlvEClQoGgYzHcGB/Ph4nEDsPqir922Nk5qKwlQ+HB0MJAqN/CGf1OvDKhr2/OD7EA9fjdFrKyUAhpF0f1AbN+7tFA25ZE0s4zWFWJKpKrbdAxu+Bi6/3TZgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pULOn66Q1RwhbilaMJYQxajY6i0dVIMkT4Mj//eyClA=;
 b=iCs6NVBZAFn2ZgfMqjEvDCMJm/0jcrC1tWg+RZ3n6MJYbi9uzfaLXstQYpK4crpGPvWdBYmCZTiQVck6JThwPDH7RztpMLCLfDwh72uURsfiOWgO3ZtdDnfvcVyjckWHf9aMNcQsAJX/M+sIUQS134IG+mzcU52dPgVIzche2D0scOQ8FAticuJZURHdqvz8P31aBOtWxGHc9z49T1YJCFDqehZAhE4buQQpCNWJkfV7+wBYdlKaaY3++msLD2gDlwpQpM05/w9GfigV678GMnzQuJ22tw3KRMOhH37+TThGoKCHZ+WH8sOIKyuOGUtwQ9OxQTJFodn2bXYKQAIy9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 199.43.4.23) smtp.rcpttodomain=synopsys.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pULOn66Q1RwhbilaMJYQxajY6i0dVIMkT4Mj//eyClA=;
 b=6bDoapnUXzsHOus/TsSRvS59YovLPNIdGOmHxsjkFQu1+GkKvMY8cu+M/+R/KfKAygWoyS2c8xuVPDC1zUlBYmceTo3oyZYyRyR24p9IFk2KB4pXG8GkZzyI/XbHUeGj8yFyRQazsI2AP2GYTQbcDSoWTIMOB4/1laRJDOVBzM4=
Received: from DM6PR02CA0108.namprd02.prod.outlook.com (2603:10b6:5:1f4::49)
 by BN7PR07MB5169.namprd07.prod.outlook.com (2603:10b6:408:25::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sun, 31 May
 2020 07:13:25 +0000
Received: from DM6NAM12FT054.eop-nam12.prod.protection.outlook.com
 (2603:10b6:5:1f4:cafe::ae) by DM6PR02CA0108.outlook.office365.com
 (2603:10b6:5:1f4::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Sun, 31 May 2020 07:13:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 199.43.4.23)
 smtp.mailfrom=cadence.com; synopsys.com; dkim=none (message not signed)
 header.d=none;synopsys.com; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 199.43.4.23 as permitted sender) receiver=protection.outlook.com;
 client-ip=199.43.4.23; helo=rmmaillnx1.cadence.com;
Received: from rmmaillnx1.cadence.com (199.43.4.23) by
 DM6NAM12FT054.mail.protection.outlook.com (10.13.178.109) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.8 via Frontend Transport; Sun, 31 May 2020 07:13:24 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by rmmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 04V7DJvO003454
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Sun, 31 May 2020 03:13:21 -0400
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Sun, 31 May 2020 09:13:19 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Sun, 31 May 2020 09:13:19 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 04V7DJcV006692;
 Sun, 31 May 2020 09:13:19 +0200
Received: (from pthombar@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 04V7DJ6D006691;
 Sun, 31 May 2020 09:13:19 +0200
From: Parshuram Thombare <pthombar@cadence.com>
To: <bbrezillon@kernel.org>, <vitor.soares@synopsys.com>
Subject: [PATCH v8 3/7] i3c: master: add i3c_secondary_master_register
Date: Sun, 31 May 2020 09:13:18 +0200
Message-ID: <1590909198-6650-1-git-send-email-pthombar@cadence.com>
X-Mailer: git-send-email 2.2.2
In-Reply-To: <1590909063-6013-1-git-send-email-pthombar@cadence.com>
References: <1590909063-6013-1-git-send-email-pthombar@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.43.4.23; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:rmmaillnx1.cadence.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(376002)(39850400004)(136003)(396003)(36092001)(46966005)(70586007)(8676002)(70206006)(42186006)(478600001)(2906002)(186003)(36906005)(316002)(83380400001)(86362001)(54906003)(110136005)(107886003)(426003)(8936002)(47076004)(82740400003)(82310400002)(5660300002)(336012)(2616005)(26005)(4326008)(356005)(81166007)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 878af091-bbeb-430a-9a71-08d805321bbd
X-MS-TrafficTypeDiagnostic: BN7PR07MB5169:
X-Microsoft-Antispam-PRVS: <BN7PR07MB5169B5C65182F5967D01EB9DC18D0@BN7PR07MB5169.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0420213CCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xbsEGlgSgWsCAAABM8JUEko1POW0nQs/T6vtglQ4Mx9pLGcBofHYO5wdHGvM/ieKldsGR9p897LhdalEaLpqPpgg1Ld7dGC85JNxwnj+HGl4d/GzuLjdPMU9AoxcF4iIFQYwCyjKhxFKnp6ujIYmh2sR5qeZY7m7CU/q5ugwGphLwkZanBRCrj3koGVi9PnbQPDbung7UqkHRQ0FhlRBJmtxQ6NfJXs9O2mbT3zIfiqvxmAGG+1WEn2ixYetzCdVNP6qxLdQKkO4sDfUVrZfC+Gk5XxBNRtJ1XEBwXcqAJ1KgGtc6SiAQ9wLazDypVqSioi3ayBFJIsab9t+sRCYkbplROuta05cmx2t1IK5g3ogAdkUZ0W7W37/PFUJjeq4+D4tLPGv73KV8S083CMYf7Ha+Hd0ZDMZkzLMuwLvco4=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2020 07:13:24.4099 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 878af091-bbeb-430a-9a71-08d805321bbd
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[199.43.4.23];
 Helo=[rmmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB5169
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-31_01:2020-05-28,
 2020-05-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 malwarescore=0
 mlxlogscore=999 suspectscore=2 phishscore=0 adultscore=0
 cotscore=-2147483648 spamscore=0 priorityscore=1501 bulkscore=0 mlxscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005310057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_001328_099017_0755E81B 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
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

add i3c_secondary_master_register which is used
to register secondary masters.

Signed-off-by: Parshuram Thombare <pthombar@cadence.com>
---
 drivers/i3c/master.c       | 154 ++++++++++++++++++++++++++++++++++++-
 include/linux/i3c/master.h |   3 +
 2 files changed, 156 insertions(+), 1 deletion(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 574c3603db38..62f39997a6db 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1768,6 +1768,90 @@ static int i3c_primary_master_bus_init(struct i3c_master_controller *master)
 	return ret;
 }
 
+/**
+ * i3c_secondary_master_bus_init() - initialize an I3C bus for secondary
+ * master
+ * @master: secondary master initializing the bus
+ *
+ * This function does
+ *
+ * 1. Attach I2C devs to the master
+ *
+ * 2. Call &i3c_master_controller_ops->bus_init() method to initialize
+ *    the master controller. That's usually where the bus mode is selected
+ *    (pure bus or mixed fast/slow bus)
+ *
+ * Once this is done, I2C devices should be usable.
+ *
+ * Return: a 0 in case of success, an negative error code otherwise.
+ */
+static int i3c_secondary_master_bus_init(struct i3c_master_controller *master)
+{
+	enum i3c_addr_slot_status status;
+	struct i2c_dev_boardinfo *i2cboardinfo;
+	struct i2c_dev_desc *i2cdev;
+	int ret;
+
+	/*
+	 * First attach all devices with static definitions provided by the
+	 * FW.
+	 */
+	list_for_each_entry(i2cboardinfo, &master->boardinfo.i2c, node) {
+		status = i3c_bus_get_addr_slot_status(&master->bus,
+						      i2cboardinfo->base.addr);
+		if (status != I3C_ADDR_SLOT_FREE) {
+			ret = -EBUSY;
+			goto err_detach_devs;
+		}
+
+		i3c_bus_set_addr_slot_status(&master->bus,
+					     i2cboardinfo->base.addr,
+					     I3C_ADDR_SLOT_I2C_DEV);
+
+		i2cdev = i3c_master_alloc_i2c_dev(master, i2cboardinfo);
+		if (IS_ERR(i2cdev)) {
+			ret = PTR_ERR(i2cdev);
+			goto err_detach_devs;
+		}
+
+		ret = i3c_master_attach_i2c_dev(master, i2cdev);
+		if (ret) {
+			i3c_master_free_i2c_dev(i2cdev);
+			goto err_detach_devs;
+		}
+	}
+
+	/*
+	 * Now execute the controller specific ->bus_init() routine, which
+	 * might configure its internal logic to match the bus limitations.
+	 */
+	ret = master->ops->bus_init(master);
+	if (ret)
+		goto err_detach_devs;
+
+	/*
+	 * The master device should have been instantiated in ->bus_init(),
+	 * complain if this was not the case.
+	 */
+	if (!master->this) {
+		dev_err(&master->dev,
+			"master_set_info() was not called in ->bus_init()\n");
+		ret = -EINVAL;
+		goto err_bus_cleanup;
+	}
+
+	return 0;
+
+err_bus_cleanup:
+	if (master->ops->bus_cleanup)
+		master->ops->bus_cleanup(master);
+
+err_detach_devs:
+	i3c_master_detach_free_devs(master);
+
+	return ret;
+}
+
 static void i3c_master_bus_cleanup(struct i3c_master_controller *master)
 {
 	if (master->ops->bus_cleanup)
@@ -2457,7 +2541,10 @@ static int i3c_master_init(struct i3c_master_controller *master,
 		goto err_put_dev;
 	}
 
-	ret = i3c_primary_master_bus_init(master);
+	if (secondary)
+		ret = i3c_secondary_master_bus_init(master);
+	else
+		ret = i3c_primary_master_bus_init(master);
 	if (ret)
 		goto err_put_dev;
 
@@ -2532,6 +2619,71 @@ int i3c_primary_master_register(struct i3c_master_controller *master,
 }
 EXPORT_SYMBOL_GPL(i3c_primary_master_register);
 
+/**
+ * i3c_secondary_master_register() - register an I3C secondary master
+ * @master: master used to send frames on the bus
+ * @parent: the parent device (the one that provides this I3C master
+ *	    controller)
+ * @ops: the master controller operations
+ *
+ * This function does minimal required initialization for secondary
+ * master, rest functionality like creating and registering I2C
+ * and I3C devices is done in defslvs processing.
+ *
+ *  i3c_secondary_master_register() does following things -
+ * - creates and initializes the I3C bus
+ * - populates the bus with static I2C devs if @parent->of_node is not
+ *   NULL
+ *   initialization
+ * - allocate memory for defslvs_data.devs, which is used to receive
+ *   defslvs list
+ * - create I3C device representing this master
+ * - registers the I2C adapter and all I2C devices
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int i3c_secondary_master_register(struct i3c_master_controller *master,
+				  struct device *parent,
+				  const struct i3c_master_controller_ops *ops)
+{
+	int ret;
+
+	ret = i3c_master_init(master, parent, ops, true);
+	if (ret)
+		return ret;
+
+	ret = device_add(&master->dev);
+	if (ret)
+		goto err_cleanup_bus;
+
+	/*
+	 * Expose our I3C bus as an I2C adapter so that I2C devices are exposed
+	 * through the I2C subsystem.
+	 */
+	ret = i3c_master_i2c_adapter_init(master);
+	if (ret)
+		goto err_del_dev;
+
+	/*
+	 * We're done initializing the bus and the controller, we can now
+	 * register I3C devices from defslvs list.
+	 */
+	master->init_done = true;
+
+	return 0;
+
+err_del_dev:
+	device_del(&master->dev);
+
+err_cleanup_bus:
+	i3c_master_bus_cleanup(master);
+
+	put_device(&master->dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(i3c_secondary_master_register);
+
 /**
  * i3c_master_unregister() - unregister an I3C master
  * @master: master used to send frames on the bus
diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
index a19d0ad4de8a..c3d05f66fceb 100644
--- a/include/linux/i3c/master.h
+++ b/include/linux/i3c/master.h
@@ -534,6 +534,9 @@ int i3c_master_set_info(struct i3c_master_controller *master,
 int i3c_primary_master_register(struct i3c_master_controller *master,
 				struct device *parent,
 				const struct i3c_master_controller_ops *ops);
+int i3c_secondary_master_register(struct i3c_master_controller *master,
+				  struct device *parent,
+				  const struct i3c_master_controller_ops *ops);
 int i3c_master_unregister(struct i3c_master_controller *master);
 
 /**
-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
