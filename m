Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1625E4F836
	for <lists+linux-i3c@lfdr.de>; Sat, 22 Jun 2019 22:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Tlf2kjD+lBL1bgutxhPS02uqxJ23fdA2ByUaGHgX0Y=; b=uLZgyKE0A78oxs
	xNI1Dzc9eSAYKEZ6tevalIGBkxpfNx0eXVYR+1GZ3aRB6rRPq5Dy6fssgknfryZp8OGE0Bh6XNa4f
	2l7k3JEOQIe9JglHjpKT1zBnJtmpEEKZku2FsEBx+Xy/k7AT+Hbv8+3t9hyvAsL03hXR6ODtvq06/
	QRx3KNvKB8VQWQlsb1EPmWCGFUbBqwcBexox0lonh3y+W6Sx/6pQORS4G3NnPudTaCO0gYNst9IQn
	jmM4LFXKzwuLXT++M9OXM+QbLqYC4d7hGzH03rkOXQNV6ocEkJp08QFxDIgIuVS169C8zk+HxFLDb
	2+vn95NkIzfV3sOiItrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hen3T-0007B6-QN
	for lists+linux-i3c@lfdr.de; Sat, 22 Jun 2019 20:56:11 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hen3P-0007Ad-Ff
 for linux-i3c@lists.infradead.org; Sat, 22 Jun 2019 20:56:10 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5MKrVGk030829; Sat, 22 Jun 2019 13:56:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=QJsVebqvllz26avF+zCA0+mOWFO7SIr8bXxrbkjt9yk=;
 b=YDwwdC4iHSS09iDVp5IoA1BfCaPFdYNWR5M/qIaX5CXcAfqojhu3YOruxkEihJNR2jVI
 50JBTVfk8mKSCp7fGatyVnMe82lAp9iGUzGJjVmDdp2yOgbpcXnYmT1AB7J9d2z6dkoO
 xGSMWok37uNyRn6+iFrQr8Xec5lRM+Zvw8NXPIYlRVNAru5BZksJqQQcRojgXBL9BFlz
 qSXCeTxttUFUGHKV4cnm+YrG3P8TZlXOxVjbIYUT2fUvajSzNmycGw0mGrHrnkvjLvnN
 wSftcqOWZRujZdXEwo2SbWy5QfNr8H/mdO7v6FYb2yL2QYTT837JUezFBHoNJTDap1Kz Zg== 
Authentication-Results: cadence.com;
	spf=pass smtp.mailfrom=pgaj@cadence.com
Received: from nam03-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2051.outbound.protection.outlook.com [104.47.41.51])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2t9gvs1cee-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 22 Jun 2019 13:56:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJsVebqvllz26avF+zCA0+mOWFO7SIr8bXxrbkjt9yk=;
 b=rQLi3FygebED39bTupjz2havWIkG3HUsS4UO1OtdUxOCVdkILwllWhEYxF69iN5aHhCkXzTs6kw4Qc6DchBUUUZ//2d8S4e+smVYznTyToZBkJSZWjk53zDQNsu3I8fQF29zyHB77rmsmOuZuuBXA9TcFWvXpDEPN8quulLoAxQ=
