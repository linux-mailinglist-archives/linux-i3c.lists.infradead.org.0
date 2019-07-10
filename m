Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A341768447
	for <lists+linux-i3c@lfdr.de>; Mon, 15 Jul 2019 09:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5GBDPvlEZ0GMuLY6oBqNJpEbtQFYw+iEGXdBU7+sOqg=; b=jOO
	o7mdG0mRm4YUG5Att/AoxGuomTZgLmZWOHLDXvfLFsx19B46Ta/M0Rge5pqREuzbMM4sVmBUyPB+2
	9JfPjaicVgE/JdkcdTO8KcT5pRJUNk7Tq3mzr/pU7dSHnrbeiv+QG2N/zy6K1IO8RBUnyGcq9fkiJ
	ElYvSGof8JgnPW7FhIlwPlMHb4ZVSxBetTgr+SwIpf6CgBYnK/x5ySWXAF4cm601U9i+bXeKsb6Qs
	EEZ9JU7iC957UTDPTDcpbAz+vucfIxdJFgjO6uldx9mffVzA4nP8TrHKMXV2SaPPp94yZR2zx0/mJ
	SncwbKiPXJtvRxfAXMFhYApf32L2tCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvM6-0000tI-AR
	for lists+linux-i3c@lfdr.de; Mon, 15 Jul 2019 07:25:02 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlE1W-0000Oq-OI
 for linux-i3c@lists.infradead.org; Wed, 10 Jul 2019 14:56:49 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 64173C1C7F;
 Wed, 10 Jul 2019 14:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562770604; bh=wlZvgrVT1cnhuSHx1zID1cemmfpVHJ+ubZIZzKEp5eM=;
 h=From:To:Cc:Subject:Date:From;
 b=OjpWs0Y4Qg+BBOtqLlD7heYkPssrjR3AOfFSvw9SX4JRMwIF0Yka8UKgEIEoqore7
 5jJi8Vg++vwsHFQDIlEbnSILEoF1EEDIeXVZiLgbV5hmydzP3YPLlV7PEoWQpAf83N
 4UG65yGR2yyUOHLPaoiAW0KlVZfStCUArPW6ORmF0sx+ywz/WObRDK8ELSXXwCDE2y
 8ZrablIAkPrUUZFO7AEUdHxRjfe3khI1L66YlanQZBE8zH9bM5ghaYhAOtu4PWhPu6
 tLVyytJVFLfb0RnkNdaKG6CGh8VMLjIGxjUq4tP+Jd2L6hYJ0B7pPrbJOweX3IPyli
 nO2AncxBoKeOg==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id E6898A0057;
 Wed, 10 Jul 2019 14:56:41 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id BCB503FA2F;
 Wed, 10 Jul 2019 16:56:41 +0200 (CEST)
From: Vitor Soares <Vitor.Soares@synopsys.com>
To: linux-iio@vger.kernel.org, linux-i3c@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Add ST lsm6dso i3c support
Date: Wed, 10 Jul 2019 16:56:36 +0200
Message-Id: <cover.1562767521.git.vitor.soares@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_075646_799428_D24C6D57 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Mailman-Approved-At: Mon, 15 Jul 2019 00:24:58 -0700
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
Cc: Joao.Pinto@synopsys.com, rafael@kernel.org, gregkh@linuxfoundation.org,
 Vitor Soares <Vitor.Soares@synopsys.com>, broonie@kernel.org,
 bbrezillon@knernel.org, lorenzo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

This patch series add i3c support for STM LSM6DSO and LSM6DSR sensors.

It is also introduced i3c support on regmap api. Due the lack of
i3c devices HDR capables on the market the support for now is only for
i3c sdr mode by using i3c_device_do_priv_xfers() method.

The i3c regmap api is already available in the Git repository at:
  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git
  tags/regmap-i3c

Change in v3:
  Update st_lsm6dsx_probe() call
  Remove i3c_get_device_id() and use i3c_device_match_id()

Changes in v2:
  Change i3c_get_device_id() to drivers/i3c/device.c
  Add support for LSM6DSR

Vitor Soares (3):
  regmap: add i3c bus support
  i3c: add i3c_get_device_id helper
  iio: imu: st_lsm6dsx: add i3c basic support for LSM6DSO and LSM6DSR

 drivers/base/regmap/Kconfig                 |  6 ++-
 drivers/base/regmap/Makefile                |  1 +
 drivers/base/regmap/regmap-i3c.c            | 60 ++++++++++++++++++++++++++++
 drivers/i3c/device.c                        | 46 ++++++++++++++++++++++
 drivers/i3c/master.c                        | 45 ---------------------
 drivers/iio/imu/st_lsm6dsx/Kconfig          |  8 +++-
 drivers/iio/imu/st_lsm6dsx/Makefile         |  1 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c | 61 +++++++++++++++++++++++++++++
 include/linux/i3c/device.h                  |  4 ++
 include/linux/regmap.h                      | 20 ++++++++++
 10 files changed, 205 insertions(+), 47 deletions(-)
 create mode 100644 drivers/base/regmap/regmap-i3c.c
 create mode 100644 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c

-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
