Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C681337CC7
	for <lists+linux-i3c@lfdr.de>; Thu,  6 Jun 2019 20:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b51xGKLtDE6rOYxBh8POcCDIN3Nb83qlf1Y6mI2ARXk=; b=Ws9cpj+7hTjk1Vwq2bEIpdCCGa
	phu8ebnV4OZ2YvjZy0YbY5syDe0X/cKe13SgZuRO6N+QPBqwOgL4yjL9wg6YJ69QB0tvgg4IQllng
	1CLXHD6CUN9KNnz5Ja7F7N/YXy9k8Nme5uuW2voZk9F4PNQPVI937O1PjW9llEEB68kLaQAicYRxy
	YdUNHu5leWIFq+ccPRiVCyy5pR/avSzoyq7rmqbb+HoOqqXqjpMjCkuKZi2Nr5kt0wNtNN7rA63Ql
	DyFy/Px1SfLcl5V2CEelsh+KGOx/ZE3M1KQqtA5VqWVXAaIBnrhB7mkiXckF+P8x0NdHgNzOV7vJU
	FrEslI6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxWy-0000A2-Di
	for lists+linux-i3c@lfdr.de; Thu, 06 Jun 2019 18:54:32 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYu3o-0005P9-4B
 for linux-i3c@lists.infradead.org; Thu, 06 Jun 2019 15:12:13 +0000
Received: from mailhost.synopsys.com (unknown [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9DBF9C0B59;
 Thu,  6 Jun 2019 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559833942; bh=+7+5ObOc7gxS4v0EaTYk0LsyMtKGB6jikkVK2HcAVnU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=bwshtbRgM1A3pmPkIenFpKszEIHXHty90zKvVrCs9P8ZrOutl1tmnXQyCP5qNoMJ1
 K12aDk3pPTLUOkygUkq9oYTgQZV7vnPt7P+L1cJ3+Maol3iKz3AEenl6WooXAM8Ist
 GJlHzOnqKh69Dcc9iV9f5BbXQ5szeKp97e+ptvxp+TfMBM3P9qPfhLra8r+YgQILtY
 elN5BSZGTc/XkkrjWg4nSil53usiI9rvovi08/5du6YOCrPvWjBGZ0Q9XykclDUkl2
 WB8WZ3983Nx7EuJ1U/VDCsDFCb3NxV8bzatxYdI5tSMD+qodxvKbunoKdOsHfRF17w
 LnnMO+NhWxIYw==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id B34A3A022F;
 Thu,  6 Jun 2019 15:12:08 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 98F4C3FED2;
 Thu,  6 Jun 2019 17:12:08 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-iio@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] i3c: add i3c_get_device_id helper
Date: Thu,  6 Jun 2019 17:12:03 +0200
Message-Id: <eaa9eb66df6b4c9b577aec46fd440b99d763a5a2.1559831663.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559831663.git.vitor.soares@synopsys.com>
References: <cover.1559831663.git.vitor.soares@synopsys.com>
In-Reply-To: <cover.1559831663.git.vitor.soares@synopsys.com>
References: <cover.1559831663.git.vitor.soares@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_081212_169169_E8C6FBB8 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Mailman-Approved-At: Thu, 06 Jun 2019 11:54:30 -0700
X-BeenThere: linux-i3c@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: Joao.Pinto@synopsys.com, bbrezillon@kernel.org, gregkh@linuxfoundation.org,
 rafael@kernel.org, Vitor Soares <Vitor.Soares@synopsys.com>,
 broonie@kernel.org, lorenzo.bianconi83@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This helper return the i3c_device_id structure in order the client
have access to the driver data.

Signed-off-by: Vitor Soares <vitor.soares@synopsys.com>
---
Changes in v2:
  move this function to drivers/i3c/device.c

 drivers/i3c/device.c       | 8 ++++++++
 include/linux/i3c/device.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/i3c/device.c b/drivers/i3c/device.c
index 69cc040..a6d0796 100644
--- a/drivers/i3c/device.c
+++ b/drivers/i3c/device.c
@@ -200,6 +200,14 @@ struct i3c_device *dev_to_i3cdev(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(dev_to_i3cdev);
 
+const struct i3c_device_id *i3c_get_device_id(struct i3c_device *i3cdev)
+{
+	const struct i3c_driver *i3cdrv = drv_to_i3cdrv(i3cdev->dev.driver);
+
+	return i3cdrv->id_table;
+}
+EXPORT_SYMBOL_GPL(i3c_get_device_id);
+
 /**
  * i3c_driver_register_with_owner() - register an I3C device driver
  *
diff --git a/include/linux/i3c/device.h b/include/linux/i3c/device.h
index 5ecb055..e0415e1 100644
--- a/include/linux/i3c/device.h
+++ b/include/linux/i3c/device.h
@@ -187,6 +187,7 @@ static inline struct i3c_driver *drv_to_i3cdrv(struct device_driver *drv)
 
 struct device *i3cdev_to_dev(struct i3c_device *i3cdev);
 struct i3c_device *dev_to_i3cdev(struct device *dev);
+const struct i3c_device_id *i3c_get_device_id(struct i3c_device *i3cdev);
 
 static inline void i3cdev_set_drvdata(struct i3c_device *i3cdev,
 				      void *data)
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