Received: from BYAPR07CA0044.namprd07.prod.outlook.com (20.177.126.21) by
 DM6PR07MB6826.namprd07.prod.outlook.com (20.179.70.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Sat, 22 Jun 2019 20:56:02 +0000
Received: from BY2NAM05FT010.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e52::208) by BYAPR07CA0044.outlook.office365.com
 (2603:10b6:a03:60::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2008.16 via Frontend
 Transport; Sat, 22 Jun 2019 20:56:01 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx1.cadence.com (158.140.1.28) by
 BY2NAM05FT010.mail.protection.outlook.com (10.152.100.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.6 via Frontend Transport; Sat, 22 Jun 2019 20:56:01 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 x5MKtxQu004225
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Sat, 22 Jun 2019 13:56:00 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Sat, 22 Jun 2019 22:55:58 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Sat, 22 Jun 2019 22:55:58 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x5MKtwEc009986;
 Sat, 22 Jun 2019 21:55:58 +0100
Received: (from pgaj@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x5MKtwcI009985;
 Sat, 22 Jun 2019 21:55:58 +0100
From: Przemyslaw Gaj <pgaj@cadence.com>
To: <bbrezillon@kernel.org>
Subject: [PATCH v5 4/7] i3c: Add support for mastership request to I3C
 subsystem
Date: Sat, 22 Jun 2019 21:55:02 +0100
Message-ID: <1561236905-8901-5-git-send-email-pgaj@cadence.com>
X-Mailer: git-send-email 2.4.5
In-Reply-To: <1561236905-8901-1-git-send-email-pgaj@cadence.com>
References: <1561236905-8901-1-git-send-email-pgaj@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(2980300002)(199004)(189003)(36092001)(51416003)(50226002)(50466002)(26005)(47776003)(76176011)(336012)(48376002)(2616005)(76130400001)(86362001)(486006)(426003)(126002)(476003)(8676002)(246002)(186003)(26826003)(107886003)(446003)(478600001)(70206006)(70586007)(36756003)(4326008)(5660300002)(87636003)(14444005)(8936002)(6916009)(53946003)(11346002)(2906002)(30864003)(42186006)(2351001)(6666004)(16586007)(316002)(54906003)(356004)(5024004)(305945005)(7636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR07MB6826; H:sjmaillnx1.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.cadence.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd4dcb6b-ac32-4b9d-b62e-08d6f75408b2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:DM6PR07MB6826; 
X-MS-TrafficTypeDiagnostic: DM6PR07MB6826:
X-Microsoft-Antispam-PRVS: <DM6PR07MB68268323D9EF1995451A4C9EC2E60@DM6PR07MB6826.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0076F48C8A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: lMW3rRkGUtHsGBdMIDa4nnugJorxQlpMOoIMngYssvdBv7plWKHJUEaA+MfvOR+VXBWZ7cQ6M4q43jAv3enA5VENUW40W7oQVJszO56fl/qfBpn7zGN5IUxe4SAPblk2LCj4FOPEvswDnHs0Hilqt/WtlXP0Dip0FB8NK72001munM4bsAih0QfavUVCpcDk9C1b3Y5/drwDbJ+njnYOX+oXdJzNk/cwfKG7kUX+iE6Ar3DYs0vV6JkDXvGuBlOEH1UTJUa3V/aO8bQDwOnQYHQILN6/9QXRUovLlgIHU4NeBDDVQKAi652reZZtHL9IoODMrLpeec7BH+l7YaHRVIZTYWUtaBESHlKx7izyxaNV117b3cjhinDXfnPx/Bwmo6enyXs5fQl5SzfbT3ZiK4DWODrO/xydHYF01ebnT6c=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2019 20:56:01.4156 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cd4dcb6b-ac32-4b9d-b62e-08d6f75408b2
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB6826
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:spf.smktg.jp
 include:_spf.salesforce.com
 include:mktomail.com include:spf-0014ca01.pphosted.com
 include:spf.protection.outlook.com include:auth.msgapp.com
 include:spf.mandrillapp.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-22_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 malwarescore=0 suspectscore=4 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906220190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_135607_641213_E424481D 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-i3c@lists.infradead.org, agolec@cadence.com,
 Przemyslaw Gaj <pgaj@cadence.com>, rafalc@cadence.com,
 vitor.soares@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This patch adds support for mastership request to I3C subsystem.

Mastership event is enabled globally.

Mastership is requested automatically when device driver
tries to transfer data using master controller in slave mode.

There is still some limitation:
- I2C devices are registered on secondary master side if boardinfo
entry matching the info transmitted through the DEFSLVS frame.

Signed-off-by: Przemyslaw Gaj <pgaj@cadence.com>

---

Main changes between v4 and v5:
- Add function to test if master owns the bus
- Add i3c_secondary_master_register() function
- Add populate_bus() hook to populate the bus after mastership takeover
- Rework device information retrieval to allow adding partialy discovered
devices

Main changes between v3 and v4:
- Add i3c_master_acquire_bus_ownership to acquire the bus
- Refactored the code

Main changes between v2 and v3:
- Add i3c_bus_downgrade_maintenance_lock() for downgrading the bus
lock from maintenance to normal use
- Add additional fields to i2c_dev_desc for DEFSLVS purpose (addr, lvr)
- Add i3c_master_register_new_i2c_devs() function to register I2C devices
- Reworked I2C devices registration on secondary master side

Changes in v2:
- Add mastership disable event hook
- Changed name of mastership enable event hook
- Add function to test if master owns the bus
- Removed op_mode
- Changed parameter of i3c_master_get_accmst_locked, no need to
pass full i3c_device_info
- Changed name of mastership enable event hook
- Add function to test if master owns the bus
- Removed op_mode
- Changed parameter of i3c_master_get_accmst_locked, no need to
pass full i3c_device_info
- Removed redundant DEFSLVS command before GETACCMST
- Add i3c_master_bus_takeover function. There is a need to lock
the bus before adding devices and no matter of the controller
devices have to be added after mastership takeover.
- Add device registration during initialization on secondary master
side. Devices received by DEFSLVS (if occured). If not, device
initialization is deffered untill next mastership request.
---
 drivers/i3c/device.c       |  26 ++
 drivers/i3c/internals.h    |   4 +
 drivers/i3c/master.c       | 588 ++++++++++++++++++++++++++++++++++++++-------
 include/linux/i3c/master.h |  34 ++-
 4 files changed, 563 insertions(+), 89 deletions(-)

diff --git a/drivers/i3c/device.c b/drivers/i3c/device.c
index 69cc040..b60f637 100644
--- a/drivers/i3c/device.c
+++ b/drivers/i3c/device.c
@@ -43,7 +43,13 @@ int i3c_device_do_priv_xfers(struct i3c_device *dev,
 	}
 
 	i3c_bus_normaluse_lock(dev->bus);
+	ret = i3c_master_acquire_bus_ownership(dev->desc->common.master);
+	if (ret)
+		goto err_unlock_bus;
+
 	ret = i3c_dev_do_priv_xfers_locked(dev->desc, xfers, nxfers);
+
+err_unlock_bus:
 	i3c_bus_normaluse_unlock(dev->bus);
 
 	return ret;
@@ -114,11 +120,17 @@ int i3c_device_enable_ibi(struct i3c_device *dev)
 	int ret = -ENOENT;
 
 	i3c_bus_normaluse_lock(dev->bus);
+	ret = i3c_master_acquire_bus_ownership(dev->desc->common.master);
+	if (ret)
+		goto err_unlock_bus;
+
 	if (dev->desc) {
 		mutex_lock(&dev->desc->ibi_lock);
 		ret = i3c_dev_enable_ibi_locked(dev->desc);
 		mutex_unlock(&dev->desc->ibi_lock);
 	}
+
+err_unlock_bus:
 	i3c_bus_normaluse_unlock(dev->bus);
 
 	return ret;
@@ -145,11 +157,17 @@ int i3c_device_request_ibi(struct i3c_device *dev,
 		return -EINVAL;
 
 	i3c_bus_normaluse_lock(dev->bus);
+	ret = i3c_master_acquire_bus_ownership(dev->desc->common.master);
+	if (ret)
+		goto err_unlock_bus;
+
 	if (dev->desc) {
 		mutex_lock(&dev->desc->ibi_lock);
 		ret = i3c_dev_request_ibi_locked(dev->desc, req);
 		mutex_unlock(&dev->desc->ibi_lock);
 	}
+
+err_unlock_bus:
 	i3c_bus_normaluse_unlock(dev->bus);
 
 	return ret;
@@ -166,12 +184,20 @@ EXPORT_SYMBOL_GPL(i3c_device_request_ibi);
  */
 void i3c_device_free_ibi(struct i3c_device *dev)
 {
+	int ret;
+
 	i3c_bus_normaluse_lock(dev->bus);
+	ret = i3c_master_acquire_bus_ownership(dev->desc->common.master);
+	if (ret)
+		goto err_unlock_bus;
+
 	if (dev->desc) {
 		mutex_lock(&dev->desc->ibi_lock);
 		i3c_dev_free_ibi_locked(dev->desc);
 		mutex_unlock(&dev->desc->ibi_lock);
 	}
+
+err_unlock_bus:
 	i3c_bus_normaluse_unlock(dev->bus);
 }
 EXPORT_SYMBOL_GPL(i3c_device_free_ibi);
diff --git a/drivers/i3c/internals.h b/drivers/i3c/internals.h
index 86b7b44..cdfc5bf 100644
--- a/drivers/i3c/internals.h
+++ b/drivers/i3c/internals.h
@@ -14,6 +14,10 @@ extern struct bus_type i3c_bus_type;
 
 void i3c_bus_normaluse_lock(struct i3c_bus *bus);
 void i3c_bus_normaluse_unlock(struct i3c_bus *bus);
+void i3c_bus_maintenance_lock(struct i3c_bus *bus);
+void i3c_bus_maintenance_unlock(struct i3c_bus *bus);
+int i3c_master_acquire_bus_ownership(struct i3c_master_controller *master);
+
 
 int i3c_dev_do_priv_xfers_locked(struct i3c_dev_desc *dev,
 				 struct i3c_priv_xfer *xfers,
diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index cbace14..3b44e66 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -93,6 +93,18 @@ void i3c_bus_normaluse_unlock(struct i3c_bus *bus)
 	up_read(&bus->lock);
 }
 
+/*
+ * i3c_bus_downgrade_maintenance_lock - Downgrade the bus lock to normal
+ * operation
+ *
+ * Should be called when a maintenance operation is done and normal
+ * operation is planned. See i3c_bus_maintenance_lock() and
+ * i3c_bus_normaluse_lock() for more details.
+ */
+static void i3c_bus_downgrade_maintenance_lock(struct i3c_bus *bus)
+{
+	downgrade_write(&bus->lock);
+}
 static struct i3c_master_controller *dev_to_i3cmaster(struct device *dev)
 {
 	return container_of(dev, struct i3c_master_controller, dev);
@@ -341,6 +353,22 @@ static int i3c_device_probe(struct device *dev)
 	return driver->probe(i3cdev);
 }
 
+static int
+i3c_master_enable_mr_events_locked(struct i3c_master_controller *master)
+{
+	if (!master->ops->enable_mr_events)
+		return -ENOTSUPP;
+
+	return master->ops->enable_mr_events(master);
+}
+
+static void i3c_master_disable_mr_events(struct i3c_master_controller *master)
+{
+	if (!master->ops->disable_mr_events)
+		return;
+
+	master->ops->disable_mr_events(master);
+}
 static int i3c_device_remove(struct device *dev)
 {
 	struct i3c_device *i3cdev = dev_to_i3cdev(dev);
@@ -462,6 +490,42 @@ static int i3c_bus_init(struct i3c_bus *i3cbus)
 	return 0;
 }
 
+static int
+i3c_master_request_mastership_locked(struct i3c_master_controller *master)
+{
+	if (WARN_ON(master->init_done &&
+	    !rwsem_is_locked(&master->bus.lock)))
+		return -EINVAL;
+
+	if (!master->ops->request_mastership)
+		return -ENOTSUPP;
+
+	return master->ops->request_mastership(master);
+}
+
+static int i3c_master_owns_bus(struct i3c_master_controller *master)
+{
+	return (master->bus.cur_master == master->this);
+}
+
+int i3c_master_acquire_bus_ownership(struct i3c_master_controller *master)
+{
+	int ret;
+
+	if (!i3c_master_owns_bus(master)) {
+		i3c_bus_normaluse_unlock(&master->bus);
+		i3c_bus_maintenance_lock(&master->bus);
+
+		ret = i3c_master_request_mastership_locked(master);
+		if (ret) {
+			i3c_bus_maintenance_unlock(&master->bus);
+			return ret;
+		}
+		i3c_bus_downgrade_maintenance_lock(&master->bus);
+	}
+
+	return 0;
+}
 static const char * const i3c_bus_mode_strings[] = {
 	[I3C_BUS_MODE_PURE] = "pure",
 	[I3C_BUS_MODE_MIXED_FAST] = "mixed-fast",
@@ -636,6 +700,22 @@ i3c_master_alloc_i2c_dev(struct i3c_master_controller *master,
 	return dev;
 }
 
+static struct i2c_dev_desc *
+i3c_master_alloc_i2c_dev_no_boardinfo(struct i3c_master_controller *master,
+				      u16 addr, u8 lvr)
+{
+	struct i2c_dev_desc *dev;
+
+	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
+	if (!dev)
+		return ERR_PTR(-ENOMEM);
+
+	dev->common.master = master;
+	dev->addr = addr;
+	dev->lvr = lvr;
+
+	return dev;
+}
 static void *i3c_ccc_cmd_dest_init(struct i3c_ccc_cmd_dest *dest, u8 addr,
 				   u16 payloadlen)
 {
@@ -705,6 +785,8 @@ i3c_master_find_i2c_dev_by_addr(const struct i3c_master_controller *master,
 	struct i2c_dev_desc *dev;
 
 	i3c_bus_for_each_i2cdev(&master->bus, dev) {
+		if (!dev->boardinfo)
+			continue;
 		if (dev->boardinfo->base.addr == addr)
 			return dev;
 	}
@@ -1478,7 +1560,8 @@ i3c_master_register_new_i3c_devs(struct i3c_master_controller *master)
 		return;
 
 	i3c_bus_for_each_i3cdev(&master->bus, desc) {
-		if (desc->dev || !desc->info.dyn_addr || desc == master->this)
+		if (desc->dev || !desc->info.dyn_addr ||
+		    desc == master->this || !desc->info.pid)
 			continue;
 
 		desc->dev = kzalloc(sizeof(*desc->dev), GFP_KERNEL);
@@ -1504,6 +1587,69 @@ i3c_master_register_new_i3c_devs(struct i3c_master_controller *master)
 	}
 }
 
+static struct i2c_dev_boardinfo *
+i3c_master_find_i2c_boardinfo(const struct i3c_master_controller *master,
+			      u16 addr, u8 lvr)
+{
+	struct i2c_dev_boardinfo *i2cboardinfo;
+
+	list_for_each_entry(i2cboardinfo, &master->boardinfo.i2c, node) {
+		if (i2cboardinfo->base.addr == addr &&
+		    i2cboardinfo->lvr == lvr)
+			return i2cboardinfo;
+	}
+
+	return NULL;
+}
+
+static void
+i3c_master_register_new_i2c_devs(struct i3c_master_controller *master)
+{
+	struct i2c_adapter *adap = i3c_master_to_i2c_adapter(master);
+	struct i2c_dev_desc *i2cdev;
+
+	if (!master->init_done)
+		return;
+
+	i3c_bus_for_each_i2cdev(&master->bus, i2cdev) {
+
+		if (i2cdev->dev)
+			continue;
+
+		if (!i2cdev->boardinfo)
+			continue;
+
+		i2cdev->dev = i2c_new_device(adap, &i2cdev->boardinfo->base);
+	}
+}
+
+static int i3c_master_get_accmst_locked(struct i3c_master_controller *master,
+					u8 addr)
+{
+	struct i3c_ccc_getaccmst *accmst;
+	struct i3c_ccc_cmd_dest dest;
+	struct i3c_ccc_cmd cmd;
+	int ret;
+
+	accmst = i3c_ccc_cmd_dest_init(&dest, addr, sizeof(*accmst));
+	if (!accmst)
+		return -ENOMEM;
+
+	i3c_ccc_cmd_init(&cmd, true, I3C_CCC_GETACCMST, &dest, 1);
+
+	ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
+	if (ret)
+		goto out;
+
+	if (dest.payload.len != sizeof(*accmst))
+		ret = -EIO;
+
+out:
+	i3c_ccc_cmd_dest_cleanup(&dest);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(i3c_master_get_accmst_locked);
 /**
  * i3c_master_do_daa() - do a DAA (Dynamic Address Assignment)
  * @master: master doing the DAA
@@ -1548,10 +1694,6 @@ static int i3c_master_set_info(struct i3c_master_controller *master,
 	if (!i3c_bus_dev_addr_is_avail(&master->bus, info->dyn_addr))
 		return -EINVAL;
 
-	if (I3C_BCR_DEVICE_ROLE(info->bcr) == I3C_BCR_I3C_MASTER &&
-	    master->secondary)
-		return -EINVAL;
-
 	if (master->this)
 		return -EINVAL;
 
@@ -1560,7 +1702,8 @@ static int i3c_master_set_info(struct i3c_master_controller *master,
 		return PTR_ERR(i3cdev);
 
 	master->this = i3cdev;
-	master->bus.cur_master = master->this;
+	if (!secondary)
+		master->bus.cur_master = master->this;
 
 	ret = i3c_master_attach_i3c_dev(master, i3cdev);
 	if (ret)
@@ -1601,37 +1744,7 @@ static void i3c_master_detach_free_devs(struct i3c_master_controller *master)
 	}
 }
 
-/**
- * i3c_master_bus_init() - initialize an I3C bus
- * @master: main master initializing the bus
- *
- * This function is following all initialisation steps described in the I3C
- * specification:
- *
- * 1. Attach I2C and statically defined I3C devs to the master so that the
- *    master can fill its internal device table appropriately
- *
- * 2. Call &i3c_master_controller_ops->bus_init() method to initialize
- *    the master controller. That's usually where the bus mode is selected
- *    (pure bus or mixed fast/slow bus)
- *
- * 3. Instruct all devices on the bus to drop their dynamic address. This is
- *    particularly important when the bus was previously configured by someone
- *    else (for example the bootloader)
- *
- * 4. Disable all slave events.
- *
- * 5. Pre-assign dynamic addresses requested by the FW with SETDASA for I3C
- *    devices that have a static address
- *
- * 6. Do a DAA (Dynamic Address Assignment) to assign dynamic addresses to all
- *    remaining I3C devices
- *
- * Once this is done, all I3C and I2C devices should be usable.
- *
- * Return: a 0 in case of success, an negative error code otherwise.
- */
-static int i3c_master_bus_init(struct i3c_master_controller *master)
+static int i3c_master_attach_static_devs(struct i3c_master_controller *master)
 {
 	enum i3c_addr_slot_status status;
 	struct i2c_dev_boardinfo *i2cboardinfo;
@@ -1640,32 +1753,24 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 	struct i2c_dev_desc *i2cdev;
 	int ret;
 
-	/*
-	 * First attach all devices with static definitions provided by the
-	 * FW.
-	 */
 	list_for_each_entry(i2cboardinfo, &master->boardinfo.i2c, node) {
 		status = i3c_bus_get_addr_slot_status(&master->bus,
 						      i2cboardinfo->base.addr);
-		if (status != I3C_ADDR_SLOT_FREE) {
-			ret = -EBUSY;
-			goto err_detach_devs;
-		}
+		if (status != I3C_ADDR_SLOT_FREE)
+			return -EBUSY;
 
 		i3c_bus_set_addr_slot_status(&master->bus,
 					     i2cboardinfo->base.addr,
 					     I3C_ADDR_SLOT_I2C_DEV);
 
 		i2cdev = i3c_master_alloc_i2c_dev(master, i2cboardinfo);
-		if (IS_ERR(i2cdev)) {
-			ret = PTR_ERR(i2cdev);
-			goto err_detach_devs;
-		}
+		if (IS_ERR(i2cdev))
+			return PTR_ERR(i2cdev);
 
 		ret = i3c_master_attach_i2c_dev(master, i2cdev);
 		if (ret) {
 			i3c_master_free_i2c_dev(i2cdev);
-			goto err_detach_devs;
+			return ret;
 		}
 	}
 	list_for_each_entry(i3cboardinfo, &master->boardinfo.i3c, node) {
@@ -1676,27 +1781,68 @@ static int i3c_master_bus_init(struct i3c_master_controller *master)
 		if (i3cboardinfo->init_dyn_addr) {
 			status = i3c_bus_get_addr_slot_status(&master->bus,
 						i3cboardinfo->init_dyn_addr);
-			if (status != I3C_ADDR_SLOT_FREE) {
-				ret = -EBUSY;
-				goto err_detach_devs;
-			}
+			if (status != I3C_ADDR_SLOT_FREE)
+				return -EBUSY;
 		}
 
 		i3cdev = i3c_master_alloc_i3c_dev(master, &info);
-		if (IS_ERR(i3cdev)) {
-			ret = PTR_ERR(i3cdev);
-			goto err_detach_devs;
-		}
+		if (IS_ERR(i3cdev))
+			return PTR_ERR(i3cdev);
 
 		i3cdev->boardinfo = i3cboardinfo;
 
 		ret = i3c_master_attach_i3c_dev(master, i3cdev);
 		if (ret) {
 			i3c_master_free_i3c_dev(i3cdev);
-			goto err_detach_devs;
+			return ret;
 		}
 	}
 
+	return 0;
+}
+
+/**
+ * i3c_master_bus_init() - initialize an I3C bus
+ * @master: main master initializing the bus
+ *
+ * This function is following all initialisation steps described in the I3C
+ * specification:
+ *
+ * 1. Attach I2C and statically defined I3C devs to the master so that the
+ *    master can fill its internal device table appropriately
+ *
+ * 2. Call &i3c_master_controller_ops->bus_init() method to initialize
+ *    the master controller. That's usually where the bus mode is selected
+ *    (pure bus or mixed fast/slow bus)
+ *
+ * 3. Instruct all devices on the bus to drop their dynamic address. This is
+ *    particularly important when the bus was previously configured by someone
+ *    else (for example the bootloader)
+ *
+ * 4. Disable all slave events.
+ *
+ * 5. Pre-assign dynamic addresses requested by the FW with SETDASA for I3C
+ *    devices that have a static address
+ *
+ * 6. Do a DAA (Dynamic Address Assignment) to assign dynamic addresses to all
+ *    remaining I3C devices
+ *
+ * Once this is done, all I3C and I2C devices should be usable.
+ *
+ * Return: a 0 in case of success, an negative error code otherwise.
+ */
+static int i3c_master_bus_init(struct i3c_master_controller *master)
+{
+	struct i3c_dev_desc *i3cdev;
+	int ret;
+
+	/*
+	 * First attach all devices with static definitions provided by the
+	 * FW.
+	 */
+	ret = i3c_master_attach_static_devs(master);
+	if (ret)
+		goto err_detach_devs;
 	/*
 	 * Now execute the controller specific ->bus_init() routine, which
 	 * might configure its internal logic to match the bus limitations.
@@ -1780,45 +1926,76 @@ i3c_master_search_i3c_dev_duplicate(struct i3c_dev_desc *refdev)
 }
 
 /**
- * i3c_master_add_i3c_dev_locked() - add an I3C slave to the bus
- * @master: master used to send frames on the bus
- * @addr: I3C slave dynamic address assigned to the device
+ * i3c_master_add_i2c_dev_locked() - add an I2C slave to the bus
+ * @master: master used to register I2C device
+ * @addr: I2C device address
+ * @lvr: legacy virtual register value
  *
- * This function is instantiating an I3C device object and adding it to the
- * I3C device list. All device information are automatically retrieved using
- * standard CCC commands.
- *
- * The I3C device object is returned in case the master wants to attach
- * private data to it using i3c_dev_set_master_data().
+ * This function is instantiating an I2C device object and adding it to the
+ * I2C device list.
  *
  * This function must be called with the bus lock held in write mode.
  *
  * Return: a 0 in case of success, an negative error code otherwise.
  */
-int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
-				  u8 addr)
+int i3c_master_add_i2c_dev_locked(struct i3c_master_controller *master,
+				  u16 addr, u8 lvr)
 {
-	struct i3c_device_info info = { .dyn_addr = addr };
-	struct i3c_dev_desc *newdev, *olddev;
-	u8 old_dyn_addr = addr, expected_dyn_addr;
-	struct i3c_ibi_setup ibireq = { };
-	bool enable_ibi = false;
+	enum i3c_addr_slot_status status;
+	struct i2c_dev_desc *i2cdev;
 	int ret;
 
 	if (!master)
 		return -EINVAL;
 
-	newdev = i3c_master_alloc_i3c_dev(master, &info);
-	if (IS_ERR(newdev))
-		return PTR_ERR(newdev);
+	status = i3c_bus_get_addr_slot_status(&master->bus,
+					      addr);
+	if (status != I3C_ADDR_SLOT_FREE)
+		return -EBUSY;
 
-	ret = i3c_master_attach_i3c_dev(master, newdev);
-	if (ret)
+	i3c_bus_set_addr_slot_status(&master->bus, addr,
+				     I3C_ADDR_SLOT_I2C_DEV);
+
+	i2cdev = i3c_master_alloc_i2c_dev_no_boardinfo(master, addr, lvr);
+
+	if (IS_ERR(i2cdev)) {
+		ret = PTR_ERR(i2cdev);
+		goto err_free_dev;
+	}
+
+	i2cdev->boardinfo = i3c_master_find_i2c_boardinfo(master, addr, lvr);
+
+	ret = i3c_master_attach_i2c_dev(master, i2cdev);
+
+	if (ret) {
+		ret = PTR_ERR(i2cdev);
 		goto err_free_dev;
+	}
+
+	return 0;
+
+err_free_dev:
+	i3c_bus_set_addr_slot_status(&master->bus, addr,
+				     I3C_ADDR_SLOT_FREE);
+	i3c_master_free_i2c_dev(i2cdev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(i3c_master_add_i2c_dev_locked);
+
+static int
+i3c_master_retrieve_info_and_reuse(struct i3c_master_controller *master,
+				   struct i3c_dev_desc *newdev)
+{
+	struct i3c_dev_desc *olddev;
+	u8 old_dyn_addr = newdev->info.dyn_addr, expected_dyn_addr;
+	struct i3c_ibi_setup ibireq = { };
+	bool enable_ibi = false;
+	int ret;
 
 	ret = i3c_master_retrieve_dev_info(newdev);
 	if (ret)
-		goto err_detach_dev;
+		return ret;
 
 	olddev = i3c_master_search_i3c_dev_duplicate(newdev);
 	if (olddev) {
@@ -1857,7 +2034,7 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 
 	ret = i3c_master_reattach_i3c_dev(newdev, old_dyn_addr);
 	if (ret)
-		goto err_detach_dev;
+		return ret;
 
 	/*
 	 * Depending on our previous state, the expected dynamic address might
@@ -1920,6 +2097,50 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 	}
 
 	return 0;
+}
+
+/**
+ * i3c_master_add_i3c_dev_locked() - add an I3C slave to the bus
+ * @master: master used to send frames on the bus
+ * @addr: I3C slave dynamic address assigned to the device
+ *
+ * This function is instantiating an I3C device object and adding it to the
+ * I3C device list. All device information are automatically retrieved using
+ * standard CCC commands.
+ *
+ * The I3C device object is returned in case the master wants to attach
+ * private data to it using i3c_dev_set_master_data().
+ *
+ * This function must be called with the bus lock held in write mode.
+ *
+ * Return: a 0 in case of success, an negative error code otherwise.
+ */
+int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
+				  u8 addr)
+{
+	struct i3c_device_info info = { .dyn_addr = addr };
+	struct i3c_dev_desc *newdev;
+	int ret;
+
+	if (!master)
+		return -EINVAL;
+
+	newdev = i3c_master_alloc_i3c_dev(master, &info);
+	if (IS_ERR(newdev))
+		return PTR_ERR(newdev);
+
+	ret = i3c_master_attach_i3c_dev(master, newdev);
+	if (ret)
+		goto err_free_dev;
+
+	if (i3c_master_owns_bus(master)) {
+		ret = i3c_master_retrieve_info_and_reuse(master, newdev);
+		if (ret)
+			goto err_detach_dev;
+	} else
+		master->want_to_acquire_bus = true;
+
+	return 0;
 
 err_detach_dev:
 	if (newdev->dev && newdev->dev->desc)
@@ -2101,11 +2322,15 @@ static int i3c_master_i2c_adapter_xfer(struct i2c_adapter *adap,
 	}
 
 	i3c_bus_normaluse_lock(&master->bus);
+	ret = i3c_master_acquire_bus_ownership(master);
+	if (ret)
+		goto err_unlock_bus;
 	dev = i3c_master_find_i2c_dev_by_addr(master, addr);
 	if (!dev)
 		ret = -ENOENT;
 	else
 		ret = master->ops->i2c_xfers(dev, xfers, nxfers);
+err_unlock_bus:
 	i3c_bus_normaluse_unlock(&master->bus);
 
 	return ret ? ret : nxfers;
@@ -2144,9 +2369,12 @@ static int i3c_master_i2c_adapter_init(struct i3c_master_controller *master)
 	 * We silently ignore failures here. The bus should keep working
 	 * correctly even if one or more i2c devices are not registered.
 	 */
-	i3c_bus_for_each_i2cdev(&master->bus, i2cdev)
+	i3c_bus_for_each_i2cdev(&master->bus, i2cdev) {
+		if (!i2cdev->boardinfo)
+			continue;
 		i2cdev->dev = i2c_new_device(adap, &i2cdev->boardinfo->base);
 
+	}
 	return 0;
 }
 
@@ -2385,9 +2613,76 @@ static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
 	     !ops->recycle_ibi_slot))
 		return -EINVAL;
 
+	/*
+	 * If mastership request is supported, we also need hooks to control
+	 * when mastership request can occur by enabling/disabling the event.
+	 */
+	if (ops->request_mastership &&
+	    (!ops->enable_mr_events || !ops->disable_mr_events))
+		return -EINVAL;
 	return 0;
 }
 
+static void i3c_master_register_new_devs(struct i3c_master_controller *master)
+{
+	/*
+	 * We can register devices received from master by DEFSLVS.
+	 */
+	i3c_bus_normaluse_lock(&master->bus);
+	i3c_master_register_new_i3c_devs(master);
+	i3c_master_register_new_i2c_devs(master);
+	i3c_bus_normaluse_unlock(&master->bus);
+}
+
+/**
+ * i3c_master_bus_takeover() - register new I3C devices on bus takeover
+ * @master: master used to send frames on the bus
+ *
+ * This function is useful when devices were not added
+ * during initialization or when new device joined the bus
+ * which wasn't under our control.
+ */
+void i3c_master_bus_takeover(struct i3c_master_controller *master)
+{
+	struct i3c_dev_desc *i3cdev, *i3ctmp;
+	int ret;
+
+	master->want_to_acquire_bus = false;
+
+	if (!master->init_done)
+		return;
+
+	i3c_bus_maintenance_lock(&master->bus);
+	master->ops->populate_bus(master);
+
+	list_for_each_entry_safe(i3cdev, i3ctmp, &master->bus.devs.i3c,
+				 common.node) {
+		if (i3cdev->info.pid)
+			continue;
+
+		ret = i3c_master_retrieve_info_and_reuse(master, i3cdev);
+		if (ret) {
+			if (i3cdev->dev && i3cdev->dev->desc)
+				i3cdev->dev->desc = NULL;
+
+			i3c_master_detach_i3c_dev(i3cdev);
+		}
+	}
+
+	/*
+	 * If current master finished bus initialization properly, we can
+	 * enable Mastership event.
+	 */
+	ret = i3c_master_enable_mr_events_locked(master);
+	if (ret)
+		dev_warn(&master->dev, "ENEC(MR) failed (ret = %i)", ret);
+
+	i3c_bus_maintenance_unlock(&master->bus);
+
+	i3c_master_register_new_devs(master);
+}
+EXPORT_SYMBOL_GPL(i3c_master_bus_takeover);
+
 /**
  * i3c_master_init() - initializes all the structures required by I3C master
  * @master: master used to send frames on the bus
@@ -2417,9 +2712,6 @@ int i3c_master_init(struct i3c_master_controller *master,
 	struct i2c_dev_boardinfo *i2cbi;
 	int ret;
 
-	/* We do not support secondary masters yet. */
-	if (secondary)
-		return -ENOTSUPP;
 
 	ret = i3c_master_check_ops(ops);
 	if (ret)
@@ -2432,6 +2724,7 @@ int i3c_master_init(struct i3c_master_controller *master,
 	master->dev.release = i3c_masterdev_release;
 	master->ops = ops;
 	master->secondary = secondary;
+	master->want_to_acquire_bus = secondary;
 	INIT_LIST_HEAD(&master->boardinfo.i2c);
 	INIT_LIST_HEAD(&master->boardinfo.i3c);
 
@@ -2488,6 +2781,92 @@ void i3c_master_cleanup(struct i3c_master_controller *master)
 EXPORT_SYMBOL_GPL(i3c_master_cleanup);
 
 /**
+ * i3c_secondary_master_register() - register an secondary I3C master
+ * @master: master used to send frames on the bus
+ * @info: master info, describes this device
+ *
+ * This function takes care of everything for you:
+ *
+ * - updates this master info
+ * - registers the I2C adapter
+ * - if possible, populates the bus with devices received by DEFSLVS
+ *   command
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int i3c_secondary_master_register(struct i3c_master_controller *master,
+				  struct i3c_device_info *info)
+{
+	int ret;
+
+	ret = i3c_master_set_info(master, info, master->secondary);
+	if (ret)
+		return ret;
+
+	ret = master->ops->bus_init(master);
+	if (ret)
+		return ret;
+
+	ret = device_add(&master->dev);
+	if (ret)
+		return -1;
+
+	/*
+	 * Expose our I3C bus as an I2C adapter so that I2C devices are exposed
+	 * through the I2C subsystem.
+	 */
+	ret = i3c_master_i2c_adapter_init(master);
+	if (ret)
+		goto err_del_dev;
+
+	i3c_bus_maintenance_lock(&master->bus);
+	/*
+	 * If possible, request mastership and try to populate the bus.
+	 */
+	ret = i3c_master_request_mastership_locked(master);
+	if (ret)
+		dev_warn(&master->dev,
+			 "Mastership failed at init time (ret = %i)", ret);
+
+	/*
+	 * No matter if mastership takeover passed or not, add partialy
+	 * discovered devices. We can register them when ENEC(MR) is enabled.
+	 */
+	master->ops->populate_bus(master);
+
+	i3c_bus_maintenance_unlock(&master->bus);
+
+	/*
+	 * We're done initializing the bus and the controller, we can now
+	 * register I3C devices obtained by DEFSLVS.
+	 */
+	master->init_done = true;
+	i3c_master_register_new_devs(master);
+
+	/*
+	 * If we are owning the bus, enable ENEC(MR) to let other masters
+	 * initialize their bus.
+	 */
+	if (i3c_master_owns_bus(master)) {
+		i3c_bus_maintenance_lock(&master->bus);
+		ret = i3c_master_enable_mr_events_locked(master);
+		i3c_bus_maintenance_unlock(&master->bus);
+		if (ret)
+			dev_warn(&master->dev,
+				 "ENEC(MR) failed (ret = %i)", ret);
+	}
+
+
+	return 0;
+
+err_del_dev:
+	device_del(&master->dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(i3c_secondary_master_register);
+
+/**
  * i3c_master_register() - register an primary I3C master
  * @master: master used to send frames on the bus
  * @info: master info, describes this device
@@ -2509,7 +2888,6 @@ int i3c_master_register(struct i3c_master_controller *master,
 	ret = i3c_master_set_info(master, info, master->secondary);
 	if (ret)
 		return ret;
-
 	ret = i3c_master_bus_init(master);
 	if (ret)
 		return ret;
@@ -2535,6 +2913,16 @@ int i3c_master_register(struct i3c_master_controller *master,
 	i3c_master_register_new_i3c_devs(master);
 	i3c_bus_normaluse_unlock(&master->bus);
 
+	/*
+	 * Enable ENEC(MR) and let other masters request mastership
+	 * and initialize their bus.
+	 */
+	i3c_bus_maintenance_lock(&master->bus);
+	ret = i3c_master_enable_mr_events_locked(master);
+	i3c_bus_maintenance_unlock(&master->bus);
+	if (ret)
+		dev_warn(&master->dev, "ENEC(MR) failed (ret = %i)", ret);
+
 	return 0;
 
 err_del_dev:
@@ -2548,6 +2936,29 @@ int i3c_master_register(struct i3c_master_controller *master,
 EXPORT_SYMBOL_GPL(i3c_master_register);
 
 /**
+ * i3c_master_mastership_ack() - acknowledges bus takeover.
+ * @master: master used to send frames on the bus
+ * @addr: I3C device address
+ *
+ * This function acknowledges bus takeover.
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int i3c_master_mastership_ack(struct i3c_master_controller *master,
+			      u8 addr)
+{
+	int ret;
+
+	i3c_bus_maintenance_lock(&master->bus);
+	ret = i3c_master_get_accmst_locked(master, addr);
+	i3c_bus_maintenance_unlock(&master->bus);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(i3c_master_mastership_ack);
+
+
+/**
  * i3c_master_unregister() - unregister an I3C master
  * @master: master used to send frames on the bus
  *
@@ -2557,6 +2968,9 @@ EXPORT_SYMBOL_GPL(i3c_master_register);
  */
 int i3c_master_unregister(struct i3c_master_controller *master)
 {
+	i3c_bus_maintenance_lock(&master->bus);
+	i3c_master_disable_mr_events(master);
+	i3c_bus_maintenance_unlock(&master->bus);
 	i3c_master_i2c_adapter_cleanup(master);
 	i3c_master_unregister_i3c_devs(master);
 	i3c_master_bus_cleanup(master);
diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
index e089771..6ac9b46 100644
--- a/include/linux/i3c/master.h
+++ b/include/linux/i3c/master.h
@@ -421,6 +421,26 @@ struct i3c_bus {
  *		      for a future IBI
  *		      This method is mandatory only if ->request_ibi is not
  *		      NULL.
+ * @request_mastership: requests bus mastership. Mastership is requested
+ *                      automatically when device driver wants to transfer
+ *                      data using a master that does not currently
+ *                      owns the bus.
+ * @enable_mr_events: enable the Mastership event. Master driver can prepare
+ *                    its internal state to be ready for incoming mastership
+ *                    requests and then should send ENEC(MR) command to let
+ *                    other masters take control over the bus.
+ * @disable_mr_events: disable the Mastership event. Master driver should
+ *                     immediately send DISEC(MR) command and can perform other
+ *                     operations. For example, recycle IBI slot if used before
+ *                     for MR event.
+ * @populate_pus: populates the bus. Called after bus takeover. Secondary
+ *                master can't perform DAA procedure. This function allows to
+ *                update devices received from previous bus owner in DEFSLVS
+ *                command. Useful also when new device joins the bus controlled
+ *                by secondary master, main master will be able to add
+ *                this device after mastership takeover. Driver should also
+ *		  update bus mode when I2C device is on the bus.
+ *
  */
 struct i3c_master_controller_ops {
 	int (*bus_init)(struct i3c_master_controller *master);
@@ -447,6 +467,10 @@ struct i3c_master_controller_ops {
 	int (*disable_ibi)(struct i3c_dev_desc *dev);
 	void (*recycle_ibi_slot)(struct i3c_dev_desc *dev,
 				 struct i3c_ibi_slot *slot);
+	int (*request_mastership)(struct i3c_master_controller *master);
+	int (*enable_mr_events)(struct i3c_master_controller *master);
+	int (*disable_mr_events)(struct i3c_master_controller *master);
+	int (*populate_bus)(struct i3c_master_controller *master);
 };
 
 /**
@@ -488,6 +512,7 @@ struct i3c_master_controller {
 	} boardinfo;
 	struct i3c_bus bus;
 	struct workqueue_struct *wq;
+	bool want_to_acquire_bus;
 };
 
 /**
@@ -526,6 +551,8 @@ int i3c_master_defslvs_locked(struct i3c_master_controller *master);
 int i3c_master_get_free_addr(struct i3c_master_controller *master,
 			     u8 start_addr);
 
+int i3c_master_add_i2c_dev_locked(struct i3c_master_controller *master,
+				  u16 addr, u8 lvr);
 int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 				  u8 addr);
 int i3c_master_do_daa(struct i3c_master_controller *master);
@@ -535,9 +562,14 @@ int i3c_master_init(struct i3c_master_controller *master,
 		    const struct i3c_master_controller_ops *ops,
 		    bool secondary);
 void i3c_master_cleanup(struct i3c_master_controller *master);
+int i3c_secondary_master_register(struct i3c_master_controller *master,
+				  struct i3c_device_info *info);
 int i3c_master_register(struct i3c_master_controller *master,
 			struct i3c_device_info *info);
 int i3c_master_unregister(struct i3c_master_controller *master);
+int i3c_master_mastership_ack(struct i3c_master_controller *master,
+			      u8 addr);
+void i3c_master_bus_takeover(struct i3c_master_controller *master);
 int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode);
 
 /**
@@ -648,7 +680,5 @@ void i3c_master_queue_ibi(struct i3c_dev_desc *dev, struct i3c_ibi_slot *slot);
 
 struct i3c_ibi_slot *i3c_master_get_free_ibi_slot(struct i3c_dev_desc *dev);
 
-void i3c_bus_maintenance_lock(struct i3c_bus *bus);
-void i3c_bus_maintenance_unlock(struct i3c_bus *bus);
 
 #endif /* I3C_MASTER_H */
-- 
2.4.5


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
